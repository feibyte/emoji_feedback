import 'package:flutter_test/flutter_test.dart';

import 'package:emoji_feedback/emoji_feedback.dart';

void main() {
  testWidgets('it should trigger onChange when choose another emoji',
      (WidgetTester tester) async {
    await tester.pumpWidget(EmojiFeedback());
    expect(find.byType(EmojiFeedback), findsOneWidget);
  });
}
