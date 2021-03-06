import "package:flutter/material.dart";

void main() {
  runApp(Quizzler());
}

class Quizzler extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return(MaterialApp(
			debugShowCheckedModeBanner: false,
			home: Scaffold(
				backgroundColor: Colors.grey.shade900,
				body: SafeArea(
					child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
					),
				),
			),
		));
	}
}

class QuizPage extends StatefulWidget {
	@override 
	_QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
	@override
	Widget build(BuildContext context) {
		return Column(
			mainAxisAlignment: MainAxisAlignment.spaceBetween,
			crossAxisAlignment: CrossAxisAlignment.stretch,
			children: [
				Expanded(
					child: Padding(
						padding: EdgeInsets.all(10.0),
						child: Center(
							child: Text(
								"This is where the question text will go.",
								textAlign: TextAlign.center,
								style: TextStyle(
									fontSize: 25.0,
									color: Colors.white
								),
							),
						),
					),
				),
				Expanded(
					child: Padding(
						padding: EdgeInsets.all(15.0),
						child: FlatButton(
							textColor: Colors.white,
							color: Colors.green,
							onPressed: () {  },
							child: Text("True")
						),
					),
				),
				Expanded(
					child: Padding(
						padding: EdgeInsets.all(15.0),
						child: FlatButton(
							textColor: Colors.white,
							color: Colors.red,
							onPressed: () {},
							child: Text("False"),
						)
					),
				),
			],
			//TODO: Add a Row here as your score keeper
		);
	}
}