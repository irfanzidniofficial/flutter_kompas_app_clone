part of 'categories_list_bloc.dart';


class CategoriesListState extends Equatable {
  final Status status;
  final List<CategoryModel> categories;
  final String errorMessage;
  const CategoriesListState({
    required this.errorMessage,
    required this.status,
    required this.categories,
  });

  factory CategoriesListState.initial() {
    return const CategoriesListState(
      errorMessage: '',
      status: Status.initial,
      categories: [],
    );
  }
  @override
  List<Object> get props => [status, categories, errorMessage];

  CategoriesListState copyWith({
    Status? status,
    List<CategoryModel>? categories,
    String? errorMessage,
  }) {
    return CategoriesListState(
      status: status ?? this.status,
      categories: categories ?? this.categories,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
