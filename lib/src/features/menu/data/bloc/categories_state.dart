// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'categories_bloc.dart';

@immutable
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
  final List<CategoryModel> categories;
  const CategoriesSuccess(this.categories);

  @override
  List<Object> get props => [categories];
}


class CategoriesDataSuccess extends CategoriesState {
  final List<NewsModel> data;
  const CategoriesDataSuccess(this.data);

  @override
  List<Object> get props => [data];
}
