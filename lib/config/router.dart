import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:user_app/presentation/screens/screens.dart";

final appRouter = GoRouter(initialLocation: "/", routes: [
  GoRoute(
      path: "/",
      pageBuilder: (context, state) {
        return const MaterialPage(child: HomeScreen());
      }),
  GoRoute(
      path: "/create",
      pageBuilder: (context, state) {
        return const MaterialPage(child: CreateProfileScreen());
      }),
  GoRoute(
      path: "/profile",
      pageBuilder: (context, state) {
        final data = state.extra as Map<String, dynamic>;
        return MaterialPage(child: ViewProfileScreen(data: data));
      }),
]);
