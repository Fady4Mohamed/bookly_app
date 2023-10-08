part of 'newsedbooks_cubit.dart';

sealed class NewsedbooksState extends Equatable {
  const NewsedbooksState();

  @override
  List<Object> get props => [];
}

final class NewsedbooksInitial extends NewsedbooksState {}
final class Newsedbookssuccsed extends NewsedbooksState {
  final List<BookModel> books;

 const Newsedbookssuccsed(this.books);
}
final class Newsedbooksfailer extends NewsedbooksState {
  final String errorMassage;

 const Newsedbooksfailer(this.errorMassage);
}
final class Newsedbooksloding extends NewsedbooksState {}

