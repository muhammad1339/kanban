import 'package:flutter_test/flutter_test.dart';
import 'package:kanban/data/model/model.dart';

void main() {
  test('board nodel test', () {
    final board = Board(name: "board 1", id: "123");
    expect(board.id, "123");
    expect(board.name, "board 1");

  });
}
