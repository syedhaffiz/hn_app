import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:hn_app/main.dart';

void main() {
  testWidgets('Clicking title expands it', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    expect(find.byIcon(Icons.launch), findsNothing);

    await tester.tap(find.byType(ExpansionTile).first);
    await tester.pump();

    expect(find.byIcon(Icons.launch), findsOneWidget);
  }, skip: true);
}
