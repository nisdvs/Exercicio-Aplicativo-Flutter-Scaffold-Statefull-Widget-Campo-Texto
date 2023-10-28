import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_3/main.dart';

void main() {
  testWidgets('Teste de verificação de credenciais', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    
    expect(find.byType(Container), findsOneWidget);
    expect(find.byType(Container).evaluate().first.widget, isA<Container>().having((container) => container.color, 'color', Colors.white));

    await tester.enterText(find.byType(TextField).at(0), 'Senai');

   
    await tester.enterText(find.byType(TextField).at(1), 'mobile23');

    
    await tester.tap(find.text('Verificar Credenciais'));
    await tester.pump();

   
    expect(find.byType(Container).evaluate().first.widget, isA<Container>().having((container) => container.color, 'color', Colors.green));
  });
}
