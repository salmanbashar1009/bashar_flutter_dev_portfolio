import 'package:bashar_flutter_dev_portfolio/core/routeConfig/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      title: 'HB Flutter Dev Portfolio',
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
