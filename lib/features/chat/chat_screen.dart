// import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kiko_ai/shared/widgets/custom_buttons.dart';

import '../../shared/widgets/custom_text.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: CustomText.text("Chat Screen")),
      body: Column(
        children: [
          CustomButtons.circleIconButton(
            onPressed: () => print("void call back "),
            child: Icon(CupertinoIcons.xmark),
          ),
        
        ],
      ),
    );
  }
}
