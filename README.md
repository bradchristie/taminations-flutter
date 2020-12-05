# Taminations

Taminations for Android, iOS, and Web re-coded in Flutter

## This is a Work In Progress

Feel free to browse or download but note that it is only partially functional and is rapidly changing.

## To compile and run this code

- Install [git](https://git-scm.com/) and [flutter](https://flutter.dev/)
- Create a directory for your project and `cd` into it.
- Get this code with `git clone https://github.com/bradchristie/taminations-flutter.git`
- Taminations builds for the web as well as Android and iOS.  Because flutter web is a beta feature, the flutter 'beta channel' needs to be selected.  Then you can fetch the extra packages Taminations uses.
```
flutter channel beta
flutter upgrade
flutter config --enable-web
flutter pub get
```
- For iOS, build with these commands
```
cd ios
pod install
cd ..
flutter build ios
```
