// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:realisation_4/profile_screen.dart'; // Assurez-vous que le chemin est correct.

void main() {
  testWidgets('ProfileScreen displays correct image and text', (WidgetTester tester) async {
    // Build the ProfileScreen and trigger a frame.
    await tester.pumpWidget(MaterialApp(
      home: ProfileScreen(),
    ));

    // Vérifier que l'image de fond est présente (assets/1.jpg).
    expect(find.image(AssetImage('assets/1.jpg')), findsOneWidget);

    // Vérifier que l'image de profil est présente (assets/12.jpg).
    expect(find.image(AssetImage('assets/12.jpg')), findsOneWidget);

    // Vérifier que le texte "Wolfram Barkovich" est affiché.
    expect(find.text('Wolfram Barkovich'), findsOneWidget);

    // Vérifier que les détails comme "Age" et "Status" sont affichés.
    expect(find.text('Age: 4'), findsOneWidget);
    expect(find.text('Status: Good Boy'), findsOneWidget);

    // Vérifier la présence des icônes des actions (Feed, Pet, Walk).
    expect(find.byIcon(Icons.restaurant), findsOneWidget);
    expect(find.byIcon(Icons.favorite), findsOneWidget);
    expect(find.byIcon(Icons.directions_walk), findsOneWidget);
  });
}

