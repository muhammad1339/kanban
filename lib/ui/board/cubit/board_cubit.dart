import 'package:bloc/bloc.dart';

part 'board_state.dart';

class BoardCubit extends Cubit<BoardState> {
  BoardCubit() : super(BoardInitial());
}
