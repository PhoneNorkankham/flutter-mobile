# Keepup
App flutter

## Menu

- [Format code](#format-project)
- [Format Git](#format-git)
- [Merge Request preview](#merge-request-preview)
- [Guide to building apps](#Guide-to-building-apps)
- [Run rebuilding the app icons](#rebuilding-to-generated-files-serialization-retrofit-moor)
- [Architecture](#app-architecture)
- [Folder Structure](#folder-structure)

## Format project:

- Write clean code, avoid too many blank lines, always format code before uploading code to git
  + Format code: Ctrl + Alt + L
  + Remove import unused: Ctrl + Alt + O
- Naming (requires English, clear by function):
  + File name in snake_case format, ex: login_page, login_bloc,...
  + Class name capitalizes the first letter, ex: LoginPage, LoginBloc,...
  + Function name:
    + Get function: getNameFunc()
    + Function: onNameFunc()
  + All fields in the class use private, ex: String _nameField;
  + If you want to use it publicly, you must create a set/get class
  + Asset name:
    + Icon: ic_name
    + Image: img_name
    + Background: bg_name

## Format Git:
- How to name commits:
  + fix: fix content
  + feature: feature content
  + refactor: optimized content
  + docs: document change content
  + style: content changes style
  + perf: optimized content, performance
  + vendor: update package, composer
  + chore: as trivial as changing text
- How to name a branch:
  + New feature branch: git branch feature/name_of_function
    + git branch feature/login_ui
    + git branch feature/login_function
    + git branch feature/login_api
  + Hotfix branch - quick fixes:
    + git branch hotfix/name_of_bug
    + git branch hotfix/login_fail
    + git branch hotfix/miss_key
  + Release branch: release/version_name, ex: release/0.1.0
- When creating a branch, create it from the `dev` branch
- When done, merge into `dev` branch

## Merge Request preview:
The PR description template has been created, just select it in the select Description section when creating the PR and update the content.

Note:
- set `Assignee` as code reviewer and will approve Merge request to allow code merge (as PM or Team Leader)
- Set `Reviewer` is the person in charge of reviewing the code (people in the same team will cross-review each other)

```
### 🗃 Issue Or Explanation for this PR. (What is it supposed to do and Why is needed)

- Feature: Login ...
- UI: ...

### ✅ Checklist

- [x] Issue Or Task detail are up to date for people to QA
- [x] I have functionally tested all my changes
- [x] I handled the code format
- [x] I have Tested on Android (only App)
- [x] I have Tested on iOS (only App)

### 🕵️‍♂️ Notes for Code Reviewer

Example: Change the Subscription Billing Flow with using SetupIntent to collect user billing information first.

### 🙈 Screenshots

No UI
or take screenshot before change and after change
Or take a screenshot of the design if the task is new

### 👯‍♀️ Paired with

Solo
```

## Guide to building apps

- Start the emulator you want to test or the real device

The application needs to be completely filled in to build. This means that the full build command is:

```shell
flutter run --flavor [flavor] --dart-define=FLAVOR=[flavor]
```

with `[flavor]` is `dev` or `prod`

## Rebuilding to generated files (Serialization, Retrofit, Moor)

The project uses a number of libraries that automatically generate code (files with extension `g.dart`), such as retrofit, json_serialization and others.
When there is a change in the code affecting these files, the following command must be executed to recreate them:

```shell
dart run build_runner build
```

If you get an error message about deleting conflicting outputs, run:

```shell
dart run build_runner build --delete-conflicting-outputs
```

If repeatedly making changes affecting these auto-generated files, run:

```shell
dart run build_runner watch
```

## Rebuilding the app icons

The app icons are built through `flutter_launcher_icons` and the main files are in the `assets/app_icons` folder. 
To rebuild icons after updating the main file, just run:

```shell
dart run flutter_launcher_icons:main
```

The `flutter_launcher_icons` configuration resides in the `flutter_launcher_icons.yaml` file.

## Rebuilding assets

Assets are built through `assets_gen` and the main files are in the `assets/` folder.
To rebuild icons after updating the main file, just run:

```shell
dart run assets_gen build
```

The `assets_gen` configuration resides in the `assets_gen.yaml` file.

## App Architecture

The overall app architecture can be summed up in these plugins:

- [Floor](https://pub.dev/packages/floor) for the local sqlite database
- [Retrofit](https://pub.dev/packages/retrofit) for REST API
- [JsonSerializable](https://pub.dev/packages/json_serializable) for generating models
- [GetX](https://pub.dev/packages/get) for our state management (refactor is ongoing)

## Folder Structure
```
  📂core
  ┣ 📂local
  ┃ ┣ 📂converter - This has all of the `TypeConverter` classes for the database
  ┃ ┣ 📂dao - These are the Data Access Object definitions for the databse
  ┣ 📂manager - classed for manager services
  ┣ 📂model - data models
  ┣ 📂remote
  ┃ ┣ 📂request - request data models for the Retrofit API
  ┃ ┣ 📂response - response data models for the Retrofit API
  ┃ ┣ 📂service - definitions of all requests for the API
  ┗ 📂repository - data repositories
  📂di - definitions for Dependency Injection (Get)
  📂helper - various helper classes **(needs to be broken apart)**
  📂locale - Key lang **(needs to be broken apart)**
  📂ui - All of the UI widgets
  ┣ 📂base - class base UI
  ┣ 📂[Page] - template for a page folder in the ui folder
  ┃ ┣ 📂binding - binding
  ┃ ┣ 📂components - This directory will include the page's component widgets
  ┃ ┣ 📂interactor - This directory will include classes BloC, Event and State
  ┃ ┣ 📂mappers - This directory will include the classes used to mapping data
  ┃ ┣ 📂usecases - This directory will include classes on interacting with functions
  ┃ ┗ 📂utils - utility functions/classes specific to this page
  ┗ 📂widgets - widgets used by multiple UI pages
  📂utils - utility classes/functions used across the app
```

### License
```
   Copyright (C) 2020 Quyet Thang
```
