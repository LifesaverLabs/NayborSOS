// Basic Flutter widget test for Naybor SOS

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:neighbor911/main.dart';

void main() {
  testWidgets('App starts and shows phone verification', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const NayborSOSApp());

    // Verify that the phone verification screen is shown
    expect(find.text('Naybor SOS'), findsOneWidget);
    expect(find.text('Sign up to help your neighbors'), findsOneWidget);
  });
}
