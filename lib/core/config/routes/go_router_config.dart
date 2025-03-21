import 'package:go_router/go_router.dart';
import 'package:kiko_ai/core/config/routes/routes.dart';
import 'package:kiko_ai/shared/states/states.dart';

import '../../../features/chat/chat_screen.dart';

final goRouterConfig = GoRouter(
  navigatorKey: globalNavigatorKey,
  initialLocation: RoutesPath.chatScreen,
  routes: [
    GoRoute(
      path: RoutesPath.chatScreen,
      name: RoutesName.chatScreen,
      builder: (context, state) => const ChatScreen(),
    ),
  ],
);
