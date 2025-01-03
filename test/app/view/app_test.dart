import 'package:flutter_test/flutter_test.dart';
import 'package:tpedical/app/app.dart';
import 'package:tpedical/app/auth/login_page.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(LoginPage), findsOneWidget);
    });
  });
}
