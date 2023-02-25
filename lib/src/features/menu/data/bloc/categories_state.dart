part of 'categories_bloc.dart';

abstract class CategoriesState extends Equatable {
  const CategoriesState();

  @override
  List<Object> get props => [];
}

class CategoriesInitial extends CategoriesState {}

class CategoriesLoading extends CategoriesState {}

class CategoriesFailed extends CategoriesState {
  final String e;
  const CategoriesFailed(this.e);

  @override
  List<Object> get props => [e];
}

class CategoriesSuccess extends CategoriesState {
  final List<Category> categories;
  const CategoriesSuccess(this.categories);

  @override
  List<Object> get props => [categories];
}
