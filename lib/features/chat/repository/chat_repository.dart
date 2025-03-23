import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:kiko_ai/core/utils/logger_utils.dart';

import '../../../core/app/constants/texts.dart';

class ChatRepository {
  final GenerativeModel _generativeModel;
  late final ChatSession _chatSession;

  ChatRepository()
    : _generativeModel = GenerativeModel(
        apiKey: dotenv.get("GOOGLE_GEMINI_API"),
        model: kGeminiModel2_0Flash,
      ) {
    _chatSession = _generativeModel.startChat();
  }

  Future<String> sendMessage(String message) async {
    final response = await _chatSession.sendMessage(Content.text(message));
    logger("generative content response => $response");
    return response.text;
  }
}
