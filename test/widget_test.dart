
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pianova/pianovamilestone1.dart';

void main() {
  testWidgets('Pianova home screen test', (WidgetTester tester) async {
    await tester.pumpWidget(const PianovaApp());

    expect(find.text('PIANOVA'), findsOneWidget);
    expect(find.text('Our Piano Courses'), findsOneWidget);
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
