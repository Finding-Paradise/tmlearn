part of 'favorite_cubit.dart';

abstract class FavoriteState extends Equatable {
  List<Phrases> phrases;
  FavoriteState(this.phrases);

  @override
  List<Object> get props => [phrases];
}

class FavoriteInitial extends FavoriteState {
  FavoriteInitial(List<Phrases> phrases) : super(phrases);
}

class FavoriteEmpty extends FavoriteState {
  FavoriteEmpty(List<Phrases> phrases) : super(phrases);
}

class FavoriteLoaded extends FavoriteState {
  FavoriteLoaded(List<Phrases> phrases) : super(phrases);
}
