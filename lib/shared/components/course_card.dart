import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  CourseCard({
    required this.icon,
    required this.body,
    required this.heading,
    required this.imagePath,
  });

  final IconData icon;
  final String body;
  final String heading;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.white,
              width: 2,
            ),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.75),
                blurRadius: 4,
                offset: Offset(0, 4),
              ),
            ],
            image: DecorationImage(
              image: AssetImage(this.imagePath),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.3), BlendMode.dstATop),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                this.heading,
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      this.body,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    child: Icon(
                      this.icon,
                      color: Colors.white,
                      size: 48,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(height: 24.0),
      ],
    );
  }
}
