import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro/game/itemmodel.dart';
import 'package:pro/variables.dart';

import 'game/group_b.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  IconData icon = Icons.volume_up;

  @override
  void initState() {
    super.initState();
    isIcon = true;
  }

  @override
  Widget build(BuildContext context) {
    final isWideth = MediaQuery.of(context).size.width <= 600;
    return Scaffold(
        appBar: isWideth
            ? AppBar(
                leadingWidth: 135.w,
                leading: Container(
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage("assets/unnamed.jpg"),
                        height: 40.w,
                      ),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              isIcon = !isIcon;
                            });
                          },
                          icon: isIcon
                              ? Icon(
                                  Icons.volume_up,
                                  size: 30.w,
                                )
                              : Icon(
                                  Icons.volume_off,
                                  size: 30.w,
                                )),
                    ],
                  ),
                ),
                title: Text(
                  'المجموعات',
                  style:
                      TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
                ),
                actions: [
                  Image(
                    image: AssetImage("assets/download.png"),
                    width: 75.w,
                  ),
                ],
              )
            : AppBar(
                leadingWidth: 135.w,
                leading: Container(
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage("assets/unnamed.jpg"),
                        height: 35.w,
                      ),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              isIcon = !isIcon;
                            });
                          },
                          icon: isIcon
                              ? Icon(
                                  Icons.volume_up,
                                  size: 20.w,
                                )
                              : Icon(
                                  Icons.volume_off,
                                  size: 20.w,
                                )),
                    ],
                  ),
                ),
                title: Text(
                  'المجموعات',
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                ),
                actions: [
                  Image(
                    image: AssetImage("assets/download.png"),
                    width: 75.w,
                  ),
                ],
              ),
        body: isWideth
            ? CustomScrollView(
                primary: true,
                clipBehavior: Clip.hardEdge,
                scrollDirection: Axis.horizontal,
                slivers: <Widget>[
                  SliverPadding(
                    padding: EdgeInsetsDirectional.all(2.r),
                    sliver: SliverGrid.count(
                      crossAxisSpacing: 5.h,
                      mainAxisSpacing: 5.h,
                      crossAxisCount: 2,
                      //1
                      childAspectRatio: 1.7.w,
                      //1.7
                      children: List.generate(
                        foodGro.length,
                        (index) {
                          return Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusDirectional.circular(
                                              25.r),
                                      color: Colors.lightBlue,
                                    ),
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Image(
                                            image: AssetImage(
                                              'assets/Group/g$index.png',
                                            ),
                                            width: double.maxFinite,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text(
                                          foodGro[index],
                                          style: TextStyle(
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            //GroupGame
                                            //   builder: (context) => Group0(pageNumber['$index'] as List<ItemModel>)));
                                            builder: (context) => GroupGame(
                                                pageNumber[index]
                                                    as List<ItemModel>,
                                                index)));
                                  },
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ],
              )
            : CustomScrollView(
                primary: true,
                clipBehavior: Clip.hardEdge,
                scrollDirection: Axis.horizontal,
                slivers: <Widget>[
                  SliverPadding(
                    padding: EdgeInsetsDirectional.all(2.r),
                    sliver: SliverGrid.count(
                      crossAxisSpacing: 10.h,
                      mainAxisSpacing: 10.h,
                      crossAxisCount: 2,
                      children: List.generate(
                        foodGro.length,
                        (index) {
                          return Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusDirectional.circular(
                                              25.r),
                                      color: Colors.lightBlue,
                                    ),
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Image(
                                            image: AssetImage(
                                              'assets/Group/g$index.png',
                                            ),
                                            width: double.maxFinite,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text(
                                          foodGro[index],
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            //GroupGame
                                            //   builder: (context) => Group0(pageNumber['$index'] as List<ItemModel>)));
                                            builder: (context) => GroupGame(
                                                pageNumber[index]
                                                    as List<ItemModel>,
                                                index)));
                                  },
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ));
  }
}
