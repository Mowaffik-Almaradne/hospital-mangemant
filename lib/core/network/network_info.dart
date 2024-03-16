//! this InternetConnection in device 

import 'package:internet_connection_checker/internet_connection_checker.dart';
abstract class NetworkInfo {
  Future<bool> get isConnected;
}
class NetworkInfoImplemntes implements NetworkInfo {
  final InternetConnectionChecker internetConnectionChecker;
  NetworkInfoImplemntes(this.internetConnectionChecker);
  @override
  Future<bool> get isConnected => internetConnectionChecker.hasConnection;
}