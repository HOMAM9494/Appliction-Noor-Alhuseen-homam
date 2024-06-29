import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro/game/itemmodel.dart';
import 'package:pro/game/play.dart';
import 'package:pro/game/stares.dart';
import 'package:pro/game/test.dart';
import 'package:pro/homescreen.dart';
import 'package:pro/variables.dart';

class GroupGame extends StatefulWidget {
  late List<ItemModel> food;
  late int index;

  GroupGame(List<ItemModel> l, int index) {
    this.food = l;
    this.index = index;
  }

  @override
  State<GroupGame> createState() => _GroupGameState();
}

class _GroupGameState extends State<GroupGame> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  AudioPlayer audioPlayer = AudioPlayer();
  late AudioCache audioCache;
  String? auduo;
  late List<ItemModel> item = this.widget.food;
  late int globe = this.widget.index;

  String? number() {
    String b = item.first.name;
    switch (b) {
      case 'سكين':
        {
          auduo = 'A';
        }
        break;
      case 'شباك':
        {
          auduo = 'B';
        }
        break;
      case 'حصان':
        {
          auduo = 'C';
        }
        break;
      case 'بصل':
        {
          auduo = 'D';
        }
        break;
      case 'تمر':
        {
          auduo = 'E';
        }
        break;
      case 'لفة':
        {
          auduo = 'F';
        }
        break;
      case 'شاي':
        {
          auduo = 'G';
        }
        break;
      case 'قميص':
        {
          auduo = 'H';
        }
        break;
      case 'الشرطة':
        {
          auduo = 'I';
        }
        break;
      case 'عطر':
        {
          auduo = 'J';
        }
        break;
      case 'مليان':
        {
          auduo = 'K';
        }
        break;
      case 'يشرب':
        {
          auduo = 'L';
        }
        break;
      case 'جوا':
        {
          auduo = 'M';
        }
        break;
      case 'رأس':
        {
          auduo = 'N';
        }
        break;
      case 'ابيض':
        {
          auduo = 'O';
        }
        break;
      case 'مربع':
        {
          auduo = 'P';
        }
        break;
    }
    return auduo;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.widget.food;
    audioPlayer;
    number();
    item;
    globe;
  }

  @override
  Widget build(BuildContext context) {
    final isWideth = MediaQuery.of(context).size.width <= 600;

    String? spek = number();
    return Scaffold(
      key: scaffoldKey,
      persistentFooterAlignment: AlignmentDirectional.bottomStart,
      persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MaterialButton(
              color: Colors.blueAccent,
              textColor: Colors.white,
              onPressed: () {
                if (globe == 0) {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return HomeScreen();
                    }),
                  );
                } else {
                  setState(() {
                    globe -= 1;
                  });
                  Navigator.pop(context);
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return GroupGame(
                          pageNumber[globe] as List<ItemModel>, globe);
                    }),
                  );
                }
              },
              child: Text(
                'السابق',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
              ),
            ),
            MaterialButton(
              color: Colors.blueAccent,
              textColor: Colors.white,
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) {
                    return GamePlayer(item);
                  }),
                );
              },
              child: Text(
                'الأختبار',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
              ),
            ),
            MaterialButton(
              color: Colors.blueAccent,
              textColor: Colors.white,
              onPressed: () {
                if (globe == 15) {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return HomeScreen();
                    }),
                  );
                  setState(() {
                    globe = 0;
                  });
                } else {
                  setState(() {
                    globe += 1;
                  });
                  Navigator.pop(context);
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return GroupGame(
                          pageNumber[globe] as List<ItemModel>, globe);
                    }),
                  );
                }
              },
              child: Text(
                'التالي',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
              ),
            ),
          ],
        ),
      ],
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) {
                return HomeScreen();
              }),
            );
          },
          icon: Icon(Icons.home),
        ),
        title: Text(
          '${foodGro[globe]}',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return Stares();
                }),
              );
            },
            icon: const Icon(
              Icons.star,
              size: 30,
            ),
          ),
        ],
      ),
      body: isWideth
          ? CustomScrollView(
              primary: true,
              slivers: <Widget>[
                SliverPadding(
                  padding: const EdgeInsetsDirectional.all(2),
                  sliver: SliverGrid.count(
                    crossAxisSpacing: 5.h,
                    mainAxisSpacing: 5.h,
                    crossAxisCount: 3,
                    childAspectRatio: 0.6.h,
                    children: List.generate(item.length, (index) {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: GestureDetector(
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadiusDirectional.circular(25.r),
                                    color: Colors.blue,
                                  ),
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Image(
                                          image: AssetImage(
                                            item[index].img,
                                          ),
                                          width: double.maxFinite,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Text(
                                        item[index].name,
                                        style: pageFont,
                                      ),
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  int even = 0;
                                  int odd = 1;
                                  if (spek == "K" || spek == "M") {
                                    if (index % 2 == 0) {
                                      even = index;
                                      odd = even++;
                                    } else {
                                      odd = index;
                                      even = odd--;
                                    }
                                    scaffoldKey.currentState?.showBottomSheet(
                                      (context) => Container(
                                        width: double.infinity,
                                        padding:
                                            const EdgeInsetsDirectional.all(2),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Column(
                                              children: [
                                                GestureDetector(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadiusDirectional
                                                              .circular(25.r),
                                                      color: Colors.green,
                                                    ),
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    child: Image(
                                                      image: AssetImage(
                                                        item[even].img,
                                                      ),
                                                      fit: BoxFit.fill,
                                                      width: double.infinity,
                                                      height: 150.h,
                                                    ),
                                                  ),
                                                  onTap: () {
                                                    if (isIcon == true) {
                                                      playMusic(even);
                                                    } else {
                                                      disposeStop();
                                                    }
                                                  },
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    IconButton(
                                                      onPressed: () {
                                                        if (isIcon == true) {
                                                          playMusic(even);
                                                        } else {
                                                          disposeStop();
                                                        }
                                                      },
                                                      icon: Icon(
                                                        Icons
                                                            .stop_circle_rounded,
                                                        size: 50.r,
                                                      ),
                                                    ),
                                                    IconButton(
                                                      onPressed: () {
                                                        if (isIcon == true) {
                                                          playMusic(even);
                                                        } else {
                                                          disposeStop();
                                                        }
                                                      },
                                                      icon: Icon(
                                                        Icons.not_started,
                                                        size: 50.r,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Text(
                                                  item[even].name,
                                                  style: bottomSheetFont,
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                GestureDetector(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadiusDirectional
                                                              .circular(25.r),
                                                      color: Colors.green,
                                                    ),
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    child: Image(
                                                      image: AssetImage(
                                                        item[odd].img,
                                                      ),
                                                      fit: BoxFit.fill,
                                                      width: double.infinity,
                                                      height: 150.h,
                                                    ),
                                                  ),
                                                  onTap: () {
                                                    if (isIcon == true) {
                                                      playMusic(odd);
                                                    } else {
                                                      disposeStop();
                                                    }
                                                  },
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    IconButton(
                                                      onPressed: () {
                                                        if (isIcon == true) {
                                                          playMusic(odd);
                                                        } else {
                                                          disposeStop();
                                                        }
                                                      },
                                                      icon: Icon(
                                                        Icons
                                                            .stop_circle_rounded,
                                                        size: 50.r,
                                                      ),
                                                    ),
                                                    IconButton(
                                                      onPressed: () {
                                                        if (isIcon == true) {
                                                          playMusic(odd);
                                                        } else {
                                                          disposeStop();
                                                        }
                                                      },
                                                      icon: Icon(
                                                        Icons.not_started,
                                                        size: 50.r,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Text(
                                                  item[odd].name,
                                                  style: bottomSheetFont,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  } else {
                                    scaffoldKey.currentState?.showBottomSheet(
                                      (context) => Container(
                                        width: double.infinity,
                                        padding:
                                            const EdgeInsetsDirectional.all(2),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            GestureDetector(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadiusDirectional
                                                          .circular(30.r),
                                                  color: Colors.green,
                                                ),
                                                clipBehavior:
                                                    Clip.antiAliasWithSaveLayer,
                                                child: Image(
                                                  image: AssetImage(
                                                    item[index].img,
                                                  ),
                                                  fit: BoxFit.fill,
                                                  width: double.infinity,
                                                  height: 400.h,
                                                ),
                                              ),
                                              onTap: () {
                                                if (isIcon == true) {
                                                  playMusic(index);
                                                } else {
                                                  disposeStop();
                                                }
                                              },
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                if (spek == "C" || spek == "I")
                                                  IconButton(
                                                    onPressed: () {
                                                      if (isIcon == true) {
                                                        playSpeaker(
                                                            spek!, index);
                                                      } else {
                                                        disposeStop();
                                                      }
                                                    },
                                                    icon: Icon(
                                                      Icons.volume_up_sharp,
                                                      size: 75.r,
                                                    ),
                                                  )
                                                else
                                                  Text(""),
                                                IconButton(
                                                  onPressed: () {
                                                    if (isIcon == true) {
                                                      playMusic(index);
                                                    } else {
                                                      disposeStop();
                                                    }
                                                  },
                                                  icon: Icon(
                                                    Icons.stop_circle_rounded,
                                                    size: 75.r,
                                                  ),
                                                ),
                                                IconButton(
                                                  onPressed: () {
                                                    if (isIcon == true) {
                                                      playMusic(index);
                                                    } else {
                                                      disposeStop();
                                                    }
                                                  },
                                                  icon: Icon(
                                                    Icons.not_started,
                                                    size: 75.r,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              item[index].name,
                                              style: bottomSheetFont,
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  }
                                  if (isIcon == true) {
                                    playMusic(index);
                                  } else {
                                    disposeStop();
                                  }
                                }),
                          ),
                        ],
                      );
                    }),
                  ),
                ),
              ],
            )
          : CustomScrollView(
              primary: true,
              slivers: <Widget>[
                SliverPadding(
                  padding: const EdgeInsetsDirectional.all(2),
                  sliver: SliverGrid.count(
                    crossAxisSpacing: 5.h,
                    mainAxisSpacing: 5.h,
                    crossAxisCount: 5,
                    children: List.generate(item.length, (index) {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: GestureDetector(
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusDirectional.circular(25.r),
                                  color: Colors.blue,
                                ),
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Image(
                                        image: AssetImage(
                                          item[index].img,
                                        ),
                                        width: double.maxFinite,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      item[index].name,
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            onTap: (){
                                if (isIcon == true) {
                                  playMusic(index);
                                } else {
                                  disposeStop();
                                }
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) {
                                  return ElementPage(spek, item, index);
                                }),
                              );
                            },
                             
                            ),
                          ),
                        ],
                      );
                    }),
                  ),
                ),
              ],
            ),
    );
  }

  void playMusic(int s) async {
    // await audioPlayer.play(UrlSource(musicUrl)) ;
    await audioPlayer.play(AssetSource('$auduo/a$s.mp3'));
  }

  void playSpeaker(String t, int s) async {
    // await audioPlayer.play(UrlSource(musicUrl)) ;
    await audioPlayer.play(AssetSource('$t/$t$s.mp3'));
    print(AssetSource('$t/$t$s.mp3'));
  }

  void disposeStop() {
    audioPlayer.release();
  }
}
