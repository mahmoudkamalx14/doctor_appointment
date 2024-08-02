import 'package:doctor_appointment/features/onboarding/logic/onboarding/on_boarding_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(const OnBoardingState.initial());

  static OnBoardingCubit get(context) => BlocProvider.of(context);
}
