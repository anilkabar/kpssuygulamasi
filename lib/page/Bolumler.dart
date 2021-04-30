import 'dart:html';
import 'package:flutter/material.dart';
import 'package:kpssuygulamasi/Utils/Enum.dart';
import 'package:kpssuygulamasi/models/BolumlerData.dart';
import 'package:kpssuygulamasi/page/Ozetler.dart'; //android görüntüsü için ekleniyor
import 'package:kpssuygulamasi/page/DenemeSinavlari.dart'; //android görüntüsü için ekleniyor

class Bolumler extends StatefulWidget {
  var seciliDers;
  Bolumler({this.seciliDers});
  @override
  State<StatefulWidget> createState() {
    return _BolumlerState();
  }
}

@override
class _BolumlerState extends State<Bolumler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Bölümler" + widget.seciliDers.toString()),
        ),
        body: Column(
          children: <Widget>[
            // InkWell(
            //   child: Container(
            //     alignment: Alignment.centerLeft,
            //     padding: EdgeInsets.all(10.0),
            //     margin: EdgeInsets.all(10.0),
            //     decoration: BoxDecoration(
            //       gradient: LinearGradient(
            //         colors: [Color(0xFFEEEAEA), Color(0xFFEEEAEA)],
            //         begin: Alignment.centerLeft,
            //         end: Alignment.centerRight,
            //       ),
            //       borderRadius: BorderRadius.all(Radius.circular(7)),
            //     ),
            //     child: Row(
            //       children: <Widget>[
            //         Text(
            //           "Ozetler",
            //           textAlign: TextAlign.right,
            //           style: Theme.of(context)
            //               .textTheme
            //               .button
            //               .copyWith(color: Colors.black),
            //         ),
            //       ],
            //     ),
            //   ),
            //   onTap: () {
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => Ozetler()));
            //   },
            // ),
            buildVeriler(widget.seciliDers),
            // Expanded(
            //   child: ListView.builder(
            //       itemCount: turkceBolumlerData.length,
            //       itemBuilder: (BuildContext context, int index) {
            //         return InkWell(
            //           child: Container(
            //             alignment: Alignment.centerLeft,
            //             padding: EdgeInsets.all(1.0),
            //             margin: EdgeInsets.all(7.0),
            //             height: 40.0,
            //             decoration: BoxDecoration(
            //               gradient: LinearGradient(
            //                 colors: [Color(0xFFEEEAEA), Color(0xFFEEEAEA)],
            //                 begin: Alignment.centerLeft,
            //                 end: Alignment.centerRight,
            //               ),
            //               borderRadius: BorderRadius.all(Radius.circular(7)),
            //             ),
            //             child: ListTile(
            //               title: Text(
            //                 turkceBolumlerData[index].Adi,
            //                 style: TextStyle(),
            //                 // textAlign: Alignment.center,
            //               ),
            //               onTap: () {
            //                 setState(() {
            //                   //seciliOzet = ozet[index];
            //                 });
            //                 Navigator.push(
            //                     context,
            //                     MaterialPageRoute(
            //                         builder: (context) => builStatusUrl(
            //                             turkceBolumlerData[index].Url)));
            //               },
            //               trailing:
            //                   builStatuIcon(turkceBolumlerData[index].Url),
            //             ),
            //           ),
            //         );
            //       }),
            // ),
          ],
        ));
  }

  Widget buildVeriler(var i) {
    if (i == kpssDersler.turkce) {
      return Expanded(
        child: Scrollbar(
          child: ListView.builder(
              itemCount: turkceBolumlerData.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(1.0),
                    margin: EdgeInsets.all(7.0),
                    height: 40.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFFEEEAEA), Color(0xFFEEEAEA)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                    ),
                    child: ListTile(
                      title: Text(
                        turkceBolumlerData[index].Adi,
                        style: TextStyle(),
                        // textAlign: Alignment.center,
                      ),
                      onTap: () {
                        setState(() {
                          widget.seciliDers;
                        });
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => builStatusUrl(
                                    turkceBolumlerData[index].Url,
                                    widget.seciliDers)));
                      },
                      trailing: builStatuIcon(turkceBolumlerData[index].Url),
                    ),
                  ),
                );
              }),
        ),
      );
    } else if (i == kpssDersler.matematik) {
      return Expanded(
        child: Scrollbar(
          child: ListView.builder(
              itemCount: matematikBolumlerData.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(1.0),
                    margin: EdgeInsets.all(7.0),
                    height: 40.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFFEEEAEA), Color(0xFFEEEAEA)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                    ),
                    child: ListTile(
                      title: Text(
                        matematikBolumlerData[index].Adi,
                        style: TextStyle(),
                        // textAlign: Alignment.center,
                      ),
                      onTap: () {
                        setState(() {
                          widget.seciliDers;
                        });
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => builStatusUrl(
                                    matematikBolumlerData[index].Url,
                                    widget.seciliDers)));
                      },
                      trailing: builStatuIcon(turkceBolumlerData[index].Url),
                    ),
                  ),
                );
              }),
        ),
      );
    }
  }
}

buildGelenVeri() {}

builStatusUrl(String Url, var seciliDers) {
  if (Url == "Ozetler") {
    return Ozetler(
      seciliDers: seciliDers,
    );
  } else if (Url == "DenemeSinavlari") {
    return DenemeSinavlari(
      seciliDers: seciliDers,
    );
  }
}

builStatuIcon(String Url) {
  if (Url == "Ozetler") {
    return Icon(Icons.menu_book);
  } else if (Url == "DenemeSinavlari") {
    return Icon(Icons.open_in_new_outlined);
  }
}
