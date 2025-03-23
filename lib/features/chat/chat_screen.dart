import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/app/constants/app_border_radius.dart';
import '../../core/app/constants/app_colors.dart';
import '../../core/app/constants/app_dimensions.dart';
import '../../core/app/constants/app_padding.dart';
import '../../core/app/constants/app_sized_box.dart';
import '../../core/app/constants/enums.dart';
import '../../core/app/medias.dart';
import '../../shared/models/dummy_convo_model.dart' show loadMessages;
import '../../shared/widgets/custom_buttons.dart';
import '../../shared/widgets/custom_text.dart';
import '../../shared/widgets/custom_text_form_field.dart';

part 'widgets/chat_text_field_widget.dart';
part 'widgets/message_card.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsPadding: EdgeInsets.only(right: 16),

        title: CustomText.text(
          "Chat Screen",
          fontSize: Theme.of(context).textTheme.titleMedium!.fontSize,
          fontWeight: FontWeight.w700,
        ),
        leading: CustomButtons.circleIconButton(
          onPressed: () {},
          child: Icon(Icons.arrow_back),
        ),
        actions: [
          CustomButtons.circleIconButton(
            onPressed: () {
              loadMessages();
            },
            child: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Expanded(
              child: FutureBuilder(
                future: loadMessages(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.separated(
                      separatorBuilder: (context, index) => AppSizedBox.v1,
                      itemCount: snapshot.data?.messages?.length ?? 0,
                      itemBuilder: (context, index) {
                        bool isUser =
                            snapshot.data?.messages?[index].role ==
                            DummyRole.user.name;
                        return Row(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment:
                              isUser
                                  ? MainAxisAlignment.end
                                  : MainAxisAlignment.start,
                          children: [
                            if (!isUser) ...[
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                clipBehavior: Clip.hardEdge,
                                child: CachedNetworkImage(
                                  imageUrl:
                                      "https://cdn.dribbble.com/userupload/3963238/file/original-2aac66a107bee155217987299aac9af7.png?format=webp&resize=400x300&vertical=center",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              AppSizedBox.h0_5,
                            ],
                            Flexible(
                              child: MessageCard(
                                isUser: isUser,
                                message:
                                    snapshot.data?.messages?[index].text ?? "",
                              ),
                            ),
                            if (isUser) ...[
                              AppSizedBox.h0_5,
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                clipBehavior: Clip.hardEdge,
                                child: CachedNetworkImage(
                                  fit: BoxFit.cover,

                                  imageUrl:
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRr1K0sBXjUS-EHFmbdZCItvxjXAwmCrJVD1w&s",
                                ),
                              ),
                              AppSizedBox.h0_5,
                            ],
                          ],
                        );
                      },
                    );
                  }
                  return Center(child: CustomText.text("Chat Screen"));
                },
              ),
            ),
            ChatTextFieldWidget(),
          ],
        ),
      ),
    );
  }
}
