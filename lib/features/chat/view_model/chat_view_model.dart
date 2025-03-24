import 'package:flutter_riverpod/flutter_riverpod.dart';

enum ChatViewStatus { initial, loading, success, failure }

class ChatViewState {
  final String? message;
  final ChatViewStatus status;

  ChatViewState({this.message, this.status = ChatViewStatus.initial});
}

class ChatViewModel extends StateProvider<ChatViewState> {
  ChatViewModel(super.createFn);
}
