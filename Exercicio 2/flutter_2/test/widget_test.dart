import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_2/main.dart'; 

void main() {
  testWidgets('Teste de soma de três números', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    
    expect(find.text(''), findsNWidgets(3));

  
    await tester.enterText(find.byType(TextField).at(0), '10');
    await tester.enterText(find.byType(TextField).at(1), '20');
    await tester.enterText(find.byType(TextField).at(2), '30');

    
    expect(find.text('10'), findsOneWidget);
    expect(find.text('20'), findsOneWidget);
    expect(find.text('30'), findsOneWidget);

   
    await tester.tap(find.text('Calcular Soma'));
    await tester.pump();

   
    expect(find.text('Soma: 60.0'), findsOneWidget);
  });
}

