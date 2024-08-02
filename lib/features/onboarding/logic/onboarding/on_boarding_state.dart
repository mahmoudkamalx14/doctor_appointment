import 'package:freezed_annotation/freezed_annotation.dart';

part 'on_boarding_state.freezed.dart';

@freezed
class OnBoardingState with _$OnBoardingState {
  const factory OnBoardingState.initial() = _Initial;

  const factory OnBoardingState.success() = Success;
}
