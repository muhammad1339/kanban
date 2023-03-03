import 'package:flutter_test/flutter_test.dart';
import 'package:kanban/data/model/model.dart';

void main() {
  test('board nodel test', () {
    final board = Board(
      name: "board 1",
      id: "123",
      taskCards: [
        TaskCard(
          boardId: "123",
          id: "123456",
          name: "fill blanks",
        )
      ],
    );
    expect(board.id, "123");
    expect(board.name, "board 1");
    expect(board.taskCards, [
      TaskCard(
        boardId: "123",
        id: "123456",
        name: "fill blanks",
      ),
    ]);
  });
}
