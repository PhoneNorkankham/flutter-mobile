import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rxdart/rxdart.dart';
import 'package:keepup/src/ui/routing/pop_result.dart';
import 'package:keepup/src/utils/app_pages.dart';

class NavigatorManager {
  String previousPage = AppPages.splash;

  final List<String> _pageStack = [];

  // Is not any of main pages
  final List<String> pagesWithBottomNavigation = [];

  String? get currentPage => _pageStack.lastOrNull;

  final _poppingPageWithBottomNavigation = BehaviorSubject<String?>();

  Stream<String?> get poppingPageWithBottomNavigationStream =>
      _poppingPageWithBottomNavigation.stream;

  /// Use to navigation to page with [args] is param
  Future<PopResult> navigateToPage(
    String page, {
    dynamic args,
    bool pushToNewPage = true,
  }) async {
    if (previousPage != page) {
      previousPage = page;
    }

    _pageStack.add(page);

    _resetPoppedPage();

    _logEvent('navigateToPage');

    if (pushToNewPage) {
      final result = await Get.toNamed(page, arguments: args, preventDuplicates: false);

      return result is PopResult
          ? result
          : PopResult(status: false, resultFromPage: "", data: result);
    } else {
      return PopResult(status: false, resultFromPage: '');
    }
  }

  Future<void> offToPage(String page, {dynamic args}) async {
    try {
      _pageStack.removeLast();
      _pageStack.add(page);
      _resetPoppedPage();
      _logEvent('offToPage');

      Get.offNamed(page, arguments: args);
    } catch (ex) {
      // FirebaseCrashlytics.instance.recordError(ex, StackTrace.empty);
    }
  }

  /// Use when want pop back page previous with PopResult is data return
  void popBack({PopResult? result, bool isDialog = false, bool popPage = true}) {
    try {
      if (_pageStack.isNotEmpty && !isDialog) {
        if (pagesWithBottomNavigation.contains(currentPage)) {
          _poppingPageWithBottomNavigation.add(currentPage!);
        } else {
          _resetPoppedPage();
        }
        _pageStack.removeLast();
      }

      if (popPage) {
        Get.back(result: result);
      }
    } catch (ex) {
      // FirebaseCrashlytics.instance.recordError(ex, StackTrace.empty);
    }
  }

  Future<Object?> offNamedUntil(String page, RoutePredicate predicate, {dynamic arguments}) {
    try {
      if (previousPage != page) {
        previousPage = page;
      }

      _pageStack.clear();
      _pageStack.add(page);
      _resetPoppedPage();
      _logEvent('offNamedUntil');

      return Get.offNamedUntil(page, predicate, arguments: arguments) ?? Future.value();
    } catch (ex) {
      debugPrint(ex.toString());
      // FirebaseCrashlytics.instance.recordError(ex, StackTrace.empty);
      return Future.value();
    }
  }

  Future<void> popUntil({required String page, PopResult? popResult}) async {
    try {
      if (page.isNotEmpty && _pageStack.isNotEmpty) {
        final pageStackClone = _pageStack;
        for (int i = pageStackClone.length - 1; i >= 0; i--) {
          if (_pageStack[i] == page) {
            break;
          }
          _pageStack.removeLast();

          Get.back(result: popResult);
        }
      } else {
        navigator?.popUntil((route) => route.isFirst);
      }
      _resetPoppedPage();
    } catch (ex) {
      // FirebaseCrashlytics.instance.recordError(ex, StackTrace.empty);
    }
  }

  void _logEvent(String message) {
    debugPrint('[NavigatorManager] $message - Current page ${_pageStack.lastOrNull}');
  }

  void _resetPoppedPage() {
    if (_poppingPageWithBottomNavigation.valueOrNull != null) {
      _poppingPageWithBottomNavigation.add(null);
    }
  }
}
