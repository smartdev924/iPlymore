import 'package:iplaymore/app/modules/Home/controllers/home_controller.dart';
import 'package:iplaymore/app/components/custom_appbar.dart';
import 'package:iplaymore/app/constants/image_constants.dart';
import 'package:iplaymore/app/theme/color_util.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(93.0),
          child: CustomAppBar(backgroundColor: LmsColorUtil.headerColor)),
      backgroundColor: LmsColorUtil.headerColor,
      body: SafeArea(
        child: Column(
          children: [
            Divider(
              color: Color.fromRGBO(255, 255, 255, 0.08),
              thickness: 1,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Marketplace",
                style: TextStyle(
                    fontSize: 29,
                    fontFamily: 'Serpentine',
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),
            Divider(
              color: Color.fromRGBO(255, 255, 255, 0.08),
              thickness: 1,
            ),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: Row(
                  children: [
                    Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color.fromRGBO(156, 163, 175, 1),
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(68, 68, 68, 0.7),
                                width: 1.0),
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          hintText: 'Search marketplace',
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                          hintStyle:
                              TextStyle(color: Color.fromRGBO(68, 68, 68, 0.7)),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(68, 68, 68, 0.7),
                                width: 1.0),
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                        ),
                        style: TextStyle(
                            color: Color.fromARGB(255, 221, 221, 221)),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 132,
                      height: 49,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                            width: 1, color: Color.fromRGBO(143, 27, 29, 1)),
                        gradient: LinearGradient(
                          colors: [
                            Color.fromRGBO(143, 27, 29, 0.5),
                            Color.fromRGBO(20, 20, 20, 0.5),
                            Color.fromRGBO(20, 20, 20, 0.5),
                            Color.fromRGBO(143, 27, 29, 0.5),
                          ],
                          begin: FractionalOffset.centerRight,
                          end: FractionalOffset.centerLeft,
                        ),
                      ),
                      child: TextButton(
                        child: Text(
                          'Redeem Code',
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Serpentine',
                              fontWeight: FontWeight.normal,
                              color: Color.fromRGBO(235, 74, 76, 1)),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                )),
            Divider(
              color: Color.fromRGBO(255, 255, 255, 0.08),
              thickness: 1,
            ),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: DecoratedBox(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromRGBO(255, 255, 255, 0.08),
                            Color.fromRGBO(98, 98, 98, 0.3),
                            Color.fromRGBO(20, 20, 20, 1)
                          ],
                          begin: FractionalOffset.centerLeft,
                          end: FractionalOffset.centerRight,
                        ), //background color of dropdown button
                        border: Border.all(
                            color: Color.fromRGBO(255, 255, 255, 0.08),
                            width: 1), //border of dropdown button
                        borderRadius: BorderRadius.circular(
                            8), //border raiuds of dropdown button
                        boxShadow: <BoxShadow>[
                          //apply shadow on Dropdown button
                          BoxShadow(
                              color: Color.fromRGBO(
                                  0, 0, 0, 0.57), //shadow for button
                              blurRadius: 5) //blur radius of shadow
                        ]),
                    child: Padding(
                        padding: EdgeInsets.only(left: 30, right: 30),
                        child: DropdownButton(
                          value: "Mixed Characters",
                          items: [
                            //add items in the dropdown
                            DropdownMenuItem(
                              child: Text("Mixed Characters"),
                              value: "Mixed Characters",
                            ),
                            DropdownMenuItem(
                              child: Text("Brood Characters"),
                              value: "Brood Characters",
                            ),
                            DropdownMenuItem(
                              child: Text("Kin Characters"),
                              value: "Kin Characters",
                            ),
                          ],
                          onChanged: (value) {
                            //get value when changed
                            print("You have selected $value");
                          },
                          icon: Padding(
                              //Icon at tail, arrow bottom is default icon
                              padding: EdgeInsets.only(left: 20),
                              child: Icon(
                                Icons.expand_more,
                                size: 30,
                                color: Color.fromRGBO(107, 114, 128, 1),
                              )),
                          iconEnabledColor: Colors.white, //Icon color
                          style: TextStyle(
                              //te
                              color: Colors.white, //Font color
                              fontSize: 20 //font size on dropdown button
                              ),

                          dropdownColor: Color.fromARGB(
                              255, 37, 37, 37), //dropdown background color
                          underline: Container(), //remove underline
                          isExpanded: true, //make true to make width 100%
                        )))),
            Divider(
              color: Color.fromRGBO(255, 255, 255, 0.08),
              thickness: 1,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromRGBO(255, 255, 255, 0.08),
                    ),
                    borderRadius: BorderRadius.circular(6)),
                child: Row(children: [
                  Text(
                    'Ki...',
                    style: TextStyle(fontSize: 14),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Color.fromRGBO(156, 163, 175, 1),
                  ),
                  Text(
                    'Zach Game Gear Sets',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '2 Sets',
                    style: TextStyle(color: Color.fromRGBO(115, 104, 104, 1)),
                  ),
                ]),
              ),
            ),
            Divider(
              color: Color.fromRGBO(255, 255, 255, 0.08),
              indent: 0,
              thickness: 1,
            ),
            Expanded(
                child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
              children: <Widget>[
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Color.fromRGBO(255, 255, 255, 0.08),
                  )),
                  child: Column(children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 48, vertical: 10),
                      child: Image.asset(
                        ImageConstants.CHARACTOR1,
                        fit: BoxFit.fill,
                        height: 271,
                        width: 273,
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 48,
                        ),
                        child: Container(
                          width: double.infinity,
                          child: SizedBox(
                              width: 50,
                              child: Text(
                                "Prince Of Dominations",
                                style: TextStyle(fontSize: 20),
                              )),
                        )),
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                        child: Container(
                          width: double.infinity,
                          child: Divider(
                            color: Color.fromRGBO(255, 255, 255, 0.08),
                            indent: 0,
                            thickness: 1,
                          ),
                        )),
                    Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 48, vertical: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'View full set',
                                  style: TextStyle(color: Colors.white),
                                )),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Comming soon',
                                  style: TextStyle(
                                      color: Color.fromRGBO(81, 81, 81, 1)),
                                ))
                          ],
                        )),
                  ]),
                ),
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Color.fromRGBO(255, 255, 255, 0.08),
                  )),
                  child: Column(children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 48, vertical: 10),
                      child: Image.asset(
                        ImageConstants.CHARACTOR1,
                        fit: BoxFit.fill,
                        height: 271,
                        width: 273,
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 48,
                        ),
                        child: Container(
                          width: double.infinity,
                          child: SizedBox(
                              width: 50,
                              child: Text(
                                "Prince Of Dominations",
                                style: TextStyle(fontSize: 20),
                              )),
                        )),
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                        child: Container(
                          width: double.infinity,
                          child: Divider(
                            color: Color.fromRGBO(255, 255, 255, 0.08),
                            indent: 0,
                            thickness: 1,
                          ),
                        )),
                    Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 48, vertical: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'View full set',
                                  style: TextStyle(color: Colors.white),
                                )),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Comming soon',
                                  style: TextStyle(
                                      color: Color.fromRGBO(81, 81, 81, 1)),
                                ))
                          ],
                        )),
                  ]),
                ),
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Color.fromRGBO(255, 255, 255, 0.08),
                  )),
                  child: Column(children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 48, vertical: 10),
                      child: Image.asset(
                        ImageConstants.CHARACTOR1,
                        fit: BoxFit.fill,
                        height: 271,
                        width: 273,
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 48,
                        ),
                        child: Container(
                          width: double.infinity,
                          child: SizedBox(
                              width: 50,
                              child: Text(
                                "Prince Of Dominations",
                                style: TextStyle(fontSize: 20),
                              )),
                        )),
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                        child: Container(
                          width: double.infinity,
                          child: Divider(
                            color: Color.fromRGBO(255, 255, 255, 0.08),
                            indent: 0,
                            thickness: 1,
                          ),
                        )),
                    Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 48, vertical: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'View full set',
                                  style: TextStyle(color: Colors.white),
                                )),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Comming soon',
                                  style: TextStyle(
                                      color: Color.fromRGBO(81, 81, 81, 1)),
                                ))
                          ],
                        )),
                  ]),
                ),
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Color.fromRGBO(255, 255, 255, 0.08),
                  )),
                  child: Column(children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 48, vertical: 10),
                      child: Image.asset(
                        ImageConstants.CHARACTOR1,
                        fit: BoxFit.fill,
                        height: 271,
                        width: 273,
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 48,
                        ),
                        child: Container(
                          width: double.infinity,
                          child: SizedBox(
                              width: 50,
                              child: Text(
                                "Prince Of Dominations",
                                style: TextStyle(fontSize: 20),
                              )),
                        )),
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                        child: Container(
                          width: double.infinity,
                          child: Divider(
                            color: Color.fromRGBO(255, 255, 255, 0.08),
                            indent: 0,
                            thickness: 1,
                          ),
                        )),
                    Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 48, vertical: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'View full set',
                                  style: TextStyle(color: Colors.white),
                                )),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Comming soon',
                                  style: TextStyle(
                                      color: Color.fromRGBO(81, 81, 81, 1)),
                                ))
                          ],
                        )),
                  ]),
                ),
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Color.fromRGBO(255, 255, 255, 0.08),
                  )),
                  child: Column(children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 48, vertical: 10),
                      child: Image.asset(
                        ImageConstants.CHARACTOR1,
                        fit: BoxFit.fill,
                        height: 271,
                        width: 273,
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 48,
                        ),
                        child: Container(
                          width: double.infinity,
                          child: SizedBox(
                              width: 50,
                              child: Text(
                                "Prince Of Dominations",
                                style: TextStyle(fontSize: 20),
                              )),
                        )),
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                        child: Container(
                          width: double.infinity,
                          child: Divider(
                            color: Color.fromRGBO(255, 255, 255, 0.08),
                            indent: 0,
                            thickness: 1,
                          ),
                        )),
                    Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 48, vertical: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'View full set',
                                  style: TextStyle(color: Colors.white),
                                )),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Comming soon',
                                  style: TextStyle(
                                      color: Color.fromRGBO(81, 81, 81, 1)),
                                ))
                          ],
                        )),
                  ]),
                ),
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Color.fromRGBO(255, 255, 255, 0.08),
                  )),
                  child: Column(children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 48, vertical: 10),
                      child: Image.asset(
                        ImageConstants.CHARACTOR1,
                        fit: BoxFit.fill,
                        height: 271,
                        width: 273,
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 48,
                        ),
                        child: Container(
                          width: double.infinity,
                          child: SizedBox(
                              width: 50,
                              child: Text(
                                "Prince Of Dominations",
                                style: TextStyle(fontSize: 20),
                              )),
                        )),
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                        child: Container(
                          width: double.infinity,
                          child: Divider(
                            color: Color.fromRGBO(255, 255, 255, 0.08),
                            indent: 0,
                            thickness: 1,
                          ),
                        )),
                    Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 48, vertical: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'View full set',
                                  style: TextStyle(color: Colors.white),
                                )),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Comming soon',
                                  style: TextStyle(
                                      color: Color.fromRGBO(81, 81, 81, 1)),
                                ))
                          ],
                        )),
                  ]),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
