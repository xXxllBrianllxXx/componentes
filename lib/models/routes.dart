import 'package:flutter/material.dart';

class MenuOptions {
	final String name;
	final IconData icon;
	final String route;
	final Widget screen;

	MenuOptions({
		required this.name,
		required this.icon,
		required this.route,
		required this.screen,
	});
}