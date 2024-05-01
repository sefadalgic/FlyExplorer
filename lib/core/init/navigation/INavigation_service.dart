// ignore: file_names
abstract class INavigationService {
  Future<void> navigateToPage({String? path, Object? args});
  Future<void> pop();
}
