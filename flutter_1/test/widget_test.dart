import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_1/main.dart'; 

void main() {
  testWidgets('Teste de nome no app', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    
    expect(find.text(''), findsOneWidget);

    
    await tester.enterText(find.byType(TextField), 'John Doe');

    
    expect(find.text('John Doe'), findsOneWidget);

    await tester.tap(find.text('Mostrar Nome'));
    await tester.pump();

    
    expect(find.text('John Doe'), findsOneWidget);
  });
}
