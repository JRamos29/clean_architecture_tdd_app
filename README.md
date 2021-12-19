
# Number Trivia (Flutter App)

## Clean Architecture for Flutter

#

### This is a small and simple app of Number Trivia, using the concepts of <b>[Clean Architecture](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html)</b> using [Flutter BLoC](https://pub.dev/packages/flutter_bloc) for state management and Flutter 2.0 (null-safety).
<br> 


<h3 align="center">Clean Architecture Proposal</h3>

<br />

<img src="./assets/images/Clean-Architecture-Flutter-Diagram.png" style="display: block; margin-left: auto; margin-right: auto; width: 75%;"/>


The app was developed following the tutorial series  available at [this link](https://resocoder.com/flutter-clean-architecture-tdd/) with some packages changes, and using Flutter 2.0 (null-safety):
<p> 

- Service locator (Dependency Injection) using [get_it](https://pub.dev/packages/get_it);
- Check object value equality with [equatable](https://pub.dev/packages/equatable);
- Functional programming features with [dartz](https://pub.dev/packages/dartz);
- Check internet connection ([internet_connection_checker](https://pub.dev/packages/internet_connection_checker));
- Http Client for API requests using [http](https://pub.dev/packages/http);
- Loca cache with [shared_preferences](https://pub.dev/packages/shared_preferences);
- Tests with [mocktail](https://pub.dev/packages/mocktail);

#

<b>Note:</b> The purpose of this app is to explore native functionalities from Dart/Flutter as from third-party packages as well. So the UI it's not as fancy as a final product for a real app.

#

For help getting started with Flutter, view the
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

#