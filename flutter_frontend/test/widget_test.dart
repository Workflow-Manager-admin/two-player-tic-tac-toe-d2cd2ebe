import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_frontend/main.dart';

void main() {
  testWidgets('Tic Tac Toe app shows board and title', (WidgetTester tester) async {
    await tester.pumpWidget(const TicTacToeApp());

    // Title "Tic Tac Toe" should be present
    expect(find.text('Tic Tac Toe'), findsOneWidget);

    // Status should show "Player X's Turn" at start
    expect(find.text("Player X's Turn"), findsOneWidget);

    // There should be 9 tappable empty cells (find the GestureDetector)
    final gestureCell = find.byType(GestureDetector);
    expect(gestureCell, findsNWidgets(9));

    // There should be a reset button
    expect(find.byKey(const Key('reset_button')), findsOneWidget);
    expect(find.text('Reset Game'), findsOneWidget);
  });
}
