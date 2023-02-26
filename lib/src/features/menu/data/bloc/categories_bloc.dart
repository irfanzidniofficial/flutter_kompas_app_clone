import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_kompas_app_clone/src/features/menu/data/service/categories_service.dart';
import 'package:flutter_kompas_app_clone/src/features/menu/domain/category_model.dart';

part 'categories_event.dart';
part 'categories_state.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  CategoriesBloc() : super(CategoriesInitial()) {
    on<CategoriesEvent>(
      (event, emit) async {
        // emit(CategoriesLoading());
        // try {
        //   final categories = await _categoriesRepository.getCategories();
        //   emit(CategoriesSuccess(categories));
        // } catch (e) {
        //   print(e.toString());
        //   emit(CategoriesFailed(e.toString()));
        // }
        if (event is CategoriesGet) {
          try {
            emit(CategoriesLoading());
            final category = await CategoriesService().getCategories();
            emit(CategoriesSuccess(category));
          } catch (e) {
            print(e.toString());
            emit(CategoriesFailed(e.toString()));
          }
        }
      },
    );
  }
}
