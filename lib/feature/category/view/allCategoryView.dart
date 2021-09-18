import 'package:aressa_commerce/core/data/repository.dart';
import 'package:aressa_commerce/core/domain/model/categoryModel.dart';
import 'package:aressa_commerce/feature/search/view/searchResultView.dart';
import 'package:aressa_commerce/generated/l10n.dart';
import 'package:aressa_commerce/util/config/color/colorConfig.dart';
import 'package:flutter/material.dart';

class AllCategoryView extends StatefulWidget {

  bool isFromSearch;

  AllCategoryView({this.isFromSearch});

  @override
  _AllCategoryViewState createState() => _AllCategoryViewState();
}

class _AllCategoryViewState extends State<AllCategoryView> {

  void goBackWithParams(String params) {

    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchResultView(
      category: params,
    )));

  }

  Widget listItem(CategoryData categoryData) {

    return Container(
      height: 80,
      margin: EdgeInsets.only(left: 16, right: 16),
      padding: EdgeInsets.only(left: 8, right: 8),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => {goBackWithParams(categoryData.name)},
          child: Row(
            children: [
              Image(image: AssetImage(categoryData.thumbnail), height: 60, width: 100,
              fit: BoxFit.fill,
              ),
              Padding(
                  child: Text(categoryData.name, style: TextStyle(
                      fontFamily: 'PoppinsBold',
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
                          Text(S.of(context).category, style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'PoppinsBold',
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
              child: StreamBuilder(
                stream: Repository().getCategories().asStream(),
                builder: (context, AsyncSnapshot<List<CategoryData>> snapshoot){

                  if(snapshoot.hasData) {

                    return ListView.builder(
                      itemCount: snapshoot.data.length,
                      padding: EdgeInsets.only(top: 8),
                      itemBuilder: (ctx, idx){

                        var item = snapshoot.data[idx];

                        return listItem(item);
                      },
                    );
                  } else if(snapshoot.hasError) {

                    return Text(snapshoot.error.toString());
                  } else {

                    return Container();
                  }
                }
              )
            )
          ],
        ),
      ),
    );
  }
}
