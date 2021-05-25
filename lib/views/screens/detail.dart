import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:real_estate/data/data.dart';

class Detail extends StatelessWidget {
  final Property property;
  const Detail({Key key, @required this.property}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: property.frontImage,
            child: Container(
              height: size.height * 0.5,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(property.frontImage),
                      fit: BoxFit.cover)),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [
                      0.4,
                      1.0
                    ],
                        colors: [
                      Colors.transparent,
                      Colors.black.withOpacity(0.7)
                    ])),
              ),
            ),
          ),
          Container(
            height: size.height * 0.35,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.0, vertical: 48.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 24.0,
                        ),
                      ),
                      Icon(
                        Icons.notifications_none,
                        color: Colors.white,
                        size: 28.0,
                      ),
                    ],
                  ),
                ),
                Expanded(child: Container()),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.yellow[700],
                        borderRadius: BorderRadius.circular(5)),
                    width: 80.0,
                    padding: EdgeInsets.symmetric(vertical: 4),
                    child: Center(
                      child: Text("FOR" + property.label,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(property.name,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: Center(
                          child: Icon(
                            Icons.favorite,
                            color: Colors.yellow[700],
                            size: 20.0,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        left: 24.0, right: 24.0, top: 8.0, bottom: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.location_on,
                                color: Colors.white, size: 30.0),
                            SizedBox(
                              width: 4.0,
                            ),
                            Text(
                              property.location,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 14.0),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Icon(Icons.zoom_out_map,
                                color: Colors.white, size: 30.0),
                            SizedBox(
                              width: 4.0,
                            ),
                            Text(
                              property.sqm + "sq/m",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 14.0),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow[700],
                              size: 16.0,
                            ),
                            SizedBox(
                              width: 4.0,
                            ),
                            Text(property.review + " Reviews",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                )),
                          ],
                        ),
                      ],
                    )),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: size.height * 0.65,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0))),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(24.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 65.0,
                                width: 65.0,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(property.frontImage),
                                        fit: BoxFit.cover),
                                    shape: BoxShape.circle),
                              ),
                              SizedBox(
                                width: 16.0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("House",
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    height: 4.0,
                                  ),
                                  Text("Property",
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors.grey[500],
                                          fontWeight: FontWeight.bold)),
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 50.0,
                                width: 50.0,
                                decoration: BoxDecoration(
                                    color: Colors.green[700].withOpacity(0.1),
                                    shape: BoxShape.circle),
                                child: Center(
                                  child: Icon(
                                    Icons.phone,
                                    color: Colors.green[700],
                                    size: 20.0,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 16.0,
                              ),
                              Container(
                                height: 50.0,
                                width: 50.0,
                                decoration: BoxDecoration(
                                    color: Colors.green[700].withOpacity(0.1),
                                    shape: BoxShape.circle),
                                child: Center(
                                  child: Icon(
                                    Icons.message,
                                    color: Colors.green[700],
                                    size: 20.0,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          right: 24.0, left: 24.0, bottom: 24.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildFeature(Icons.hotel, "3 BedRoom"),
                          buildFeature(Icons.wc, "2 BathRoom"),
                          buildFeature(Icons.kitchen, "1 Kitchen"),
                          buildFeature(Icons.local_parking, "2 Parking")
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          right: 24.0, left: 24.0, bottom: 16.0),
                      child: Text(
                        "Description",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          right: 24.0, left: 24.0, bottom: 24.0),
                      child: Text(
                        property.description,
                        style:
                            TextStyle(fontSize: 16.0, color: Colors.grey[700]),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          right: 24.0, left: 24.0, bottom: 16.0),
                      child: Text(
                        "Photos ",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                        child: Padding(
                      padding: EdgeInsets.only(bottom: 24.0),
                      child: ListView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        children: buildPhotos(property.images),
                      ),
                    ))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildFeature(IconData iconData, String text) {
    return Column(
      children: [
        Icon(
          iconData,
          color: Colors.red[700],
          size: 28.0,
        ),
        SizedBox(
          height: 8.0,
        ),
        Text(
          text,
          style: TextStyle(color: Colors.grey[500], fontSize: 14.0),
        )
      ],
    );
  }

  List<Widget> buildPhotos(List<String> images) {
    List<Widget> list = [];

    list.add(SizedBox(
      width: 24.0,
    ));
    for (var i = 0; i < images.length; i++) {
      list.add(buildPhoto(images[i], i));
    }
    return list;
  }

  Widget buildPhoto(String url, int index) {
    return AspectRatio(
        aspectRatio: 3 / 2,
        child: Container(
          margin: EdgeInsets.only(right: 24.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            image: DecorationImage(image: AssetImage(url), fit: BoxFit.cover),
          ),
        ));
  }
}
