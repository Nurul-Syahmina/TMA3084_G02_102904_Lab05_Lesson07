import 'package:flutter_test/flutter_test.dart';
import 'package:data_table_lab/main.dart';

void main() {
  testWidgets(
    'Data table displays car information',
    (WidgetTester tester) async {
      // Build the app and trigger a frame.
      await tester.pumpWidget(const DataTableLab());

      // Verify that the table title and column headings are displayed.
      expect(find.text('DataTable Sorting'), findsOneWidget);
      expect(find.text('Car Make'), findsOneWidget);
      expect(find.text('Model'), findsOneWidget);
      expect(find.text('Price'), findsOneWidget);

      // Verify that the car data is displayed.
      expect(find.text('Honda'), findsOneWidget);
      expect(find.text('2021'), findsOneWidget);
      expect(find.text('35000'), findsOneWidget);
    },
  );
}