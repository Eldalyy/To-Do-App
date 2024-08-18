import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetsView extends StatelessWidget {
  const WidgetsView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 18),
          leading: Container(
            height: 80,
            width: 6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: theme.primaryColor,
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Play Bascket Ball",
                style: theme.textTheme.bodyLarge?.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: theme.primaryColor),
              ),
              Row(
                children: [
                  Icon(Icons.alarm,size: 15,),
                  SizedBox(width: 5,)
                  ,Text(
                    "10:30 Am",
                    style: theme.textTheme.displaySmall,
                  ),
                ],
              ),
            ],
          ),
          trailing: Container(
            width: 80,
            height: 40,
            decoration: BoxDecoration(
                color: theme.primaryColor,
              borderRadius: BorderRadius.circular(12)
            ),
            child: Icon(Icons.check,size: 30,color: Colors.white,),
          ),
        ),
      ),
    );
  }
}
