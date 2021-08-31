import 'package:aressa_commerce/util/config/color/colorConfig.dart';
import 'package:flutter/material.dart';

class AllCategoryView extends StatefulWidget {
  const AllCategoryView({Key key}) : super(key: key);

  @override
  _AllCategoryViewState createState() => _AllCategoryViewState();
}

class _AllCategoryViewState extends State<AllCategoryView> {

  void goBackWithParams(String params) {

    Navigator.of(context).pop(params);
  }

  Widget listItem() {

    return Container(
      height: 56,
      margin: EdgeInsets.only(left: 16, right: 16),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => {print("selected")},
          child: Row(
            children: [
              Image(image: AssetImage("lib/asset/image/home/shirt.png"), height: 24, width: 24),
              Padding(
                  child: Text("Man Shirt", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: ColorConfig.textColorBold1
                  )),
                padding: EdgeInsets.only(left: 16, right: 16),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 60,
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
                          Text("Category", style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          )),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 1,
                    color: ColorConfig.borderColor,
                  )
                ],
              )
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (ctx, idx){

                  return listItem();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
