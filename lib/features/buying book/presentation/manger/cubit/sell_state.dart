part of 'sell_cubit.dart';

sealed class SellState extends Equatable {
  const SellState();

  @override
  List<Object> get props => [];
}

final class SellInitial extends SellState {}
final class Sellfailer extends SellState {
  final String errorMassage;

 const Sellfailer(this.errorMassage);
}
final class Sellsuccsed extends SellState {
  final List<BookModel> books;

 const Sellsuccsed(this.books);
}
final class Sellloding extends SellState {}
