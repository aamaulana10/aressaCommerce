import 'package:aressa_commerce/feature/category/view/allCategoryView.dart';
import 'package:aressa_commerce/util/config/color/colorConfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class SearchView extends StatefulWidget {
  const SearchView({Key key}) : super(key: key);

  @override
  _SearchViewState createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {

  bool isSearch = false;
  bool isShowList = false;

  void onSearch(String e) {

    if(e.length != 0) {

      setState(() {
        isSearch = true;
      });
    } else {

      setState(() {
        isSearch = false;
      });
    }
  }
  
  showSearchResult(String e) {
    
    print("done " + e);
    if(e.length != 0) {
      setState(() {
        isShowList = true;
      });
    }
  }

  gotoAllCategory() {

    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => AllCategoryView()));
  }

  Widget header() {

    return Container(
      height: 50,
      margin: EdgeInsets.only(left: 16, right: 16),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: ColorConfig.borderColor, width: 1),
                  borderRadius: BorderRadius.circular(8)
              ),
              child: TextFormField(
                onChanged: (e) => {onSearch(e)},
                textInputAction: TextInputAction.search,
                onFieldSubmitted: (e) => {showSearchResult(e)},
                decoration: InputDecoration(
                    labelText: "Search Product",
                    labelStyle: TextStyle(
                        color: ColorConfig.textColor1,
                        fontSize: 12
                    ),
                    prefixIcon: Icon(Icons.search, color: ColorConfig.bluePrimary,),
                    border: InputBorder.none
                ),
              ),
            ),
          ),
          isSearch != true ?
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)
                ),
                child: InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: () => { print("whishlist") },
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Image(
                        image: AssetImage("lib/asset/image/home/love.png"),
                      ),
                    )
                ),

              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)
                ),
                child: InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: () => { print("whishlist") },
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Image(
                        image: AssetImage("lib/asset/image/home/notification.png"),
                      ),
                    )
                ),

              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)
                ),
                child: InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: () => { print("whishlist") },
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Image(
                        image: AssetImage("lib/asset/image/home/love.png"),
                      ),
                    )
                ),

              ),
            ],
          )
              :
          isShowList == true ?
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)
                ),
                child: InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: () => { print("whishlist") },
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Icon(Icons.sort)
                    )
                ),

              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)
                ),
                child: InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: () => { print("whishlist") },
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Icon(Icons.filter_alt_outlined)
                    )
                ),

              ),
            ],
          )
          :
              Container()
        ],
      ),
    );
  }

  Widget manFashionWidget() {

    return Container(
      margin: EdgeInsets.only(top: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Text("Man Fashion", textAlign: TextAlign.left, style: TextStyle(
                color: ColorConfig.textColorBold1,
                fontSize: 14,
                fontWeight: FontWeight.bold),),
          ),
          GridView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.all(0),
                primary: false,
                physics: new NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    childAspectRatio: 0.9
                ),
                itemCount: 6,
                itemBuilder: (item, index) {
                  return Container(
                    width: 70,
                    margin: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: ColorConfig.borderColor, width: 1),
                              shape: BoxShape.circle
                          ),
                          height: 70,
                          width: 70,
                          child: Padding(
                            child: Image(
                                image: AssetImage("lib/asset/image/home/shirt.png")
                            ),
                            padding: EdgeInsets.all(20),
                          ),

                        ),
                        Expanded(
                          child: Container(
                            child: Text("Man Shirt", style: TextStyle(
                              fontSize: 10,
                            )),
                            padding: EdgeInsets.only(top: 10),
                          ),
                        )
                      ],
                    ),
                  );
                }),

        ],
      ),
    );
  }

  Widget womanFashionWidget() {

    return Container(
      margin: EdgeInsets.only(top: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Text("Woman Fashion", textAlign: TextAlign.left, style: TextStyle(
                color: ColorConfig.textColorBold1,
                fontSize: 14,
                fontWeight: FontWeight.bold)),
          ),
          GridView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.all(0),
              primary: false,
              physics: new NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 0.9
              ),
              itemCount: 6,
              itemBuilder: (item, index) {
                return Container(
                  width: 70,
                  margin: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: ColorConfig.borderColor, width: 1),
                            shape: BoxShape.circle
                        ),
                        height: 70,
                        width: 70,
                        child: Padding(
                          child: Image(
                              image: AssetImage("lib/asset/image/home/shirt.png")
                          ),
                          padding: EdgeInsets.all(20),
                        ),

                      ),
                      Expanded(
                        child: Container(
                          child: Text("Man Shirt", style: TextStyle(
                            fontSize: 10,
                          )),
                          padding: EdgeInsets.only(top: 10),
                        ),
                      )
                    ],
                  ),
                );
              }),

        ],
      ),
    );
  }

  Widget productResultWidget() {

    return Container(
      margin: EdgeInsets.only(top: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              children: [
                Expanded(child: Text("141 Result", textAlign: TextAlign.left)),
                FlatButton(
                    onPressed: () => {gotoAllCategory()},
                    child: Row(
                      children: [
                        Text("Man Shoes"),
                        Icon(Icons.arrow_drop_down)
                      ],
                    )
                )
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.all(0),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.65
                ),
                itemCount: 30,
                itemBuilder: (item, index) {
                  return  Container(
                    height: 400,
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        border: Border.all(color: ColorConfig.borderColor, width: 1),
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image(
                                image: AssetImage("lib/asset/image/home/promotionDummy.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Text("FS - Nike Air Max 270 React", maxLines: 2, style: TextStyle(
                              fontSize: 12,
                              color: ColorConfig.textColorBold1,
                              fontWeight: FontWeight.bold
                          )),
                          padding: EdgeInsets.only(top: 10),
                        ),
                        Container(
                          child: RatingBarIndicator(
                            rating: 3,
                            itemBuilder: (context, index) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            itemCount: 5,
                            itemSize: 24.0,
                            unratedColor: ColorConfig.borderColor,
                          ),
                          padding: EdgeInsets.only(top: 10),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 8),
                          child: Text("288,43", style: TextStyle(
                              fontSize: 12,
                              color: ColorConfig.bluePrimary,
                              fontWeight: FontWeight.bold
                          )),
                          padding: EdgeInsets.only(top: 10),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Text("534,33", style: TextStyle(
                                  fontSize: 10,
                                  decoration: TextDecoration.lineThrough
                              )),
                              Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Text("24% off", style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0XFFFB7181)
                                )),
                              ),
                            ],
                          ),
                          padding: EdgeInsets.only(top: 10),
                        ),
                      ],
                    ),
                  );
                }),
          ),

        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 32),
        child: Column(
            children: [
              header(),
              isSearch == false ?
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          manFashionWidget(),
                          womanFashionWidget()
                        ],
                      ),
                    ),
                  )
              :
                  isShowList ?

                  Expanded(child: productResultWidget())
                      :
                      Container()
            ],
          ),
        ),
    );
  }
}
