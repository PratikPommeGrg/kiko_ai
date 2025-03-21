// import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import '../../shared/widgets/custom_text.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(title: CustomText.text("Chat Scare")),
      body: Container(
        color: Colors.red,
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(


                validator: (value) => value!.isEmpty ? "required" : null,
              ),
              TextFormField(),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    print("validated");
                  }
                },
                child: Text("Send"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
