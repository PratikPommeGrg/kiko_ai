import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:fpdart/fpdart.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:kiko_ai/core/utils/logger_utils.dart';

import '../../../core/app/constants/texts.dart';
import '../../../core/error/failure.dart';

class ChatRepository {
  final GenerativeModel _generativeModel;
  late final ChatSession _chatSession;
  GenerateContentResponse? generateContentResponse;

  ChatRepository()
    : _generativeModel = GenerativeModel(
        apiKey: dotenv.get("GOOGLE_GEMINI_API"),
        model: kGeminiModel2_0Flash,
      ) {
    _chatSession = _generativeModel.startChat();
  }

  Future<Either<Failure, String>> sendMessage(String message) async {
    final response = await _chatSession.sendMessage(Content.text(message));
    logger("LLM response => $response");

    // handle blocked prompts
    if(response.promptFeedback?.blockReason != null){
      return Left(LLMFailure());
    }
  }
}
