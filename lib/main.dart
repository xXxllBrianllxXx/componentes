import 'package:flutter/material.dart';

// Routes
import 'package:componentes/routes/routes.dart';

void main() {
	runApp(const MyApp());
}

class MyApp extends StatelessWidget {
	const MyApp({super.key});

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			debugShowCheckedModeBanner: false,
			title: 'Componentes',
			theme: ThemeData(
				colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
				useMaterial3: true,
			),
			initialRoute: AppRoutes.initialRoute,
			routes: AppRoutes.getRoutes(),
			onGenerateRoute: AppRoutes.onGenerateRoute,
		);
	}
}