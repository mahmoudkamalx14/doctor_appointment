import 'package:doctor_appointment/features/home/data/repos/home_repo.dart';
import 'package:doctor_appointment/features/home/logic/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  HomeCubit get(context) => BlocProvider.of(context);

  void getDataSpecialization() async {
    final response = await _homeRepo.getDataSpecialization();

    response.when(
      success: (data) {
        emit(GetDataSpecializationSuccess(data));
      },
      failure: (errorHandler) {
        emit(GetDataSpecializationError(error: errorHandler));
      },
    );
  }
}
