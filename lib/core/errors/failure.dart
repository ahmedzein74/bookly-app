import 'package:dio/dio.dart';

abstract class Failure {
  final String errMesage;

  Failure(this.errMesage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMesage);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection timeout with the server.");

      case DioExceptionType.sendTimeout:
        return ServerFailure("Send timeout in connection with the server.");

      case DioExceptionType.receiveTimeout:
        return ServerFailure("Receive timeout in connection with the server.");

      case DioExceptionType.badCertificate:
        return ServerFailure("Bad certificate received from the server.");

      case DioExceptionType.badResponse:
        // Check the status code and provide appropriate error messages
        return ServerFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure("Request to server was cancelled.");

      case DioExceptionType.connectionError:
        return ServerFailure("Connection error with the server.");

      case DioExceptionType.unknown:
        return ServerFailure("An unknown error occurred.");

      default:
        return ServerFailure("An unexpected error occurred.");
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 402) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your requst is not found,please try again later');
    } else if (statusCode == 500) {
      return ServerFailure('Server error ,please try again later');
    } else {
      return ServerFailure('Opps There was an error,please try again later ');
    }
  }
}
