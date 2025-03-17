import 'package:flutter/material.dart';

// Models
import 'package:componentes/models/routes.dart';

// Screens

class AppRoutes {

	static const initialRoute = 'home';

	static final menuOptions = <MenuOptions>[
		MenuOptions(
			name: 'Cards',
			icon: Icons.card_membership,
			route: 'card',
			screen: Container(child: Text('Página de Cards')),
		),
		MenuOptions(
			name: 'Avatars',
			icon: Icons.supervised_user_circle_outlined,
			route: 'avatar',
			screen: Container(child: Text('Página de Avatars')),
		)
	];

	static Map<String, Widget Function(BuildContext)> getRoutes() {
		Map<String, Widget Function(BuildContext)> appRoutes = {};

		appRoutes.addAll({'home': (BuildContext context) => Container(child: Text('Página de Home'))});

		for (var option in menuOptions) {
			appRoutes.addAll({option.route: (BuildContext context) => option.screen});
		}

		return appRoutes;
	}

	static Route<dynamic> onGenerateRoute(RouteSettings settings) {
		return MaterialPageRoute(
			builder: (context) => Container(child: Text('Página no encontrada')),
		);
	}
}