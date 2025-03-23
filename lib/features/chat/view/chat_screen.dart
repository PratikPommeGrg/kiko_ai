import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:kiko_ai/core/app/constants/texts.dart';

import '../../../core/app/constants/app_border_radius.dart';
import '../../../core/app/constants/app_colors.dart';
import '../../../core/app/constants/app_dimensions.dart';
import '../../../core/app/constants/app_padding.dart';
import '../../../core/app/constants/app_sized_box.dart';
import '../../../core/app/constants/enums.dart';
import '../../../core/app/medias.dart';
import '../../../shared/models/dummy_convo_model.dart' show loadMessages;
import '../../../shared/widgets/custom_buttons.dart';
import '../../../shared/widgets/custom_text.dart';
import '../../../shared/widgets/custom_text_form_field.dart';

part '../widgets/chat_text_field_widget.dart';
part '../widgets/single_chat_message.dart';
part '../widgets/user_image.dart';
part './chat_body.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ChatBody();
  }
}
