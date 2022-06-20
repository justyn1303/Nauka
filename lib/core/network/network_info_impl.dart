import 'package:spotify_clone/core/network/network_info.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class NetworkInformationImplementation implements NetworkInformation {
  final InternetConnectionChecker _internetConnectionChecker;

  NetworkInformationImplementation(this._internetConnectionChecker);

  @override
  Future<bool> get isConnected => _internetConnectionChecker.hasConnection;
}