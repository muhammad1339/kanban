import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'board_state.dart';

class BoardCubit extends Cubit<BoardState> {
  BoardCubit() : super(BoardInitial());
}
