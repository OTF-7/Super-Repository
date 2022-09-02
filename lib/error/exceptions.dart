part of '../super_repository.dart';

enum ExceptionTypes { cache, process, connection, timeout, unexpected, empty }

abstract class Exceptions implements Exception {
  final String? message;

  const Exceptions(this.message);

  factory Exceptions.fromStatusCode(int statusCode, [String? message]) {
    switch (statusCode) {
      case 0:
        return CustomException(message: message);
      case 204:
        return NoContentException(message: message);
      case 400:
        return ConflictException(message: message);
      case 401:
        return UnauthenticatedException(message: message);
      case 404:
        return NotFoundException(message: message);
      case 403:
        return ForbiddenException(message: message);
      case 406:
        return InvalidException(message: message);
      case 410:
        return ExpireException(message: message);
      case 434:
        return UserExistsException(message: message);
      case 439:
        return BlockedException(message: message);
      case 500:
        return ServerException(message: message);
      default:
        return UnexpectedException(message: message);
    }
  }

  factory Exceptions.fromEnumeration(ExceptionTypes type) {
    switch (type) {
      case ExceptionTypes.cache:
        return const CacheException();
      case ExceptionTypes.process:
        return const ProcessException();
      case ExceptionTypes.connection:
        return const ConnectionException();
      case ExceptionTypes.timeout:
        return const TimeoutException();
      case ExceptionTypes.empty:
        return const EmptyException();
      case ExceptionTypes.unexpected:
        return const UnexpectedException();
    }
  }
}

class ServerException implements Exceptions {
  @override
  final String? message;

  const ServerException({this.message});

  ServerException copyWith({String? message}) =>
      ServerException(message: message ?? this.message);
}

class CacheException implements Exceptions {
  @override
  final String? message;

  const CacheException({this.message});

  CacheException copyWith({String? message}) =>
      CacheException(message: message ?? this.message);
}

class EmptyException implements Exceptions {
  @override
  final String? message;

  const EmptyException({this.message});

  EmptyException copyWith({String? message}) =>
      EmptyException(message: message ?? this.message);
}

class InvalidException implements Exceptions {
  @override
  final String? message;

  const InvalidException({this.message});

  InvalidException copyWith({String? message}) =>
      InvalidException(message: message ?? this.message);
}

class NotFoundException implements Exceptions {
  @override
  final String? message;

  const NotFoundException({this.message});

  NotFoundException copyWith({String? message}) =>
      NotFoundException(message: message ?? this.message);
}

class ExpireException implements Exceptions {
  @override
  final String? message;

  const ExpireException({this.message});

  ExpireException copyWith({String? message}) =>
      ExpireException(message: message ?? this.message);
}

class UniqueException implements Exceptions {
  @override
  final String? message;

  const UniqueException({this.message});

  UniqueException copyWith({String? message}) =>
      UniqueException(message: message ?? this.message);
}

class UserExistsException implements Exceptions {
  @override
  final String? message;

  const UserExistsException({this.message});

  UserExistsException copyWith({String? message}) =>
      UserExistsException(message: message ?? this.message);
}

class ReceiveException implements Exceptions {
  @override
  final String? message;

  const ReceiveException({this.message});

  ReceiveException copyWith({String? message}) =>
      ReceiveException(message: message ?? this.message);
}

class PasswordException implements Exceptions {
  @override
  final String? message;

  const PasswordException({this.message});

  PasswordException copyWith({String? message}) =>
      PasswordException(message: message ?? this.message);
}

class UnexpectedException implements Exceptions {
  @override
  final String? message;

  const UnexpectedException({this.message});

  UnexpectedException copyWith({String? message}) =>
      UnexpectedException(message: message ?? this.message);
}

class UnauthenticatedException implements Exceptions {
  @override
  final String? message;

  const UnauthenticatedException({this.message});

  UnauthenticatedException copyWith({String? message}) =>
      UnauthenticatedException(message: message ?? this.message);
}

class BlockedException implements Exceptions {
  @override
  final String? message;

  const BlockedException({this.message});

  BlockedException copyWith({String? message}) =>
      BlockedException(message: message ?? this.message);
}

class CustomException implements Exceptions {
  @override
  final String? message;

  const CustomException({this.message});

  CustomException copyWith({String? message}) =>
      CustomException(message: message ?? this.message);
}

class NoContentException implements Exceptions {
  @override
  final String? message;

  const NoContentException({this.message});

  NoContentException copyWith({String? message}) =>
      NoContentException(message: message ?? this.message);
}

class ForbiddenException implements Exceptions {
  @override
  final String? message;

  const ForbiddenException({this.message});

  ForbiddenException copyWith({String? message}) =>
      ForbiddenException(message: message ?? this.message);
}

class ConnectionException implements Exceptions {
  @override
  final String? message;

  const ConnectionException({this.message});

  ConnectionException copyWith({String? message}) =>
      ConnectionException(message: message ?? this.message);
}

class ProcessException implements Exceptions {
  @override
  final String? message;

  const ProcessException({this.message});

  ProcessException copyWith({String? message}) =>
      ProcessException(message: message ?? this.message);
}

class TimeoutException implements Exceptions {
  @override
  final String? message;

  const TimeoutException({this.message});

  TimeoutException copyWith({String? message}) =>
      TimeoutException(message: message ?? this.message);
}

class ConflictException implements Exceptions {
  @override
  final String? message;

  const ConflictException({this.message});

  ConflictException copyWith({String? message}) =>
      ConflictException(message: message ?? this.message);
}

class UnknownException implements Exceptions {
  @override
  final String? message;

  const UnknownException({this.message});

  UnknownException copyWith({String? message}) =>
      UnknownException(message: message ?? this.message);
}

class ValidationException implements Exceptions {
  @override
  final String? message;

  const ValidationException({this.message});

  ValidationException copyWith({String? message}) =>
      ValidationException(message: message ?? this.message);
}
