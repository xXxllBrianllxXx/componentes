import 'package:flutter/material.dart';

// Models
import 'package:componentes/models/routes.dart';

// Screens
import 'package:componentes/screens/home.dart';
import 'package:componentes/screens/cards.dart';
import 'package:componentes/screens/avatar.dart';

class AppRoutes {

	static const initialRoute = 'home';

	static final menuOptions = <MenuOptions>[
		MenuOptions(
			name: 'Cards',
			icon: Icons.card_membership,
			route: 'card',
			screen: const CardScreen(),
		),
		MenuOptions(
			name: 'Avatars',
			icon: Icons.supervised_user_circle_outlined,
			route: 'avatar',
			screen: const AvatarScreen(),
		)
	];

	static Map<String, Widget Function(BuildContext)> getRoutes() {
		Map<String, Widget Function(BuildContext)> appRoutes = {};

		appRoutes.addAll({'home': (BuildContext context) => HomeScreen()});

		for (var option in menuOptions) {
			appRoutes.addAll({option.route: (BuildContext context) => option.screen});
		}

		return appRoutes;
	}

	static Route<dynamic> onGenerateRoute(RouteSettings settings) {
		return MaterialPageRoute(
			builder: (context) => Container(child: const Text('Página no encontrada')),
		);
	}
}