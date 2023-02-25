part of 'categories_bloc.dart';

@immutable
abstract class CategoriesEvent extends Equatable {
  const CategoriesEvent();

  @override
  List<Object> get props => [];
}

class CategoriesGet extends CategoriesEvent {}

class CategoriesNewsGet extends CategoriesEvent {}
