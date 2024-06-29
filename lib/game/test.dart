import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:pro/game/itemmodel.dart';
import 'package:pro/variables.dart';


class ElementPage extends StatefulWidget {
  late String spek;
  late List<ItemModel> item;
  late int index;
   ElementPage(spek,food,index){
     this.spek=spek;
     this.item=food;
     this.index=index;
   }

  @override
  State<ElementPage> createState() => _ElementPageState();
}

class _ElementPageState extends State<ElementPage> {
  String? number() {
    String b = this.widget.item.first.name;
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
  AudioPlayer audioPlayer = AudioPlayer();
  late AudioCache audioCache;
  String? auduo;
  int even = 0;
  int odd = 1;
  int numbers( index){
    if (index % 2 == 0) {
      even = index;
      odd = even++;
    } else {
      odd = index;
      even = odd--;
    }
    return even;
  }
  @override
  void initState() {
    super.initState();
    this.widget.item;
    this.widget.index;
    this.widget.spek;
    audioPlayer;
    number();
    auduo;
    numbers(this.widget.index);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        body:
     (this.widget.spek == "K" || this.widget.spek == "M")?
     Container(
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
           Expanded(
             child: Column(
               children: [
                 Expanded(
                   child: GestureDetector(
                     child: Container(
                       decoration: BoxDecoration(
                         borderRadius:
                         BorderRadiusDirectional
                             .circular(25.r),
                       ),
                       clipBehavior: Clip
                           .antiAliasWithSaveLayer,
                       child: Image(
                         image: AssetImage(
                           this.widget.item[even].img,
                         ),
                         fit: BoxFit.fill,
                         width:  MediaQuery.of(context).size.width/2 ,
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
                         Icons.stop_circle_rounded,
                         size: 35.r,
                       ),
                     ),
                     Text(
                       this.widget.item[even].name,
                       style: TextStyle(
                         fontSize: 16.sp,
                         fontWeight: FontWeight.w400,
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
                         size: 35.r,
                       ),
                     ),
                   ],
                 ),

               ],
             ),
           ),
           Expanded(
             child: Column(
               children: [
                 Expanded(
                   child: GestureDetector(
                     child: Container(
                       decoration: BoxDecoration(
                         borderRadius:
                         BorderRadiusDirectional
                             .circular(20.r),
                       ),
                       clipBehavior: Clip
                           .antiAliasWithSaveLayer,
                       child: Image(
                         image: AssetImage(
                           this.widget.item[odd].img,
                         ),
                         fit: BoxFit.fill,
                           width:  MediaQuery.of(context).size.width/2,
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
                 ),
                 Row(
                   mainAxisAlignment:
                   MainAxisAlignment.center,
                   mainAxisSize: MainAxisSize.max,
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
                         Icons.stop_circle_rounded,
                         size: 35.r,
                       ),
                     ),
                     Text(
                       this.widget.item[odd].name,
                       style: TextStyle(
                         fontSize: 16.sp,
                         fontWeight: FontWeight.w400,
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
                         size: 35.r,
                       ),
                     ),
                   ],
                 ),

               ],
             ),
           ),
         ],
       ),
     ):
     Container(
       width:
       MediaQuery.of(context).size.width ,
       height:
       MediaQuery.of(context).size.height,
       padding:
       const EdgeInsetsDirectional.all(2),
       child: Expanded(
         child: Column(
           mainAxisAlignment:
           MainAxisAlignment.start,
           crossAxisAlignment:
           CrossAxisAlignment.center,
           mainAxisSize: MainAxisSize.max,
           children: [
             Expanded(
               child: GestureDetector(
                 child: Container(
                   decoration: BoxDecoration(
                     borderRadius:
                     BorderRadiusDirectional
                         .circular(30),
                   ),
                   clipBehavior:
                   Clip.antiAliasWithSaveLayer,
                   child: Image(
                     image: AssetImage(
                       this.widget.item[ this.widget.index].img,
                     ),
                     fit: BoxFit.fill,
                     width: MediaQuery.of(context)
                         .size
                         .width,
                     height: MediaQuery.of(context)
                         .size
                         .height

                   ),
                 ),
                 onTap: () {
                   if (isIcon == true) {
                     playMusic( this.widget.index);
                   } else {
                     disposeStop();
                   }
                 },
               ),
             ),
             Row(
               mainAxisAlignment:
               MainAxisAlignment.spaceAround,
               children: [
                 if (this.widget.spek == "C" || this.widget.spek == "I")
                   IconButton(
                     onPressed: () {
                       if (isIcon == true) {
                         playSpeaker(this.widget.spek,  this.widget.index);
                       } else {
                         disposeStop();
                       }
                     },
                     icon: Icon(
                       Icons.volume_up_sharp,
                       size: 50.r,
                     ),
                   )
                 else
                   IconButton(
                     onPressed: () {
                       disposeStop();
                     },
                     icon: Icon(
                       Icons.stop_circle_rounded,
                       size: 50.r,
                     ),
                   ),
                 IconButton(
                   onPressed: () {
                     if (isIcon == true) {
                       playMusic( this.widget.index);
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
               this.widget.item[ this.widget.index].name,
               style: TextStyle(
                 fontSize: 32.sp,
                 fontWeight: FontWeight.w900,
               ),
             ),
           ],
         ),
       ),
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
