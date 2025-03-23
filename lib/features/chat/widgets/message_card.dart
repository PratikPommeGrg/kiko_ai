part of '../chat_screen.dart';
class MessageCard extends StatelessWidget {
  const MessageCard({super.key, required this.isUser, required this.message});

  final bool isUser;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: AppDimensions.width(context) * 0.85,
      ),
      padding: AppPadding.all,
      decoration: BoxDecoration(
        borderRadius: AppBorderRadius.large,
        color:
            isUser
                ? AppColors.surfaceLight
                : AppColors.secondary.withValues(alpha: 0.1),
      ),
      child: CustomText.text(
        message,
        maxLines: 10,
        textAlign: isUser ? TextAlign.right : TextAlign.left,
      ),
    );
  }
}
