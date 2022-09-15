import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttercicd/widgets/screens/models/reviewmodel.dart';

class ReviewWidget extends StatelessWidget {
  final ReviewModel reviewItem;

  const ReviewWidget({ required this.reviewItem});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Text(
                  reviewItem.comment,
                ),
              ),
              Row(
                children: List.filled(reviewItem.stars!, null, growable: false).map((listItem) {
                  return Icon(Icons.star);
                }).toList(),
              ),
            ],
          ),
        ),
        Divider(
          color: Colors.grey,
        )
      ],
    );
  }
}