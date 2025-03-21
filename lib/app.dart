import 'package:flutter/material.dart';
import 'package:kiko_ai/core/config/routes/go_router_config.dart';
import 'package:kiko_ai/core/constants/texts.dart';
import 'package:kiko_ai/core/theme/light_theme.dart';

class KikoAi extends StatelessWidget {
  const KikoAi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: lightTheme,
      title: kAppName,
      routerConfig: goRouterConfig,
    );
  }
}
