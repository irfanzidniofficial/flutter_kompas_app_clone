import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_kompas_app_clone/src/features/menu/data/service/categories_service.dart';
import 'package:flutter_kompas_app_clone/src/features/menu/domain/category_model.dart';
import 'package:flutter_kompas_app_clone/src/shared/enum_status.dart';

part 'categories_list_event.dart';
part 'categories_list_state.dart';

class CategoriesListBloc extends Bloc<CategoriesListEvent, CategoriesListState> {
  CategoriesListBloc() : super(CategoriesListState.initial()) {
    on<GetCategoriesListEvent>(
      (event, emit) async {
        emit(state.copyWith(status: Status.loading));

        try {
          final response = await CategoriesService().getCategoriesList();

          emit(state.copyWith(
            status: Status.success,
            categories: response.data,
          ));
        } catch (e) {
          emit(state.copyWith(
            status: Status.error,
            errorMessage: e.toString(),
          ));
        }

        
      },
    );
  }
}
