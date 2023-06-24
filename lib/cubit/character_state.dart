part of 'character_cubit.dart';

@immutable
abstract class CharacterState {
  const CharacterState();

  @override
  List<Object> get props => [];
}

class CharacterInitial extends CharacterState {}

class CharacterLoading extends CharacterState {
  CharacterLoading();
}

class CharacterLoaded extends CharacterState {
  List<CharachterModle> listCharacher;
  CharacterLoaded({required this.listCharacher});

  //slove hashCode and equatibal
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CharacterLoaded && other.listCharacher == listCharacher;
  }

  @override
  int get hashCode => listCharacher.hashCode;
}

class CharacterError extends CharacterState {
  String? message;
  CharacterError({required this.message});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CharacterError && other.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}
