part of '../view/chat_screen.dart';

class SingleChatMessage extends StatelessWidget {
  const SingleChatMessage({
    super.key,
    required this.isUser,
    required this.message,
  });

  final bool isUser;
  final String message;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment:
          isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        // if not user show image as prefix
        if (!isUser) ...[
          UserImage(
            imageUrl:
                "https://cdn.dribbble.com/userupload/3963238/file/original-2aac66a107bee155217987299aac9af7.png?format=webp&resize=400x300&vertical=center",
          ),
          AppSizedBox.h0_5,
        ],
        // message
        Flexible(
          child: Container(
            constraints: BoxConstraints(
              maxWidth: AppDimensions.width(context) * 0.8,
            ),
            padding: AppPadding.all,
            decoration: BoxDecoration(
              borderRadius: AppBorderRadius.large,
              color:
                  isUser
                      ? AppColors.surfaceLight
                      : AppColors.secondary.withValues(alpha: 0.1),
            ),
            child: CustomText.text(message, maxLines: 10),
          ),
        ),

        // if user show image as suffix
        if (isUser) ...[
          AppSizedBox.h0_5,
          UserImage(
            imageUrl:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRr1K0sBXjUS-EHFmbdZCItvxjXAwmCrJVD1w&s",
          ),
        ],
      ],
    );
  }
}
