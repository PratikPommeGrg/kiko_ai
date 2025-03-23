import 'package:flutter/cupertino.dart';

class UnfocusOntap extends StatelessWidget {
  const UnfocusOntap({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        // when user taps outside the text field hasprimaryfocus will return false which makes it able to dismiss the keyboard
        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus?.unfocus();
        }
      },
      child: child,
    );
  }
}
