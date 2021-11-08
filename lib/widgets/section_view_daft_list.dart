import 'package:flutter/material.dart';
import 'package:real_estate_dummy/resources/colors.dart';
import 'package:real_estate_dummy/widgets/widget_title_text.dart';
import '../dummy_data.dart';

class DraftList extends StatefulWidget {
  final List<ItemOb> dummyList;

  const DraftList(this.dummyList, {Key? key}) : super(key: key);

  @override
  _DraftListState createState() => _DraftListState();
}

class _DraftListState extends State<DraftList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.dummyList.length,
      itemBuilder: (context, position) {
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(8),
          ),
          clipBehavior: Clip.antiAlias,
          child: Container(
            height: MediaQuery.of(context).size.width * 1.05,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Stack(
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                      child: LinearProgressIndicator(
                        value: 0.6,
                        backgroundColor: Color(0xffb4b3b1),
                        valueColor:
                        AlwaysStoppedAnimation<Color>(PROGRESS_BAR_COLOR),
                      ),
                    ),
                    Align(
                      child: Text(
                        "60%",
                        style: TextStyle(color: Colors.white),
                      ),
                      alignment: Alignment.center,
                    ),
                  ],
                ),
                Expanded(
                  flex: 1,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://www.stockandland.com.au/images/transform/v1/crop/frm/36i7SKuzkApKRqnK2hWiW9n/55ed2310-5a30-4e8c-9e2f-88098abb5e03.jpg/r0_473_4625_3084_w1200_h678_fmax.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 8.0,
                        top: 8.0,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(8.0)),
                          padding: EdgeInsets.all(4.0),
                          child: Text("inactive ads"),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        TitleTextWidget(
                          "2 BHK Apartment at Knight Height",
                          headingColor: TITLE_HEADING_COLOR,
                        ),
                        SizedBox(
                          height: 4.0,
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.navigation_rounded,
                                  size: 14,
                                  color: TITLE_TEXT_COLOR,
                                ),
                              ),
                              TextSpan(
                                  text: "Vile Parel, Yangon, Myanmar",
                                  style: TextStyle(color: TITLE_TEXT_COLOR)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Expanded(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        ElevatedButton.icon(
                                          onPressed: () => {},
                                          icon: Icon(Icons.favorite),
                                          label: Text("Rent"),
                                          style: ElevatedButton.styleFrom(
                                            elevation: 0,
                                            primary: PROGRESS_BAR_COLOR,
                                            onPrimary: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(8.0),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 8.0),
                                        TitleTextWidget("\$3000")
                                      ],
                                    ),
                                    ElevatedButton.icon(
                                      onPressed: () => {},
                                      icon: Icon(Icons.delete_forever),
                                      label: Text("Delete"),
                                      style: ElevatedButton.styleFrom(
                                        elevation: 0,
                                        primary: Colors.red,
                                        onPrimary: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.more_vert),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}