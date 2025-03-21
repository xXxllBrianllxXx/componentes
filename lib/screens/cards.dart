import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
	const CardScreen({Key? key}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			backgroundColor: Colors.grey,
			appBar: AppBar(
				title: const Text('Cards page'),
			),
			body: ListView(
				padding: const EdgeInsets.all(10),
				children: [
					Card(
						child: Column(
							children: [
								const ListTile(
									leading: Icon(Icons.photo_album, color: Colors.blue),
									title: Text('Soy el título de esta tarjeta'),
									subtitle: Text('Aquí estamos con la descripción de la tarjeta que quiero que ustedes vean para tener una idea básica de lo que quiero mostrarles.'),
								),
								Padding(
									padding: const EdgeInsets.only(right: 5),
									child: Row(
										mainAxisAlignment: MainAxisAlignment.end,
										children: [
											TextButton(
												child: const Text('Cancelar'),
												onPressed: () {},
											),
											TextButton(
												child: const Text('Ok'),
												onPressed: () {},
											)
										],
									)
								)
							],
						),
					)
				],
			)
		);
	}
}