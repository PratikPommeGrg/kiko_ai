part of '../view/chat_screen.dart';

class UserImage extends StatelessWidget {
  const UserImage({super.key, this.imageUrl,});

  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(shape: BoxShape.circle),
        clipBehavior: Clip.hardEdge,
        child: CachedNetworkImage(
          imageUrl: imageUrl ??
              "https://cdn.dribbble.com/userupload/3963238/file/original-2aac66a107bee155217987299aac9af7.png?format=webp&resize=400x300&vertical=center",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
