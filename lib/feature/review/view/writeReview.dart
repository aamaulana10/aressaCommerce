import 'package:aressa_commerce/util/config/color/colorConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class WriteReview extends StatefulWidget {

  @override
  _WriteReviewState createState() => _WriteReviewState();
}

class _WriteReviewState extends State<WriteReview> {

  Widget appBar() {
    return Container(
        height: 60,
        margin: EdgeInsets.only(top: 16),
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.only(right: 16),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () => {Navigator.of(context).pop()},
                      icon: Icon(Icons.chevron_left),
                      iconSize: 32,
                    ),
                    Text("Write Review", style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontFamily: 'PoppinsBold',
                    )),
                  ],
                ),
              ),
            ),
            Container(
              height: 1,
              color: Colors.grey,
            ),
          ],
        )
    );
  }

  Widget content() {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16, top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Please write Overall level of satisfaction with your shipping / Delivery Service",
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontFamily: 'PoppinsBold'
          )),
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Row(
              children: [
                RatingBarIndicator(
                  rating: 4,
                  itemBuilder: (context, index) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  itemCount: 5,
                  itemSize: 32,
                  unratedColor: ColorConfig.borderColor,
                ),
                Container(
                  margin: EdgeInsets.only(left: 16),
                  child: Text("4/5",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontFamily: 'PoppinsBold'
                  ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 24),
            child: Text("Write Your Review",
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: 'PoppinsBold'
            ),
            ),
          ),
          Container(
            height: 160,
            padding: EdgeInsets.only(left: 16, right: 16, bottom: 8, top: 8),
            margin: EdgeInsets.only(top: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.transparent,
                border: Border.all(
                  color: Colors.grey,
                )),
            child: TextFormField(
              decoration: InputDecoration(
                  labelText: "Write Your Review Here",
                  labelStyle: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      fontFamily: 'Poppinsregular'),
                  border: InputBorder.none),
            ),
          ),
        ],
      ),
    );
  }

  Widget saveButton() {
    return Container(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => {Navigator.pop(context)},
          child: Container(
            margin: EdgeInsets.all(16),
            alignment: Alignment.center,
            height: 57,
            decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(5)
            ),
            child: Text("Save", style: TextStyle(
              fontSize: 14,
              color: Colors.white,
              fontFamily: 'PoppinsBold',
            ),),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      appBar(),
                      content()
                    ],
                  ),
                ),
              ),
              saveButton()
            ],
          ),
        ));
  }
}
