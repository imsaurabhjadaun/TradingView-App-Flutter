import 'package:flutter/foundation.dart';
import 'package:tradingview_app/core/enum/base_status.dart';

abstract class CryptoState {
  const CryptoState(this.status);
  final BaseStatus status;
}

class CryptoInitial extends CryptoState {
  CryptoInitial() : super(BaseStatus.initial);
}

class CryptoLoading extends CryptoState {
  CryptoLoading() : super(BaseStatus.loading);
}

class CryptoCompleted extends CryptoState {
  CryptoCompleted(this.response) : super(BaseStatus.completed);
  final List<dynamic> response;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CryptoCompleted && listEquals(other.response, response);
  }

  @override
  int get hashCode => response.hashCode;
}

class CryptoError extends CryptoState {
  CryptoError() : super(BaseStatus.error);
}
