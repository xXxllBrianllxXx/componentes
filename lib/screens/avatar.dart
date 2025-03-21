import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
	const AvatarScreen({Key? key}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			backgroundColor: Colors.grey,
			appBar: AppBar(
				title: const Text('Avatar page'),
				actions: const [
					Padding(
						padding: EdgeInsets.only(right: 15),
						child: SizedBox(
							width: 40,
							child: CircleAvatar(
								backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjDGMp734S91sDuUFqL51_xRTXS15iiRoHew&s'),
								radius: 110,
							),
						),
					),
				],
			),
			body: const Center(
				child: CircleAvatar(
					backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjDGMp734S91sDuUFqL51_xRTXS15iiRoHew&s'),
					radius: 110,
				)
			)
		);
	}
}