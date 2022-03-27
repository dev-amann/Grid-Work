import 'package:flutter_test/flutter_test.dart';
import 'package:grid_work/main.dart';
import 'package:grid_work/utils/strings.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(GridWorkApp(appName: Str.appName));
  });
}
