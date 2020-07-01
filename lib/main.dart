
import 'dart:async';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_web/flutter_native_web.dart';
import 'dart:math';
import 'package:admob_flutter/admob_flutter.dart';
import 'unitID.dart';
import 'package:url_launcher/url_launcher.dart';




void main() {
  final admob = unitID();
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize without device test ids
  Admob.initialize(admob.getAppID());
  runApp(MyApp());
}




class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),

      home: Start(),

      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return CupertinoPageRoute(
                builder: (_) => HomePage(), settings: settings);
          case 'deeper':
            return CupertinoPageRoute(
                builder: (_) => DeeperPage(null), settings: settings);
        }
      },

    );


  }
}
class first extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: ScrollPhysics(parent: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics())),
      child: CupertinoPageScaffold(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            Text('Cupertino iOS widgets',style: TextStyle(color: CupertinoColors.black,
              fontSize: 33.0,
              fontWeight: FontWeight.w300,

            ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(

                  height: 100.0,
                  width: 100.0,
                  image: AssetImage('assets/ioslogo.png'),
                ),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Content :',style: TextStyle(color: CupertinoColors.activeBlue,
                  fontSize: 21.0,
                  fontWeight: FontWeight.w300,

                ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 20.0,left: 10.0,right: 10.0),
              child: CupertinoButton.filled(

                child: Text('1. iOS Activity Indicator'),
                onPressed: ()=> Navigator.push(context, CupertinoPageRoute(builder: (context)=> activityIndicator())),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 20.0,left: 10.0,right: 10.0),
              child: CupertinoButton.filled(

                child: Text('2. iOS Alert Dialogs'),
                onPressed: ()=> Navigator.push(context, CupertinoPageRoute(builder: (context)=> AlertDialogs())),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 20.0,left: 10.0,right: 10.0),
              child: CupertinoButton.filled(

                child: Text('3. iOS Action Sheet'),
                onPressed: ()=> Navigator.push(context, CupertinoPageRoute(builder: (context)=> ActionSheet())),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 20.0,left: 10.0,right: 10.0),
              child: CupertinoButton.filled(

                child: Text('4. iOS Style Buttons'),
                onPressed: ()=> Navigator.push(context, CupertinoPageRoute(builder: (context)=> Buttons())),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 20.0,left: 10.0,right: 10.0),
              child: CupertinoButton.filled(

                child: Text('5. iOS Context Menu'),
                onPressed: ()=> Navigator.push(context, CupertinoPageRoute(builder: (context)=> ContextMenu())),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 20.0,left: 10.0,right: 10.0),
              child: CupertinoButton.filled(

                child: Text('6. iOS Dialogs'),
                onPressed: ()=> Navigator.push(context, CupertinoPageRoute(builder: (context)=> Dialogs())),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 20.0,left: 10.0,right: 10.0),
              child: CupertinoButton.filled(

                child: Text('7. iOS basic UI'),
                onPressed: ()=> Navigator.push(context, CupertinoPageRoute(builder: (context)=> cupertinoBasics())),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 20.0,left: 10.0,right: 10.0),
              child: CupertinoButton.filled(

                child: Text('8. iOS Pickers'),
                onPressed: ()=> Navigator.push(context, CupertinoPageRoute(builder: (context)=> Pickers())),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 20.0,left: 10.0,right: 10.0),
              child: CupertinoButton.filled(

                child: Text('9. iOS Tab Bar UI'),
                onPressed: ()=> Navigator.push(context, CupertinoPageRoute(builder: (context)=> cupertinoTabBar())),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 20.0,left: 10.0,right: 10.0),
              child: CupertinoButton.filled(

                child: Text('10. iOS 13 style segment '),
                onPressed: ()=> Navigator.push(context, CupertinoPageRoute(builder: (context)=> SlidingSegment())),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 20.0,left: 10.0,right: 10.0),
              child: CupertinoButton.filled(

                child: Text('11. iOS style slider'),
                onPressed: ()=> Navigator.push(context, CupertinoPageRoute(builder: (context)=> cupertinoSlider())),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 20.0,left: 10.0,right: 10.0),
              child: CupertinoButton.filled(

                child: Text('12. iOS style switch'),
                onPressed: ()=> Navigator.push(context, CupertinoPageRoute(builder: (context)=> cupertinoSwitch())),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 20.0,left: 10.0,right: 10.0),
              child: CupertinoButton.filled(

                child: Text('13. iOS style TextFields'),
                onPressed: ()=> Navigator.push(context, CupertinoPageRoute(builder: (context)=> cupertinoTextField())),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 20.0,left: 10.0,right: 10.0),
              child: CupertinoButton.filled(

                child: Text('14. iOS style Web Browser'),
                onPressed: ()=> Navigator.push(context, CupertinoPageRoute(builder: (context)=> HomePage())),
              ),
            ),

          ],
        ),
      ),
    );
  }

}
class Start extends StatefulWidget
{
  final String title ;
  Start({this.title});
  @override
  _StartState createState() => _StartState();

}
class _StartState extends State<Start>{
  int groupvalue =0;
  final Map<int,Widget> tabs = const<int,Widget>
  {
    0:  Text('Widgets'),
    1:  Text('Code'),
    2:  Text('About'),
  };
  List<Widget> tabPages = [
    customPage(),
    Code(),
    About(),
  ];
  Future<bool> _onWillPop() async {
    return (await showCupertinoDialog(

        context: context,
        builder: (_) => new CupertinoAlertDialog(
          title: new Text('Are you sure?'),
          content: new Text('Do you want to exit an App'),
          actions: <Widget>[
            CupertinoDialogAction(
              isDefaultAction: true,
              child: Text("Yes"),
              onPressed: ()=>Navigator.of(context).pop(true),
            ),
            CupertinoDialogAction(
              child: Text("No",style: TextStyle(color: CupertinoColors.destructiveRed),),
              onPressed: ()=>Navigator.of(context).pop(false),
            )
          ],
        ))) ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        body:
        Container(

          height: double.infinity,
          width: double.infinity,
          child: tabPages[groupvalue],
        ),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(249, 249, 249, 1),
          elevation: 2.0,
          centerTitle: true,
          title: Text('Home',style: TextStyle(color: Colors.black),),
          bottom: PreferredSize(
            preferredSize: Size(double.infinity,45.0),
            child: Padding(
              padding: EdgeInsets.only(top: 5.0,bottom: 10.0),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    child: CupertinoSegmentedControl(
                      groupValue: groupvalue,
                      onValueChanged: (changefromGroupValue){
                        setState(() {
                          groupvalue = changefromGroupValue;
                        });
                      },
                      children: tabs,
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );

  }

}


class HomePage extends StatelessWidget {
  String url ;
  final admob = unitID();
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(new FocusNode()),
      child:   Stack(

        fit: StackFit.expand,

        children: <Widget>[

          CupertinoPageScaffold(

            navigationBar: buildNavigationBar(context),

            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                SafeArea(child: flutterNativeWeb(context)),

              ],
            ),

          ),

          Align(



            alignment: Alignment.bottomCenter,

            child: ClipRect(

              child: SizedBox(

                height: 100.0,

                child: BackdropFilter(

                  filter: ImageFilter.blur(sigmaX: 10.0,sigmaY: 10.0),

                  child: Container(

                    color: CupertinoColors.systemGrey5.withOpacity(0.4),

                    width: double.infinity,

                    child: Column(
                      children: <Widget>[
                        AdmobBanner(
                          adSize: AdmobBannerSize.BANNER,
                          adUnitId: "ca-app-pub-9117934871004866/6596451603",
                        ),
                        Row(



                          children: <Widget>[



                            Expanded(



                              child: CupertinoButton(child: Icon(CupertinoIcons.home,size: 30.0,),



                                onPressed: () => Navigator.of(context).pop(),

                                padding: EdgeInsets.all(10),

                              ),

                            ),

//                         Expanded(
//
//                           child: CupertinoButton(child: Icon(CupertinoIcons.back,size: 30.0),
//
//                               onPressed: () {
//
//                               },
//
//                               padding: EdgeInsets.all(10),
//
//                           ),
//
//                         ),

                            Expanded(

                              child: CupertinoButton(child: Icon(CupertinoIcons.add_circled,size: 30.0),

                                onPressed: () => Navigator.push(context, CupertinoPageRoute(builder: (context) => HomePage())),

                                padding: EdgeInsets.all(10),

                              ),

                            ),

//                         Expanded(
//
//                           child: CupertinoButton(child: Icon(CupertinoIcons.forward,size: 30.0),
//
//                               onPressed: () {},
//
//                             padding: EdgeInsets.all(10),
//
//                           ),
//
//                         ),

                            Expanded(

                              child: CupertinoButton(child: Icon(CupertinoIcons.gear,size: 30.0),

                                onPressed: () {},

                                padding: EdgeInsets.all(10),

                              ),

                            ),



                          ],



                        ),
                      ],
                    ),

                  ),

                ),

              ),

            ),

          ),



        ],

      ),
    );
  }
  FlutterNativeWeb flutterNativeWeb(BuildContext context)
  {
    return FlutterNativeWeb(
      onWebCreated: onWebCreated,
    );
  }
  void onWebCreated(webController) {
    webController = webController;
    webController.loadUrl("https://www.google.com");
    webController.onPageStarted.listen((url) =>
        print("Loading $url")
    );
    webController.onPageFinished.listen((url) =>
        print("Finished loading $url")
    );
  }

  final myController = TextEditingController();

  CupertinoNavigationBar buildNavigationBar(BuildContext context) {
    return CupertinoNavigationBar(

      trailing:
      CupertinoButton(
        child: Text('Search', style: TextStyle(color: CupertinoColors.activeBlue)),
        onPressed: () {FocusScope.of(context).requestFocus(new FocusNode());
        url = myController.text;
        Navigator.push(context, MaterialPageRoute(builder: (context) => DeeperPage("https://www.google.com/#q="+url)));
        },
        padding: EdgeInsets.fromLTRB(10.0, 1.0, 0.0, 1.0),
      ),
      middle: CupertinoTextField(
        clearButtonMode: OverlayVisibilityMode.editing,
        enableInteractiveSelection: true,
        controller: myController,
        placeholder: "Enter url or Search",
      ),


    );
  }




}

class DeeperPage extends StatelessWidget {
  String url;
  DeeperPage(this.url);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(new FocusNode()),
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          CupertinoPageScaffold(
            navigationBar: buildNavigationBar(context),
            child: flutterNativeWeb(context),
          ),
          Align(

            alignment: Alignment.bottomCenter,
            child: ClipRect(
              child: SizedBox(
                height: 50.0,
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0),
                  child: Container(
                    color: CupertinoColors.systemGrey5.withOpacity(0.7),
                    width: double.infinity,
                    child: Row(

                      children: <Widget>[

                        Expanded(

                          child: CupertinoButton(child: Icon(CupertinoIcons.home,size: 30.0,),

                            onPressed: () {},
                            padding: EdgeInsets.all(10),
                          ),
                        ),
                        Expanded(
                          child: CupertinoButton(child: Icon(CupertinoIcons.back,size: 30.0),
                            onPressed: () {},
                            padding: EdgeInsets.all(10),
                          ),
                        ),
                        Expanded(
                          child: CupertinoButton(child: Icon(CupertinoIcons.add_circled,size: 30.0),
                            onPressed: () => Navigator.pushNamed(context, 'deeper'),
                            padding: EdgeInsets.all(10),
                          ),
                        ),
                        Expanded(
                          child: CupertinoButton(child: Icon(CupertinoIcons.forward,size: 30.0),
                            onPressed: () {},
                            padding: EdgeInsets.all(10),
                          ),
                        ),
                        Expanded(
                          child: CupertinoButton(child: Icon(CupertinoIcons.gear,size: 30.0),
                            onPressed: () {},
                            padding: EdgeInsets.all(10),
                          ),
                        ),

                      ],

                    ),
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
  CupertinoNavigationBar buildNavigationBar(BuildContext context) {
    return CupertinoNavigationBar(

      trailing: CupertinoButton(
        child: Text('Search', style: TextStyle(color: CupertinoColors.activeBlue)),
        onPressed: () {FocusScope.of(context).requestFocus(new FocusNode());},
        padding: EdgeInsets.all(5.0),
      ),
      middle: CupertinoTextField(
        clearButtonMode: OverlayVisibilityMode.editing,
        placeholder: 'Enter url or Search',
      ),
    );
  }
  FlutterNativeWeb flutterNativeWeb(BuildContext context)
  {
    return FlutterNativeWeb(
      onWebCreated: onWebCreated,
    );
  }
  void onWebCreated(webController) {
    webController = webController;
    webController.loadUrl(url);
    webController.onPageStarted.listen((url) =>
        print("Loading $url")
    );
    webController.onPageFinished.listen((url) =>
        print("Finished loading $url")
    );
  }
}

//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return CupertinoApp(
//      theme: CupertinoThemeData(
//          barBackgroundColor: CupertinoColors.extraLightBackgroundGray,
//          primaryColor: CupertinoColors.activeBlue),
//      home: MyHomePage(
//        title: "Ios",
//      ),
//    );
//  }
//}
//  class MyHomePage extends StatefulWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);
//
//  final String title;
//
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
//  }
//
//  class _MyHomePageState extends State<MyHomePage> {
//    int currentTabIndex = 0;
//
//    onTapped(int index) {
//      setState(() {
//        currentTabIndex = index;
//      });
//    }
//
////    List<Widget> tabs = [
////      FirstPage(),
////      SecondPage(),
////      ThirdPage(),
////    ];
//
//    @override
//    Widget build(BuildContext context) {
//      return CupertinoTabScaffold(
//          tabBar: CupertinoTabBar(items: [
//            BottomNavigationBarItem(
//                icon: Icon(CupertinoIcons.home), title: Text("Home")),
//            BottomNavigationBarItem(
//                icon: Icon(CupertinoIcons.back), title: Text("Back")),
//            BottomNavigationBarItem(
//                icon: Icon(CupertinoIcons.add_circled), title: Text("New Tab")),
//            BottomNavigationBarItem(
//                icon: Icon(CupertinoIcons.forward), title: Text("Proceed")),
//            BottomNavigationBarItem(
//                icon: Icon(CupertinoIcons.gear), title: Text("Settings")),
//
//          ],
//          ),
//
//          tabBuilder: (context, index) {
//
//            switch (index) {
//              case 0:
//                return newTab();
//                break;
//              case 1:
//                return newTab();
//                break;
//              case 2:
//                  return ;
//                break;
//              case 3:
//                return newTab();
//                break;
//              default:
//                return newTab();
//                break;
//            }
//          },
//
//
//      );
//
//    }
//  }
//
//  class FirstPage extends StatelessWidget
//  {
//   static List<String> data = ['Page 0'];
//    int initPosition = 1;
//    @override
//    Widget build(BuildContext context) {
//      return CupertinoPageScaffold(
//        navigationBar: buildNavigationBar(context),
//        child: SafeArea(
//          child: Text('hello'),
//        ),
//
//      );
//
//    }
//
//    CupertinoNavigationBar buildNavigationBar(BuildContext context) {
//      return CupertinoNavigationBar(
//          trailing: CupertinoButton(
//            child: Text('Save', style: TextStyle(color: CupertinoColors.activeBlue)),
//            onPressed: () {},
//            padding: EdgeInsets.all(10.0),
//          ));
//    }
//  }
//class SecondPage extends StatelessWidget
//{
//  @override
//  Widget build(BuildContext context) {
//    return CupertinoPageScaffold(
//      navigationBar: buildNavigationBar(context),
//      child: Column(
//        children: <Widget>[
//          Text('Page 2'),
//
//        ],
//      ),
//    );
//  }
//
//  CupertinoNavigationBar buildNavigationBar(BuildContext context) {
//    return CupertinoNavigationBar(
//        trailing: CupertinoButton(
//          child: Text('Save', style: TextStyle(color: CupertinoColors.activeBlue)),
//          onPressed: () => {},
//        ));
//  }
//}
//class ThirdPage extends StatelessWidget
//{
//
//  @override
//  Widget build(BuildContext context) {
//    return CupertinoPageScaffold(
//      navigationBar: buildNavigationBar(context),
//      child: Column(
//        children: <Widget>[
//          Text('Page 3'),
//        ],
//      ),
//    );
//  }
//
//  CupertinoNavigationBar buildNavigationBar(BuildContext context) {
//    return CupertinoNavigationBar(
//        trailing: CupertinoButton(
//          child: Text('Save', style: TextStyle(color: CupertinoColors.activeBlue)),
//          onPressed: () => {},
//        ));
//  }
//}
class newTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: RaisedButton(
        child: Text('click me'),
        onPressed:() =>Navigator.pushNamed(context, 'deeper'),
      ),

    );
  }
}
class activityIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Activity Indicator'),

      ),
      child: const Center(
          child: CupertinoActivityIndicator()),
    );
  }
}
class AlertDialogs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Material(
      type: MaterialType.transparency,
      child: Stack(

        children: <Widget>[
          CupertinoPageScaffold(


            navigationBar: CupertinoNavigationBar(
              middle: Text('iOS Alert Dialogs'),

            ),
            child: Container(
              decoration: new BoxDecoration(

                image: new DecorationImage(
                  image: new AssetImage("assets/1.jpg"
                      ""),
                  fit: BoxFit.fill,
                ),
              ),
              child: Center(

                child: ClipRRect(
                  borderRadius:  BorderRadius.circular(20.0),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaY: 10.0,sigmaX: 10.0),
                    child: SingleChildScrollView(
                      physics: ScrollPhysics(parent: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics())),
                      child: Container(
                        height: 160.0,
                        width: 250.0,
                        decoration: new BoxDecoration(
                          color: CupertinoColors.systemGrey4.withOpacity(0.4),

                        ),


                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            CupertinoButton(
                                child: Text('1. Simple iOS Dialog'),
                                onPressed: ()=> showCupertinoDialog(

                                    context: context,
                                    builder: (_) => new CupertinoAlertDialog(
                                      title: new Text("Dialog Title"),

                                      actions: <Widget>[
                                        CupertinoDialogAction(
                                          isDefaultAction: true,
                                          child: Text("Yes"),
                                          onPressed: ()=>Navigator.of(context).pop(),
                                        ),
                                        CupertinoDialogAction(
                                          child: Text("No",style: TextStyle(color: CupertinoColors.destructiveRed),),
                                          onPressed: ()=>Navigator.of(context).pop(),
                                        )
                                      ],
                                    ))

                            ),
                            CupertinoButton(
                                child: Text('2. iOS Dialog with content'),
                                onPressed: ()=>  showCupertinoDialog(

                                    context: context,
                                    builder: (_) => new CupertinoAlertDialog(
                                      title: new Text("Dialog Title"),
                                      content: new Text('This is your content , write your message whatever you want to convey to user'),
                                      actions: <Widget>[
                                        CupertinoDialogAction(
                                          isDefaultAction: true,
                                          child: Text("Yes"),
                                          onPressed: ()=>Navigator.of(context).pop(),
                                        ),
                                        CupertinoDialogAction(
                                          child: Text("No",style: TextStyle(color: CupertinoColors.destructiveRed),),
                                          onPressed: ()=>Navigator.of(context).pop(),
                                        )
                                      ],
                                    ))

                            ),
                            CupertinoButton(
                                child: Text('3. iOS Dialog with only buttons'),
                                onPressed: ()=>  showCupertinoDialog(

                                    context: context,
                                    builder: (_) => new CupertinoAlertDialog(

                                      actions: <Widget>[

                                        CupertinoDialogAction(

                                          child: Text("Apple iPhone X"),
                                          onPressed: ()=>Navigator.of(context).pop(),
                                        ),
                                        CupertinoDialogAction(

                                          child: Text("Apple iPhone XR"),
                                          onPressed: ()=>Navigator.of(context).pop(),
                                        ),
                                        CupertinoDialogAction(

                                          child: Text("Apple iPhone XS"),
                                          onPressed: ()=>Navigator.of(context).pop(),
                                        ),
                                        CupertinoDialogAction(

                                          child: Text("Apple iPhone 11"),
                                          onPressed: ()=>Navigator.of(context).pop(),
                                        ),
                                        CupertinoDialogAction(

                                          child: Text("Apple iPhone 11 pro"),
                                          onPressed: ()=>Navigator.of(context).pop(),
                                        ),
                                        CupertinoDialogAction(
                                          child: Text("Cancel",style: TextStyle(color: CupertinoColors.destructiveRed),),
                                          onPressed: ()=>Navigator.of(context).pop(),
                                        ),

                                      ],
                                    ))

                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),


          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipRect(
              child: SizedBox(
                height: 60.0,

                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0,sigmaY: 10.0),
                  child: Container(
                    width: double.infinity,
                    color: CupertinoColors.systemGrey.withOpacity(0.2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CupertinoButton(
                          child: Text('Designed Using:',style: TextStyle(color: CupertinoColors.black,fontWeight: FontWeight.w100),),
                        ),
                        Image(
                            height: 20.0,
                            width: 20.0,
                            image: AssetImage('assets/flutterlogo.png')
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
class ActionSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Stack(

      children: <Widget>[
        CupertinoPageScaffold(

          navigationBar: CupertinoNavigationBar(
            middle: Text('iOS ActionSheets'),

          ),
          child: Container(
            decoration: new BoxDecoration(

              image: new DecorationImage(
                image: new AssetImage("assets/2.jpg"
                    ""),
                fit: BoxFit.fill,
              ),
            ),
            child: Center(
              child: ClipRRect(
                borderRadius:  BorderRadius.circular(20.0),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaY: 10.0,sigmaX: 10.0),
                  child: SingleChildScrollView(
                    physics: ScrollPhysics(parent: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics())),
                    child: Container(
                      height: 180.0,
                      width: 270.0,
                      decoration: new BoxDecoration(
                        color: CupertinoColors.systemGrey.withOpacity(0.2),

                      ),


                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          CupertinoButton(
                              child: Text('1. Simple iOS ActionSheet'),
                              onPressed: ()=>  showCupertinoModalPopup(
                                context: context,
                                builder: (BuildContext context) => CupertinoActionSheet(

                                    title: Text('iOS basic ActionSheet'),
                                    cancelButton: CupertinoActionSheetAction(
                                      child: const Text('Cancel',style: TextStyle(color: CupertinoColors.destructiveRed),),
                                      isDefaultAction: true,
                                      onPressed: () {
                                        Navigator.pop(context, 'Cancel');
                                      },
                                    )),
                              )

                          ),
                          CupertinoButton(
                              child: Text('2. iOS ActionSheet with message'),
                              onPressed: ()=>  showCupertinoModalPopup(
                                context: context,
                                builder: (BuildContext context) => CupertinoActionSheet(
                                    title: const Text('This is your title'),
                                    message: const Text('This is the content of the message to be conveyed to the user'),
                                    actions: <Widget>[
                                      CupertinoActionSheetAction(
                                        child: const Text('Apple iPhone X'),
                                        onPressed: () {
                                          Navigator.pop(context, 'Apple iPhone X');
                                        },
                                      ),
                                      CupertinoActionSheetAction(
                                        child: const Text('Apple iPhone XR'),
                                        onPressed: () {
                                          Navigator.pop(context, 'Apple iPhone XR');
                                        },
                                      ),
                                      CupertinoActionSheetAction(
                                        child: const Text('Apple iPhone XS'),
                                        onPressed: () {
                                          Navigator.pop(context, 'Apple iPhone XS');
                                        },
                                      ),
                                      CupertinoActionSheetAction(
                                        child: const Text('Apple iPhone 11'),
                                        onPressed: () {
                                          Navigator.pop(context, 'Apple iPhone 11');
                                        },
                                      ),
                                      CupertinoActionSheetAction(
                                        child: const Text('Apple iPhone 11 pro'),
                                        onPressed: () {
                                          Navigator.pop(context, 'Apple iPhone 11 pro');
                                        },
                                      )
                                    ],
                                    cancelButton: CupertinoActionSheetAction(
                                      child: const Text('Cancel',style: TextStyle(color: CupertinoColors.destructiveRed),),
                                      isDefaultAction: true,
                                      onPressed: () {
                                        Navigator.pop(context, 'Cancel');
                                      },
                                    )),
                              )

                          ),
                          CupertinoButton(
                              child: Text('3. iOS Action Sheet with only buttons'),
                              onPressed: ()=>  showCupertinoModalPopup(
                                context: context,
                                builder: (BuildContext context) => CupertinoActionSheet(

                                    actions: <Widget>[
                                      CupertinoActionSheetAction(
                                        child: const Text('Apple iPhone X'),
                                        onPressed: () {
                                          Navigator.pop(context, 'Apple iPhone X');
                                        },
                                      ),
                                      CupertinoActionSheetAction(
                                        child: const Text('Apple iPhone XR'),
                                        onPressed: () {
                                          Navigator.pop(context, 'Apple iPhone XR');
                                        },
                                      ),
                                      CupertinoActionSheetAction(
                                        child: const Text('Apple iPhone XS'),
                                        onPressed: () {
                                          Navigator.pop(context, 'Apple iPhone XS');
                                        },
                                      ),
                                      CupertinoActionSheetAction(
                                        child: const Text('Apple iPhone 11'),
                                        onPressed: () {
                                          Navigator.pop(context, 'Apple iPhone 11');
                                        },
                                      ),
                                      CupertinoActionSheetAction(
                                        child: const Text('Apple iPhone 11 pro'),
                                        onPressed: () {
                                          Navigator.pop(context, 'Apple iPhone 11 pro');
                                        },
                                      )
                                    ],
                                    cancelButton: CupertinoActionSheetAction(
                                      child: const Text('Cancel',style: TextStyle(color: CupertinoColors.destructiveRed),),
                                      isDefaultAction: true,
                                      onPressed: () {
                                        Navigator.pop(context, 'Cancel');
                                      },
                                    )),
                              )

                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),


        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: ClipRect(
            child: SizedBox(
              height: 60.0,

              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0,sigmaY: 10.0),
                child: Container(
                  width: double.infinity,
                  color: CupertinoColors.systemGrey.withOpacity(0.2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CupertinoButton(
                        child: Text('Designed Using:',style: TextStyle(color: CupertinoColors.black,fontWeight: FontWeight.w100),),
                      ),
                      Image(
                          height: 20.0,
                          width: 20.0,
                          image: AssetImage('assets/flutterlogo.png')
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Stack(

      children: <Widget>[
        CupertinoPageScaffold(

          navigationBar: CupertinoNavigationBar(
            middle: Text('iOS Buttons'),

          ),
          child: Container(
            decoration: new BoxDecoration(

              image: new DecorationImage(
                image: new AssetImage("assets/5.jpg"
                    ""),
                fit: BoxFit.fill,
              ),
            ),
            child: Center(
              child: ClipRRect(
                borderRadius:  BorderRadius.circular(20.0),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaY: 10.0,sigmaX: 10.0),
                  child: SingleChildScrollView(
                    physics: ScrollPhysics(parent: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics())),
                    child: Container(
                      height: 340.0,
                      width: 300.0,
                      decoration: new BoxDecoration(
                        color: Colors.transparent,

                      ),


                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          CupertinoButton(child: Text('iOS button without background:',style: TextStyle(color: CupertinoColors.black,fontWeight: FontWeight.w100))),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              CupertinoButton(
                                  child: Text('1. Button'),
                                  onPressed: (){}

                              ),
                            ],
                          ),
                          CupertinoButton(child: Text('iOS button with filled background',style: TextStyle(color: CupertinoColors.black,fontWeight: FontWeight.w100))),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[CupertinoButton.filled(
                                  child: Text('2. Button'),
                                  onPressed: (){}

                              ),
                              ]
                          ),
                          CupertinoButton(child: Text('iOS icon button',style: TextStyle(color: CupertinoColors.black,fontWeight: FontWeight.w100))),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[CupertinoButton(
                                child: Icon(CupertinoIcons.home,size: 35.0,),

                                onPressed: (){}

                            ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),


        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: ClipRect(
            child: SizedBox(
              height: 60.0,

              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0,sigmaY: 10.0),
                child: Container(
                  width: double.infinity,
                  color: CupertinoColors.systemGrey.withOpacity(0.2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CupertinoButton(
                        child: Text('Designed Using:',style: TextStyle(color: CupertinoColors.black,fontWeight: FontWeight.w100),),
                      ),
                      Image(
                          height: 20.0,
                          width: 20.0,
                          image: AssetImage('assets/flutterlogo.png')
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class ContextMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Stack(

      children: <Widget>[
        CupertinoPageScaffold(

          navigationBar: CupertinoNavigationBar(
            middle: Text('iOS Context Menu'),

          ),
          child: Container(
            decoration: new BoxDecoration(

              image: new DecorationImage(
                image: new AssetImage("assets/7.jpg"
                    ""),
                fit: BoxFit.fill,
              ),
            ),
            child: Center(
              child: ClipRRect(
                borderRadius:  BorderRadius.circular(20.0),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaY: 10.0,sigmaX: 10.0),
                  child: SingleChildScrollView(
                    physics: ScrollPhysics(parent: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics())),
                    child: Container(
                      height: 150.0,
                      width: 200.0,
                      decoration: new BoxDecoration(
                        color: Colors.transparent,

                      ),


                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              CupertinoButton(child: Text('Long press the area',style: TextStyle(color: CupertinoColors.black,fontWeight: FontWeight.w300))),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                decoration: new BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0)

                                ),
                                width: 100,
                                height: 50,
                                child: CupertinoContextMenu(
                                  child: Container(
                                    decoration: new BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: CupertinoColors.activeBlue,

                                    ),

                                  ),
                                  actions: <Widget>[
                                    CupertinoContextMenuAction(
                                      child: const Text('Item 1'),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                    CupertinoContextMenuAction(
                                      child: const Text('Item 2'),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                    CupertinoContextMenuAction(
                                      child: const Text('Item 3'),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),


        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: ClipRect(
            child: SizedBox(
              height: 60.0,

              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0,sigmaY: 10.0),
                child: Container(
                  width: double.infinity,
                  color: CupertinoColors.systemGrey.withOpacity(0.2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CupertinoButton(
                        child: Text('Designed Using:',style: TextStyle(color: CupertinoColors.black,fontWeight: FontWeight.w100),),
                      ),
                      Image(
                          height: 20.0,
                          width: 20.0,
                          image: AssetImage('assets/flutterlogo.png')
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class Dialogs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Stack(

      children: <Widget>[
        CupertinoPageScaffold(

          navigationBar: CupertinoNavigationBar(
            middle: Text('iOS Dialogs'),

          ),
          child: Container(
            decoration: new BoxDecoration(

              image: new DecorationImage(
                image: new AssetImage("assets/8.jpg"
                    ""),
                fit: BoxFit.fill,
              ),
            ),
            child: Center(

              child: ClipRRect(
                borderRadius:  BorderRadius.circular(20.0),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaY: 10.0,sigmaX: 10.0),
                  child: SingleChildScrollView(
                    physics: ScrollPhysics(parent: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics())),
                    child: Container(
                      height: 110.0,
                      width: 250.0,
                      decoration: new BoxDecoration(
                        color: CupertinoColors.systemGrey4.withOpacity(0.4),

                      ),


                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          CupertinoButton(
                              child: Text('1. Simple iOS Dialog'),
                              onPressed: ()=> showCupertinoDialog(

                                  context: context,
                                  builder: (_) => new CupertinoAlertDialog(
                                    title: new Text("Dialog Title"),
                                    content: new Text('This is the message  you want to convey to user'),


                                  ))

                          ),
                          CupertinoButton(
                              child: Text('2. iOS full screen dialog'),
                              onPressed: (){
                                Navigator.of(context).push(PageRouteBuilder(
                                    opaque: false,
                                    pageBuilder: (BuildContext context, _, __) =>
                                        RedeemConfirmationScreen()));
                              }

                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),


        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: ClipRect(
            child: SizedBox(
              height: 60.0,

              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0,sigmaY: 10.0),
                child: Container(
                  width: double.infinity,
                  color: CupertinoColors.systemGrey.withOpacity(0.2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CupertinoButton(
                        child: Text('Designed Using:',style: TextStyle(color: CupertinoColors.systemGrey6,fontWeight: FontWeight.w100),),
                      ),
                      Image(
                          height: 20.0,
                          width: 20.0,
                          image: AssetImage('assets/flutterlogo.png')
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class RedeemConfirmationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaY: 10.0,sigmaX: 10.0),
          child: Container(
            child: Column(

              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    CupertinoButton(child: Icon(Icons.close,color: CupertinoColors.destructiveRed,),onPressed: ()=>Navigator.of(context).pop(),),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    CupertinoButton(child: Text('Title of the dialog',style: TextStyle(color: CupertinoColors.black,fontWeight: FontWeight.w400,fontSize: 20.0),),),
                    CupertinoButton(child: Text('This is the content of this full screen dialog',style: TextStyle(color: CupertinoColors.systemGrey),),),

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class cupertinoBasics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('This is iOS navigaion bar'),
      ),
      child: Container(
        child: Center(
          child: CupertinoButton(child: Text('Hello World !'),),
        ),
      ),
    );
  }
}
class Pickers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Stack(

      children: <Widget>[
        CupertinoPageScaffold(

          navigationBar: CupertinoNavigationBar(
            middle: Text('iOS Pickers'),

          ),
          child: Container(
            decoration: new BoxDecoration(

              image: new DecorationImage(
                image: new AssetImage("assets/9.jpg"
                    ""),
                fit: BoxFit.fill,
              ),
            ),
            child: Center(

              child: ClipRRect(
                borderRadius:  BorderRadius.circular(20.0),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaY: 10.0,sigmaX: 10.0),
                  child: SingleChildScrollView(
                    physics: ScrollPhysics(parent: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics())),
                    child: Container(
                      height: 120.0,
                      width: 180.0,
                      decoration: new BoxDecoration(
                        color: CupertinoColors.systemGrey4.withOpacity(0.4),

                      ),


                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          CupertinoButton(
                              child: Text('1. Simple iOS Picker'),
                              onPressed: ()=>  showModalBottomSheet(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return CupertinoPicker(
                                      backgroundColor: Colors.white,
                                      onSelectedItemChanged: (value) {

                                      },
                                      itemExtent: 32.0,
                                      children: const [
                                        Text('iphone 6'),
                                        Text('iPhone 6s'),
                                        Text('iPhone 7'),
                                        Text('iPhone 8'),
                                        Text('iPhone X'),
                                        Text('iPhone XR'),
                                        Text('iPhone XS'),
                                        Text('iPhone 11'),
                                        Text('iPhone 11 Pro'),
                                      ],
                                    );
                                  })

                          ),

                          CupertinoButton(
                              child: Text('2. iOS Date Picker'),
                              onPressed: ()=>  showModalBottomSheet(

                                  context: context,
                                  builder: (_) => new CupertinoDatePicker(
                                    initialDateTime: DateTime.now(),
                                    onDateTimeChanged: (DateTime newdate) {
                                      print(newdate);
                                    },
                                    use24hFormat: true,
                                    maximumDate: new DateTime(2100, 12, 30),
                                    minimumYear: 2010,
                                    maximumYear: 2018,
                                    minuteInterval: 1,
                                    mode: CupertinoDatePickerMode.dateAndTime,
                                  ))

                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),


        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: ClipRect(
            child: SizedBox(
              height: 60.0,

              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0,sigmaY: 10.0),
                child: Container(
                  width: double.infinity,
                  color: CupertinoColors.systemGrey.withOpacity(0.2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CupertinoButton(
                        child: Text('Designed Using:',style: TextStyle(color: CupertinoColors.systemGrey6,fontWeight: FontWeight.w100),),
                      ),
                      Image(
                          height: 20.0,
                          width: 20.0,
                          image: AssetImage('assets/flutterlogo.png')
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
class cupertinoTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('This is iOS navigaion bar'),
        ),
        child: CupertinoTabScaffold(
            tabBar: CupertinoTabBar(items: [
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.home), title: Text("Home")),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.search), title: Text("Search")),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.person), title: Text("User Info"))
            ]),
            tabBuilder: (context, index) {
              switch (index) {
                case 0:
                  return page1();
                  break;
                case 1:
                  return page2();
                  break;
                case 2:
                  return page3();
                  break;
                default:
                  return page1();
                  break;
              }
            })
    );
  }
}
class page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoButton(child: Icon(CupertinoIcons.home,size: 40.0,),),
      ),
    );
  }
}
class page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoButton(child: Icon(CupertinoIcons.search,size: 40.0,),),
      ),
    );
  }
}
class page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoButton(child: Icon(CupertinoIcons.person,size: 40.0,),),
      ),
    );
  }
}
class SlidingSegment extends StatefulWidget
{
  final String title ;
  SlidingSegment({this.title});
  @override
  _SlidingSegment createState() => _SlidingSegment();

}
class _SlidingSegment extends State<SlidingSegment>{
  int groupvalue =0;
  final Map<int,Widget> tabs = const<int,Widget>
  {
    0:  Text('Home'),
    1:  Text('Search'),
    2:  Text('About'),
  };
  List<Widget> tabPages = [
    page1(),
    page2(),
    page3(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        margin: EdgeInsets.only(top: 10.0),
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
            physics: ScrollPhysics(parent: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics())),
            child: tabPages[groupvalue]),
      ),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(249, 249, 249, 1),
        elevation: 2.0,
        centerTitle: true,
        title: Text('Home',style: TextStyle(color: Colors.black),),
        bottom: PreferredSize(
          preferredSize: Size(double.infinity,45.0),
          child: Padding(
            padding: EdgeInsets.only(top: 5.0,bottom: 10.0),
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 15.0,
                ),
                Expanded(
                  child: CupertinoSlidingSegmentedControl(
                    groupValue: groupvalue,
                    onValueChanged: (changefromGroupValue){
                      setState(() {
                        groupvalue = changefromGroupValue;
                      });
                    },
                    children: tabs,
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }

}
class cupertinoSlider extends StatefulWidget {
  @override
  _cupertinoSliderState createState() => _cupertinoSliderState();
}

class _cupertinoSliderState extends State<cupertinoSlider> {
  double _progress=0.0;
  double _progress1=0.0;
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Stack(

        children: <Widget>[
          CupertinoPageScaffold(

            navigationBar: CupertinoNavigationBar(
              middle: Text('iOS Sliders'),

            ),
            child: Container(
              decoration: new BoxDecoration(

                image: new DecorationImage(
                  image: new AssetImage("assets/10.jpg"
                      ""),
                  fit: BoxFit.fill,
                ),
              ),
              child: Center(

                child: ClipRRect(
                  borderRadius:  BorderRadius.circular(20.0),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaY: 10.0,sigmaX: 10.0),
                    child: SingleChildScrollView(
                      physics: ScrollPhysics(parent: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics())),
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        height: 260.0,
                        width: 280.0,
                        decoration: new BoxDecoration(
                          color: CupertinoColors.systemGrey4.withOpacity(0.4),

                        ),


                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('Continuous Slider',style: TextStyle(color: CupertinoColors.white,fontSize: 25.0,fontWeight: FontWeight.w200),),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10.0,bottom: 10.0),
                              width: double.infinity,
                              child: CupertinoSlider(

                                value: _progress,
                                min: 0.0,
                                max: 100.0,

                                onChanged: (value){
                                  setState(() {
                                    _progress = value.roundToDouble();
                                  });
                                },
                              ),
                            ),
                            Text('Value : $_progress'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('Discrete Slider',style: TextStyle(color: CupertinoColors.white,fontSize: 25.0,fontWeight: FontWeight.w200),),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10.0,bottom: 10.0),
                              width: double.infinity,
                              child: CupertinoSlider(

                                value: _progress1,
                                min: 0.0,
                                max: 100.0,
                                divisions: 5,
                                onChanged: (value){
                                  setState(() {
                                    _progress1 = value.roundToDouble();
                                  });
                                },
                              ),
                            ),
                            Text('Value : $_progress1'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),


          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipRect(
              child: SizedBox(
                height: 60.0,

                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0,sigmaY: 10.0),
                  child: Container(
                    width: double.infinity,
                    color: CupertinoColors.systemGrey.withOpacity(0.2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CupertinoButton(
                          child: Text('Designed Using:',style: TextStyle(color: CupertinoColors.systemGrey6,fontWeight: FontWeight.w100),),
                        ),
                        Image(
                            height: 20.0,
                            width: 20.0,
                            image: AssetImage('assets/flutterlogo.png')
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
class cupertinoSwitch extends StatefulWidget {
  @override
  _cupertinoSwitchState createState() => _cupertinoSwitchState();
}

class _cupertinoSwitchState extends State<cupertinoSwitch> {
  @override
  bool value = false;
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('iOS Switch'),
      ),
      child: Material(
        type: MaterialType.transparency,
        child: Container(
          child: Center(
            child: CupertinoSwitch(

              value: value,
              onChanged: (v) => setState(() => value = v),
            ),
          ),
        ),
      ),
    );
  }
}
class cupertinoTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Material(
      type: MaterialType.transparency,
      child: Stack(

        children: <Widget>[
          CupertinoPageScaffold(


            navigationBar: CupertinoNavigationBar(
              middle: Text('iOS Text Fields'),

            ),
            child: Container(
              decoration: new BoxDecoration(

                image: new DecorationImage(
                  image: new AssetImage("assets/11.jpg"
                      ""),
                  fit: BoxFit.fill,
                ),
              ),
              child: Center(

                child: ClipRRect(
                  borderRadius:  BorderRadius.circular(20.0),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaY: 10.0,sigmaX: 10.0),
                    child: SingleChildScrollView(
                      physics: ScrollPhysics(parent: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics())),
                      child: Container(
                        height: 235.0,
                        width: 300.0,
                        decoration: new BoxDecoration(
                          color: CupertinoColors.systemGrey4.withOpacity(0.4),

                        ),


                        child: Container(
                          margin: EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Enter your email',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w100),),
                              Container(
                                margin: EdgeInsets.only(top: 10.0,bottom: 10.0),
                                child: CupertinoTextField(
                                  placeholder: 'Email',
                                  clearButtonMode: OverlayVisibilityMode.editing,
                                ),
                              ),
                              Text('Enter password',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w100),),
                              Container(
                                margin: EdgeInsets.only(top: 10.0,bottom: 10.0),
                                child: CupertinoTextField(
                                  placeholder: 'Password',
                                  obscureText: true,
                                  clearButtonMode: OverlayVisibilityMode.editing,
                                ),
                              ),
                              Text('Enter your PIN',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w100),),
                              Container(
                                margin: EdgeInsets.only(top: 10.0,bottom: 10.0),
                                child: CupertinoTextField(
                                  placeholder: 'PIN',
                                  prefix: Icon(CupertinoIcons.padlock_solid,size: 26,),
                                  keyboardType: TextInputType.phone,
                                  clearButtonMode: OverlayVisibilityMode.editing,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),


          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipRect(
              child: SizedBox(
                height: 60.0,

                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0,sigmaY: 10.0),
                  child: Container(
                    width: double.infinity,
                    color: CupertinoColors.systemGrey.withOpacity(0.2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CupertinoButton(
                          child: Text('Designed Using:',style: TextStyle(color: CupertinoColors.black,fontWeight: FontWeight.w100),),
                        ),
                        Image(
                            height: 20.0,
                            width: 20.0,
                            image: AssetImage('assets/flutterlogo.png')
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
class customPage extends StatefulWidget {

  @override
  _customPageState createState() => _customPageState();

}

class _customPageState extends State<customPage> {
  AdmobInterstitial interstitialAd;
  final admob = unitID();
  Timer timer;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    interstitialAd = AdmobInterstitial(

      adUnitId: "ca-app-pub-9117934871004866/1688929221",

    );
    interstitialAd.load();
    Admob.initialize(admob.getAppID());
    timer = Timer.periodic(Duration(seconds: 5), (Timer t) => loadInterstitialAd());

  }
  @override
  Widget build(BuildContext context) {

    return Material(
      type: MaterialType.transparency,
      child: Scaffold(
        body: Stack(

          children: <Widget>[
            NestedScrollView(
                physics: ScrollPhysics(parent: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics())),
                headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    SliverAppBar(
                      backgroundColor: Color.fromRGBO(249, 249, 249, 1).withOpacity(0.9),
                      expandedHeight: 250.0,
                      floating: true,
                      pinned: true,
                      flexibleSpace: FlexibleSpaceBar(
                          centerTitle: true,
                          title: Text("Cupertino iOS widgets",
                              style: TextStyle(
                                  color: CupertinoColors.black,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w400
                              )),
                          background: Image(
                            image: AssetImage('assets/ioslogonew.png'),
                          )),
                    ),
                  ];
                },
                body: Container(
                  decoration: new BoxDecoration(

                    image: new DecorationImage(
                      image: new AssetImage("assets/10.jpg"
                          ""),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: SingleChildScrollView(
                    physics: ScrollPhysics(parent: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics())),
                    child: Column(
                      children: <Widget>[
                        Container(
                          decoration: new BoxDecoration(

                          ),
                          margin: EdgeInsets.only(top: 20.0),
                          height: 150.0,
                          width: 300.0,

                          child: ClipRRect(

                            borderRadius: BorderRadius.circular(20.0),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaY: 5.0,sigmaX: 5.0),
                              child: Container(

                                decoration: new BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: CupertinoColors.white.withOpacity(0.3),

                                ),

                                child: Stack(
                                  fit: StackFit.expand,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text('1. iOS Activity Indicator',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 25.0),),
                                        Container(
                                            margin: EdgeInsets.fromLTRB(25.0,10.0,25.0,10.0),
                                            child: Text('An iOS-style activity indicator. Displays a circular spinner.',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300),))
                                      ],
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        decoration: new BoxDecoration(
                                            borderRadius: BorderRadius.circular(20.0)
                                        ),
                                        width: double.infinity,
                                        child: SizedBox(
                                          height: 40.0,
                                          child: RaisedButton(
                                            splashColor: CupertinoColors.systemGrey,
                                            child: Text('Go to widget',style: TextStyle(fontWeight: FontWeight.w100,color: Colors.white),
                                            ),
                                            color: CupertinoColors.activeBlue,
                                            onPressed: () async {
                                              if (await interstitialAd.isLoaded) {
                                                interstitialAd.show();
                                              }
                                              Navigator.push(context, CupertinoPageRoute(builder: (context)=> activityIndicator()));},
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20.0),
                          height: 150.0,
                          width: 300.0,
                          child: ClipRRect(

                            borderRadius: BorderRadius.circular(20.0),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0),
                              child: Container(

                                decoration: new BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: CupertinoColors.white.withOpacity(0.3),
                                ),
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text('2. iOS Alert Dialogs',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 25.0),),
                                        Container(
                                            margin: EdgeInsets.fromLTRB(25.0,10.0,25.0,10.0),
                                            child: Text('An iOS-style alert dialog.',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300),))
                                      ],
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        decoration: new BoxDecoration(
                                            borderRadius: BorderRadius.circular(20.0)
                                        ),
                                        width: double.infinity,
                                        child: SizedBox(
                                          height: 40.0,
                                          child: RaisedButton(
                                            splashColor: CupertinoColors.systemGrey,
                                            child: Text('Go to widget',style: TextStyle(fontWeight: FontWeight.w100,color: Colors.white),
                                            ),
                                            color: CupertinoColors.activeBlue,
                                            onPressed: () async {
                                              if (await interstitialAd.isLoaded) {
                                                interstitialAd.show();
                                              }
                                              Navigator.push(context, CupertinoPageRoute(builder: (context)=> AlertDialogs()));},
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20.0),
                          height: 150.0,
                          width: 300.0,
                          child: ClipRRect(

                            borderRadius: BorderRadius.circular(20.0),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0),
                              child: Container(

                                decoration: new BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: CupertinoColors.white.withOpacity(0.3),
                                ),
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text('3. iOS Action Sheet',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 25.0),),
                                        Container(
                                            margin: EdgeInsets.fromLTRB(25.0,10.0,25.0,10.0),
                                            child: Text('An iOS-style modal bottom action sheet to choose an option among many.',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300),))
                                      ],
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        decoration: new BoxDecoration(
                                            borderRadius: BorderRadius.circular(20.0)
                                        ),
                                        width: double.infinity,
                                        child: SizedBox(
                                          height: 40.0,
                                          child: RaisedButton(
                                            splashColor: CupertinoColors.systemGrey,
                                            child: Text('Go to widget',style: TextStyle(fontWeight: FontWeight.w100,color: Colors.white),
                                            ),
                                            color: CupertinoColors.activeBlue,
                                            onPressed: () async {
                                              if (await interstitialAd.isLoaded) {
                                                interstitialAd.show();
                                              }
                                              Navigator.push(context, CupertinoPageRoute(builder: (context)=> ActionSheet()));},
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20.0),
                          height: 150.0,
                          width: 300.0,
                          child: ClipRRect(

                            borderRadius: BorderRadius.circular(20.0),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0),
                              child: Container(

                                decoration: new BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: CupertinoColors.white.withOpacity(0.3),
                                ),
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text('4. iOS style buttons',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 25.0),),
                                        Container(
                                            margin: EdgeInsets.fromLTRB(25.0,10.0,25.0,10.0),
                                            child: Text('An iOS-style button.',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300),))
                                      ],
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        decoration: new BoxDecoration(
                                            borderRadius: BorderRadius.circular(20.0)
                                        ),
                                        width: double.infinity,
                                        child: SizedBox(
                                          height: 40.0,
                                          child: RaisedButton(
                                            splashColor: CupertinoColors.systemGrey,
                                            child: Text('Go to widget',style: TextStyle(fontWeight: FontWeight.w100,color: Colors.white),
                                            ),
                                            color: CupertinoColors.activeBlue,
                                            onPressed: () async {
                                              if (await interstitialAd.isLoaded) {
                                                interstitialAd.show();
                                              }
                                              Navigator.push(context, CupertinoPageRoute(builder: (context)=> Buttons()));},
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20.0),
                          height: 150.0,
                          width: 300.0,
                          child: ClipRRect(

                            borderRadius: BorderRadius.circular(20.0),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0),
                              child: Container(

                                decoration: new BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: CupertinoColors.white.withOpacity(0.3),
                                ),
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text('5. iOS Context Menu',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 25.0),),
                                        Container(
                                            margin: EdgeInsets.fromLTRB(25.0,10.0,25.0,10.0),
                                            child: Text('An iOS-style full-screen modal route that opens when the child is long-pressed. Used to display relevant actions for your content.',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300),))
                                      ],
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        decoration: new BoxDecoration(
                                            borderRadius: BorderRadius.circular(20.0)
                                        ),
                                        width: double.infinity,
                                        child: SizedBox(
                                          height: 40.0,
                                          child: RaisedButton(
                                            splashColor: CupertinoColors.systemGrey,
                                            child: Text('Go to widget',style: TextStyle(fontWeight: FontWeight.w100,color: Colors.white),
                                            ),
                                            color: CupertinoColors.activeBlue,
                                            onPressed: () async {
                                              if (await interstitialAd.isLoaded) {
                                                interstitialAd.show();
                                              }
                                              Navigator.push(context, CupertinoPageRoute(builder: (context)=> ContextMenu()));},
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20.0),
                          height: 150.0,
                          width: 300.0,
                          child: ClipRRect(

                            borderRadius: BorderRadius.circular(20.0),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0),
                              child: Container(

                                decoration: new BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: CupertinoColors.white.withOpacity(0.3),
                                ),
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text('6. iOS Dialogs',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 25.0),),
                                        Container(
                                            margin: EdgeInsets.fromLTRB(25.0,10.0,25.0,10.0),
                                            child: Text('An iOS-style dialog.',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300),))
                                      ],
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        decoration: new BoxDecoration(
                                            borderRadius: BorderRadius.circular(20.0)
                                        ),
                                        width: double.infinity,
                                        child: SizedBox(
                                          height: 40.0,
                                          child: RaisedButton(
                                            splashColor: CupertinoColors.systemGrey,
                                            child: Text('Go to widget',style: TextStyle(fontWeight: FontWeight.w100,color: Colors.white),
                                            ),
                                            color: CupertinoColors.activeBlue,
                                            onPressed: () async {
                                              if (await interstitialAd.isLoaded) {
                                                interstitialAd.show();
                                              }
                                              Navigator.push(context, CupertinoPageRoute(builder: (context)=> Dialogs()));},
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20.0),
                          height: 150.0,
                          width: 300.0,
                          child: ClipRRect(

                            borderRadius: BorderRadius.circular(20.0),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0),
                              child: Container(

                                decoration: new BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: CupertinoColors.white.withOpacity(0.3),
                                ),
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text('7. iOS Basic UI',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 25.0),),
                                        Container(
                                            margin: EdgeInsets.fromLTRB(25.0,10.0,25.0,10.0),
                                            child: Text('Displays basic UI involved in an iOS app.',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300),))
                                      ],
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        decoration: new BoxDecoration(
                                            borderRadius: BorderRadius.circular(20.0)
                                        ),
                                        width: double.infinity,
                                        child: SizedBox(
                                          height: 40.0,
                                          child: RaisedButton(
                                            splashColor: CupertinoColors.systemGrey,
                                            child: Text('Go to widget',style: TextStyle(fontWeight: FontWeight.w100,color: Colors.white),
                                            ),
                                            color: CupertinoColors.activeBlue,
                                            onPressed: () async {
                                              if (await interstitialAd.isLoaded) {
                                                interstitialAd.show();
                                              }
                                              Navigator.push(context, CupertinoPageRoute(builder: (context)=> cupertinoBasics()));},
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20.0),
                          height: 150.0,
                          width: 300.0,
                          child: ClipRRect(

                            borderRadius: BorderRadius.circular(20.0),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0),
                              child: Container(

                                decoration: new BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: CupertinoColors.white.withOpacity(0.3),
                                ),
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text('8. iOS Pickers',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 25.0),),
                                        Container(
                                            margin: EdgeInsets.fromLTRB(25.0,10.0,25.0,10.0),
                                            child: Text('An iOS-style picker control. Used to select an item in a short list.',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300),))
                                      ],
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        decoration: new BoxDecoration(
                                            borderRadius: BorderRadius.circular(20.0)
                                        ),
                                        width: double.infinity,
                                        child: SizedBox(
                                          height: 40.0,
                                          child: RaisedButton(
                                            splashColor: CupertinoColors.systemGrey,
                                            child: Text('Go to widget',style: TextStyle(fontWeight: FontWeight.w100,color: Colors.white),
                                            ),
                                            color: CupertinoColors.activeBlue,
                                            onPressed: () async {
                                              if (await interstitialAd.isLoaded) {
                                                interstitialAd.show();
                                              }
                                              Navigator.push(context, CupertinoPageRoute(builder: (context)=> Pickers()));},
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20.0),
                          height: 150.0,
                          width: 300.0,
                          child: ClipRRect(

                            borderRadius: BorderRadius.circular(20.0),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0),
                              child: Container(

                                decoration: new BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: CupertinoColors.white.withOpacity(0.3),
                                ),
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text('9. iOS Tab Bar UI',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 25.0),),
                                        Container(
                                            margin: EdgeInsets.fromLTRB(25.0,10.0,25.0,10.0),
                                            child: Text('An iOS-style bottom tab bar. Typically used with CupertinoTabScaffold.',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300),))
                                      ],
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        decoration: new BoxDecoration(
                                            borderRadius: BorderRadius.circular(20.0)
                                        ),
                                        width: double.infinity,
                                        child: SizedBox(
                                          height: 40.0,
                                          child: RaisedButton(
                                            splashColor: CupertinoColors.systemGrey,
                                            child: Text('Go to widget',style: TextStyle(fontWeight: FontWeight.w100,color: Colors.white),
                                            ),
                                            color: CupertinoColors.activeBlue,
                                            onPressed: () async {
                                              if (await interstitialAd.isLoaded) {
                                                interstitialAd.show();
                                              }
                                              Navigator.push(context, CupertinoPageRoute(builder: (context)=> cupertinoTabBar()));},
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20.0),
                          height: 150.0,
                          width: 300.0,
                          child: ClipRRect(

                            borderRadius: BorderRadius.circular(20.0),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0),
                              child: Container(

                                decoration: new BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: CupertinoColors.white.withOpacity(0.3),
                                ),
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text('10. iOS 13 style segment',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 25.0),),
                                        Container(
                                            margin: EdgeInsets.fromLTRB(25.0,10.0,25.0,10.0),
                                            child: Text('An iOS-13-style segmented control. Used to select mutually exclusive options in a horizontal list.',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300),))
                                      ],
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        decoration: new BoxDecoration(
                                            borderRadius: BorderRadius.circular(20.0)
                                        ),
                                        width: double.infinity,
                                        child: SizedBox(
                                          height: 40.0,
                                          child: RaisedButton(
                                            splashColor: CupertinoColors.systemGrey,
                                            child: Text('Go to widget',style: TextStyle(fontWeight: FontWeight.w100,color: Colors.white),
                                            ),
                                            color: CupertinoColors.activeBlue,
                                            onPressed: () async {
                                              if (await interstitialAd.isLoaded) {
                                                interstitialAd.show();
                                              }
                                              Navigator.push(context, CupertinoPageRoute(builder: (context)=> SlidingSegment()));},
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20.0),
                          height: 150.0,
                          width: 300.0,
                          child: ClipRRect(

                            borderRadius: BorderRadius.circular(20.0),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0),
                              child: Container(

                                decoration: new BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: CupertinoColors.white.withOpacity(0.3),
                                ),
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text('11. iOS style sliders',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 25.0),),
                                        Container(
                                            margin: EdgeInsets.fromLTRB(25.0,10.0,25.0,10.0),
                                            child: Text('Used to select from a range of values.',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300),))
                                      ],
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        decoration: new BoxDecoration(
                                            borderRadius: BorderRadius.circular(20.0)
                                        ),
                                        width: double.infinity,
                                        child: SizedBox(
                                          height: 40.0,
                                          child: RaisedButton(
                                            splashColor: CupertinoColors.systemGrey,
                                            child: Text('Go to widget',style: TextStyle(fontWeight: FontWeight.w100,color: Colors.white),
                                            ),
                                            color: CupertinoColors.activeBlue,
                                            onPressed: () async {
                                              if (await interstitialAd.isLoaded) {
                                                interstitialAd.show();
                                              }
                                              Navigator.push(context, CupertinoPageRoute(builder: (context)=> cupertinoSlider()));},
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20.0),
                          height: 150.0,
                          width: 300.0,
                          child: ClipRRect(

                            borderRadius: BorderRadius.circular(20.0),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0),
                              child: Container(

                                decoration: new BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: CupertinoColors.white.withOpacity(0.3),
                                ),
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text('12. iOS style switch',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 25.0),),
                                        Container(
                                            margin: EdgeInsets.fromLTRB(25.0,10.0,25.0,10.0),
                                            child: Text('An iOS-style switch. Used to toggle the on/off state of a single setting.',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300),))
                                      ],
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        decoration: new BoxDecoration(
                                            borderRadius: BorderRadius.circular(20.0)
                                        ),
                                        width: double.infinity,
                                        child: SizedBox(
                                          height: 40.0,
                                          child: RaisedButton(
                                            splashColor: CupertinoColors.systemGrey,
                                            child: Text('Go to widget',style: TextStyle(fontWeight: FontWeight.w100,color: Colors.white),
                                            ),
                                            color: CupertinoColors.activeBlue,
                                            onPressed: () async {
                                              if (await interstitialAd.isLoaded) {
                                                interstitialAd.show();
                                              }
                                              Navigator.push(context, CupertinoPageRoute(builder: (context)=> cupertinoSwitch()));},
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20.0),
                          height: 150.0,
                          width: 300.0,
                          child: ClipRRect(

                            borderRadius: BorderRadius.circular(20.0),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0),
                              child: Container(

                                decoration: new BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: CupertinoColors.white.withOpacity(0.3),
                                ),
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text('13. iOS style textfields',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 25.0),),
                                        Container(
                                            margin: EdgeInsets.fromLTRB(25.0,10.0,25.0,10.0),
                                            child: Text('An iOS-style text field.',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300),))
                                      ],
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        decoration: new BoxDecoration(
                                            borderRadius: BorderRadius.circular(20.0)
                                        ),
                                        width: double.infinity,
                                        child: SizedBox(
                                          height: 40.0,
                                          child: RaisedButton(
                                            splashColor: CupertinoColors.systemGrey,
                                            child: Text('Go to widget',style: TextStyle(fontWeight: FontWeight.w100,color: Colors.white),
                                            ),
                                            color: CupertinoColors.activeBlue,
                                            onPressed: () async {
                                              if (await interstitialAd.isLoaded) {
                                                interstitialAd.show();
                                              }
                                              Navigator.push(context, CupertinoPageRoute(builder: (context)=> cupertinoTextField()));},
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20.0,bottom: 50.0),
                          height: 150.0,
                          width: 300.0,
                          child: ClipRRect(

                            borderRadius: BorderRadius.circular(20.0),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0),
                              child: Container(

                                decoration: new BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: CupertinoColors.white.withOpacity(0.3),
                                ),
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text('14. iOS style Web  Browser',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 25.0),),
                                        Container(
                                            margin: EdgeInsets.fromLTRB(25.0,10.0,25.0,10.0),
                                            child: Text('A safari style browser demo app',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300),))
                                      ],
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        decoration: new BoxDecoration(
                                            borderRadius: BorderRadius.circular(20.0)
                                        ),
                                        width: double.infinity,
                                        child: SizedBox(
                                          height: 40.0,
                                          child: RaisedButton(
                                            splashColor: CupertinoColors.systemGrey,
                                            child: Text('Go to widget',style: TextStyle(fontWeight: FontWeight.w100,color: Colors.white),
                                            ),
                                            color: CupertinoColors.activeBlue,
                                            onPressed: () async {
                                              if (await interstitialAd.isLoaded) {
                                                interstitialAd.show();
                                              }
                                              Navigator.push(context, CupertinoPageRoute(builder: (context)=> HomePage()));},
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                )
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: AdmobBanner(
                  adUnitId: "ca-app-pub-9117934871004866/6596451603",
                  adSize: AdmobBannerSize.BANNER,
                )
            )
          ],
        ),
      ),
    );
  }
  void loadInterstitialAd()
  {


    interstitialAd.load();
    // print("ad loaded");
  }
}
class Code extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Material(
      type: MaterialType.transparency,
      child: Stack(

        children: <Widget>[
          CupertinoPageScaffold(

            navigationBar: CupertinoNavigationBar(
              middle: Text('Source Code of App'),

            ),
            child: Container(
              decoration: new BoxDecoration(

                image: new DecorationImage(
                  image: new AssetImage("assets/9.jpg"
                      ""),
                  fit: BoxFit.fill,
                ),
              ),
              child: Center(

                child: ClipRRect(
                  borderRadius:  BorderRadius.circular(20.0),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaY: 10.0,sigmaX: 10.0),
                    child: SingleChildScrollView(
                      physics: ScrollPhysics(parent: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics())),
                      child: Container(
                        height: 160.0,
                        width: 280.0,
                        decoration: new BoxDecoration(
                          color: CupertinoColors.systemGrey4.withOpacity(0.4),

                        ),


                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                margin: EdgeInsets.all(20.0),
                                child: Text('The full source code of the app can be downloaded from the link below')),
                            CupertinoButton.filled(child: Icon(Icons.cloud_download), onPressed: (){
                              _launchURL();
                            })


                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),


          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipRect(
              child: SizedBox(
                height: 60.0,

                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0,sigmaY: 10.0),
                  child: Container(
                    width: double.infinity,
                    color: CupertinoColors.systemGrey.withOpacity(0.2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CupertinoButton(
                          child: Text('Designed Using:',style: TextStyle(color: CupertinoColors.systemGrey6,fontWeight: FontWeight.w100),),
                        ),
                        Image(
                            height: 20.0,
                            width: 20.0,
                            image: AssetImage('assets/flutterlogo.png')
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Material(
      type: MaterialType.transparency,
      child: Stack(

        children: <Widget>[
          CupertinoPageScaffold(

            navigationBar: CupertinoNavigationBar(
              middle: Text('About the developer'),

            ),
            child: Container(
              decoration: new BoxDecoration(

                image: new DecorationImage(
                  image: new AssetImage("assets/8.jpg"
                      ""),
                  fit: BoxFit.fill,
                ),
              ),
              child: Center(

                child: ClipRRect(
                  borderRadius:  BorderRadius.circular(20.0),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaY: 10.0,sigmaX: 10.0),
                    child: SingleChildScrollView(
                      physics: ScrollPhysics(parent: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics())),
                      child: Container(
                        height: 160.0,
                        width: 280.0,
                        decoration: new BoxDecoration(
                          color: CupertinoColors.systemGrey4.withOpacity(0.4),

                        ),


                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.all(20.0),
                              child: Text('This app is fully developed by Zak , this app does not endorsed anything. The developer can be contacted via email at: ',style: TextStyle(fontWeight: FontWeight.w300),),
                            ),
                            SelectableText('zak13kharb@gmail.com',style: TextStyle(color: CupertinoColors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 20.0),

                            ),



                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),


          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipRect(
              child: SizedBox(
                height: 60.0,

                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0,sigmaY: 10.0),
                  child: Container(
                    width: double.infinity,
                    color: CupertinoColors.systemGrey.withOpacity(0.2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CupertinoButton(
                          child: Text('Designed Using:',style: TextStyle(color: CupertinoColors.systemGrey6,fontWeight: FontWeight.w100),),
                        ),
                        Image(
                            height: 20.0,
                            width: 20.0,
                            image: AssetImage('assets/flutterlogo.png')
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
_launchURL() async {
  const url = 'http://uii.io/iosWidgetCode';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

