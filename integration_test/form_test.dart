import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:form_example/main.dart';
import 'package:form_example/view_page.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('FormScreen Integration Tests', () {
    testWidgets('Submit form with valid data', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());

      // Find text fields and enter data
      await tester.enterText(find.byKey(const Key('nameField')), 'John Doe');
      await tester.enterText(find.byKey(const Key('identityNumberField')), '123456789');
      await tester.enterText(find.byKey(const Key('birthDateField')), '01/01/1990');
      await tester.enterText(find.byKey(const Key('genderField')), 'Male');
      await tester.enterText(find.byKey(const Key('phoneNumberField')), '9876543210');
      await tester.enterText(find.byKey(const Key('lastEducationField')), 'Bachelor');
      await tester.enterText(find.byKey(const Key('religionField')), 'None');
      await tester.enterText(find.byKey(const Key('jobField')), 'Engineer');
      await tester.enterText(find.byKey(const Key('addressField')), '123 Main St');
      await tester.enterText(find.byKey(const Key('accountTypeField')), 'Savings');

      // Tap the submit button
      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle();

      // Verify that the ViewPage is shown with correct data
      expect(find.byType(ViewPage), findsOneWidget);
      expect(find.text('John Doe'), findsOneWidget);
      expect(find.text('123456789'), findsOneWidget);
      expect(find.text('01/01/1990'), findsOneWidget);
      expect(find.text('Male'), findsOneWidget);      expect(find.text('9876543210'), findsOneWidget);
      expect(find.text('Bachelor'), findsOneWidget);
      expect(find.text('None'), findsOneWidget);
      expect(find.text('Engineer'), findsOneWidget);
      expect(find.text('123 Main St'), findsOneWidget);
      expect(find.text('Savings'), findsOneWidget);
    });

    testWidgets('Show alert dialog when form is incomplete', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());

      // Leave all fields empty and tap the submit button
      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle();

      // Verify that the alert dialog is shown
      expect(find.text('Warning !!'), findsOneWidget);
      expect(find.text('Please, input all your data needed...'), findsOneWidget);

      // Close the alert dialog
      await tester.tap(find.text('OK'));
      await tester.pumpAndSettle();

      // Verify that the alert dialog is dismissed
      expect(find.text('Warning !!'), findsNothing);
      expect(find.text('Please, input all your data needed...'), findsNothing);
    });
  });
}
