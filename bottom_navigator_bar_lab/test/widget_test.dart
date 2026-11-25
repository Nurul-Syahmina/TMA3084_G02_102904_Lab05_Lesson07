import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:bottom_navigator_bar_lab/main.dart';

void main() {
  testWidgets('Bottom navigation bar displays its tabs', (WidgetTester tester) async {
    // Provide TabModel so BottomNavLab can access it with context.watch.
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (_) => TabModel(),
        child: const BottomNavLab(),
      ),
    );

    // Verify that the app title and all four navigation tabs are displayed.
    expect(find.text('Lab 05 Bottom Navigation Bar'), findsOneWidget);
    expect(find.text('Home'), findsAtLeastNWidgets(1));
    expect(find.text('Alarm'), findsOneWidget);
    expect(find.text('Business'), findsOneWidget);
    expect(find.text('School'), findsOneWidget);
  });
}