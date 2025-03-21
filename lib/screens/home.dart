import 'package:flutter/material.dart';
import 'package:componentes/routes/routes.dart';

class HomeScreen  extends StatelessWidget {

	const HomeScreen({Key? key}) : super(key: key);

	@override
	Widget build(BuildContext context) {

		return Scaffold(
			appBar: AppBar(
				title: const Text('Home page'),
			),
			body: ListView.separated(
				itemBuilder: (context, i) => ListTile(
					leading: Icon(AppRoutes.menuOptions[i].icon, color: Colors.blue), // Icono de la izquierda
					trailing: const Icon(Icons.arrow_forward_ios_rounded), // Icono de la derecha
					title: Text(AppRoutes.menuOptions[i].name),
					onTap: () => Navigator.pushNamed(context, AppRoutes.menuOptions[i].route),
				),
				separatorBuilder: (context, i) => const Divider(),
				itemCount: AppRoutes.menuOptions.length
			),
		);
	}
}