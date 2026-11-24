import 'package:flutter_test/flutter_test.dart';
import 'package:bottom_navigator_bar_lab/main.dart';

void main() {
  testWidgets('Bottom navigation bar displays its tabs', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(const BottomNavLab());

    // Verify that the app title and all navigation tabs are displayed.
    expect(find.text('Bottom Navigation Bar'), findsOneWidget);
    expect(find.text('Home'), findsAtLeastNWidgets(1));
    expect(find.text('Alarm'), findsOneWidget);
    expect(find.text('Business'), findsOneWidget);
    expect(find.text('School'), findsOneWidget);
  });
}
