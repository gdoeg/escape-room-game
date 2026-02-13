import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:itad400_final_project/main.dart';

void main() {
  testWidgets('App loads and shows starting room', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: AdventureGame(),
      ),
    );

    // Verify app title
    expect(find.text('Choose Your Adventure Game'), findsOneWidget);

    // Verify starting room
    expect(find.text('Foyer'), findsOneWidget);

    // Verify at least one direction button exists
    expect(find.byType(ElevatedButton), findsWidgets);
  });
}
