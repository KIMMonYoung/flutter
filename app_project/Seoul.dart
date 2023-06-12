import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



class OpenWebBrowser extends StatefulWidget {
  @override
  OpenWebBrowserState createState() => OpenWebBrowserState();
}

class OpenWebBrowserState extends State<OpenWebBrowser> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController teCon =
  TextEditingController(text: "http://google.com");

  FocusNode myFocusNode = FocusNode();

  @override
  void dispose() {
    super.dispose();
    myFocusNode.dispose();
    teCon.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(title: Text("Open Web Browser")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            customButton("국립민속박물관", "https://www.nfm.go.kr/home/index.do"),
            customButton("예술의 전당", "https://www.sac.or.kr/site/main/home"),
            customButton("동대문디자인플라자", "https://ddp.or.kr/?menuno=228"),
            Divider(color: Colors.grey, height: 50, indent: 50, endIndent: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text("URL: "),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: TextField(
                        decoration: InputDecoration(),
                        controller: teCon,
                        focusNode: myFocusNode,
                      ),
                    ),
                  ),
                  Container(
                    width: 60,
                    child: TextButton(
                      padding: const EdgeInsets.all(0),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.lightBlueAccent),
                        foregroundColor: MaterialStateProperty.all(Colors.white),
                      ),
                      child: Text("lauch"),
                      onPressed: () {
                        _launchUrl(teCon.text.toString());
                      },
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 5),
                    width: 65,
                    child: TextButton(
                      padding: const EdgeInsets.all(0),
                      color: Colors.grey,
                      textColor: Colors.white,
                      child: Text("clear"),
                      onPressed: () {
                        FocusScope.of(context).requestFocus(myFocusNode);
                        teCon.text = "http://";
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  customButton(String text, String url) {
    return Container(
      width: 250,
      child: TextButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(text),
        onPressed: () {
          teCon.text = url;
        },
      ),
    );
  }

  _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      scaffoldKey.currentState
        ..hideCurrentSnackBar()
        ..showSnackBar(
          SnackBar(
            content: Text("'$url' is invalid a URL"),
            backgroundColor: Colors.deepOrange,
            action: SnackBarAction(
              label: "Done",
              textColor: Colors.white,
              onPressed: () {},
            ),
          ),
        );
    }
  }
}
