import 'package:flutter/material.dart';
import 'package:kiko_ai/core/config/route_config/go_router_config.dart';
import 'package:kiko_ai/core/app/constants/texts.dart';
import 'package:kiko_ai/core/app/theme/light_theme.dart';
import 'package:kiko_ai/shared/widgets/unfocus_ontap.dart';

class KikoAi extends StatelessWidget {
  const KikoAi({super.key});

  @override
  Widget build(BuildContext context) {
    return UnfocusOntap(
      child: MaterialApp.router(
        theme: lightTheme,
        title: kAppName,
        routerConfig: goRouterConfig,
      ),
    );
  }
}
