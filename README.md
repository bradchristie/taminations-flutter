# Taminations

Taminations for Android, iOS, and Web re-coded in Flutter

## To compile and run this code

- Install [git](https://git-scm.com/) and [flutter](https://flutter.dev/)
- Create a directory for your project and `cd` into it.
- Get this code with `git clone https://github.com/bradchristie/taminations-flutter.git`
- Then you can fetch the extra packages Taminations uses.
```
flutter pub get
```

- Null safety is a relatively new feature of Flutter and while Taminations is written with null safety, not all dependencies work yet.  So null safety has to be turned off for now.
     To build for the web, use this command
```
flutter build web --no-sound-null-safety
```
The web site code will be found in taminations/build/web.  If you want the service worker code to work properly, replace all the code in `flutter_service_worker.js` with `service_worker_code.js`.

- For iOS, build and run with these commands
```
cd ios
pod install
cd ..
flutter build ios --no-sound-null-safety
flutter run --no-sound-null-safety
```
Check out [this link](https://cloud-trends.medium.com/how-to-fix-flutter-idevice-id-running-errors-in-mac-osx-catalina-7aa1f89f61aa)
if you have a security problem with the Mac Gatekeeper
refusing to run flutter utility programs.