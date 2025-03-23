part of '../chat_screen.dart';

class ChatTextFieldWidget extends StatelessWidget {
  const ChatTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.backgroundLight,
      padding: AppPadding.vertical,
      child: Row(
        children: [
          Expanded(
            child: CustomTextFormField(
              borderRadius: AppBorderRadius.extraExtraLarge,
              prefixIcon: Padding(
                padding: const EdgeInsets.only(left: 4),
                child: CustomButtons.circleIconButton(
                  onPressed: () {},
                  backgroundColor: Colors.grey.shade200,
                  child: SvgPicture.asset(kImageIconSvg),
                ),
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 4),
                child: CustomButtons.circleIconButton(
                  onPressed: () {},
                  backgroundColor: Colors.grey.shade200,
                  child: SvgPicture.asset(kVoiceIconSvg),
                ),
              ),
            ),
          ),
          AppSizedBox.h1,
          CustomButtons.circleIconButton(
            onPressed: () {},
            backgroundColor: AppColors.grayDark,
            child: SvgPicture.asset(
              kSendIconSvg,
              height: 32,
              width: 32,
              colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
          ),
        ],
      ),
    );
  }
}
