import 'package:environ/shared/constants.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({
    required this.formKey,
    required this.controller,
    Key? key,
  }) : super(key: key);

  final GlobalKey<FormState> formKey;
  final TextEditingController controller;

  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  double leafSize = 2;

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Haere Mai',
              style: Theme.of(context).textTheme.headline3,
              textAlign: TextAlign.left,
            ),
            Text(
              "What's your name?",
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.left,
            ),
            const SizedBox(
              height: 48,
            ),
            Form(
              key: widget.formKey,
              child: TextFormField(
                controller: widget.controller,
                style: const TextStyle(color: Colors.white),
                decoration: textInputDecoration.copyWith(
                  icon: const Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                  hintText: 'John Smith',
                ),
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'Enter your name!';
                  }
                  return null;
                },
              ),
            )
          ],
        ),
      );
}
