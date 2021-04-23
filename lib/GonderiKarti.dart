import 'package:flutter/material.dart';

class GonderiKarti extends StatelessWidget {
  final String ppresim;
  final String ad;
  final String gonderiResim;
  final String aciklama;
  final String gecensure;

  GonderiKarti({this.ppresim, this.ad, this.gonderiResim, this.aciklama, this.gecensure});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Material(
        elevation: 1.0,
        borderRadius: BorderRadius.circular(12.0),
        child: Container(
          width: double.infinity,
          height: 388,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              image: DecorationImage(
                                image: NetworkImage(ppresim),
                                fit: BoxFit.cover,
                              )),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              ad,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                             gecensure,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Icon(Icons.more_vert)
                  ],
                ),
                SizedBox(height: 15),
                Text(
                  aciklama,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 20),
                Image.network(
                  gonderiResim,
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 4.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    IkonluButonum(
                      ikonum: Icons.favorite,
                      yazi: "Beğen",
                      fonksiyonu: () {},
                    ),
                    IkonluButonum(
                      ikonum: Icons.comment,
                      yazi: "Yorum Yap",
                      fonksiyonu: () {},
                    ),
                    /*
                    Biz o kadar widget felan yazdık oluşturduk ama zaten flutterı yazanları bizi düşünüp uğraşmayalım diye 
                    bu yapıklarımızı önceden eklemişler.
                    */
                    FlatButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.share,
                          color: Colors.grey,
                        ),
                        label: Text(
                          "Paylaş",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class IkonluButonum extends StatelessWidget {
  final ikonum;
  final yazi;
  final fonksiyonu;
  IkonluButonum({this.ikonum, this.yazi, this.fonksiyonu});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: fonksiyonu,
        child: Container(
          padding: EdgeInsets.all(8),
          child: Row(
            children: <Widget>[
              Icon(
                ikonum,
                color: Colors.grey,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                yazi,
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
