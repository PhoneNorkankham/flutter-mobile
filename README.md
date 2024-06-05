# Keepup
App flutter - Using flutter sdk ver 3.13.0

## KeepUp project document
https://docs.google.com/document/d/1ZnThl3endLxCzjakC6baqmesMbNTkVogxobN8XpxNrs/edit

## KeepUp Feature Roadmap
Flutter - get started
https://docs.google.com/document/d/1-05qer2QZ-DZpwlwbrMe08Z4jfojSx0o/edit

## Menu

- [Guide to building apps](#Guide-to-building-apps)
- [Run rebuilding the app icons](#rebuilding-to-generated-files-serialization-retrofit-moor)
- [Architecture](#app-architecture)
- [Folder Structure](#folder-structure)

## Guide to building apps

- Start the emulator you want to test or the real device

The application needs to be completely filled in to build. This means that the full build command is:

For Android:

```shell
flutter run --flavor [flavor] --dart-define-from-file=.env/[flavor].json
```

For iOS:

```shell
flutter run --flavor [flavor]
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

- [Drift](https://pub.dev/packages/drift) for the local sqlite database
- [Retrofit](https://pub.dev/packages/retrofit) for REST API
- [JsonSerializable](https://pub.dev/packages/json_serializable) for generating models
- [GetX](https://pub.dev/packages/get) for our state management (refactor is ongoing)

## Folder Structure
```
  📂core
  ┣ 📂local
  ┃ ┣ 📂converter - This has all of the `TypeConverter` classes for the database
  ┃ ┣ 📂dao - These are the Data Access Object definitions for the databse
  ┃ ┗ 📂table - These are the Object definitions for the databse
  ┣ 📂manager - classed for manager services
  ┣ 📂model - data models
  ┣ 📂remote
  ┣ 📂repository - data repositories
  ┗ 📂request - request data models for the Retrofit API
  📂design - Theme of App
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
