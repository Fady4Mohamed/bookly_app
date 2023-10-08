part of 'featur_book_cubit.dart';

sealed class FeaturBookState extends Equatable {
  const FeaturBookState();

  @override
  List<Object> get props => [];
}

final class FeaturBookInitial extends FeaturBookState {}
final class FeaturBookloding extends FeaturBookState {}
final class FeaturBookfailure extends FeaturBookState {
  final String errorMassage;

const  FeaturBookfailure(this.errorMassage);

}
final class FeaturBooksuccsed extends FeaturBookState {
}

