import 'package:flutter/material.dart';

class Tugas5 extends StatefulWidget {
  const Tugas5({super.key});

  @override
  State<Tugas5> createState() => _Tugas5State();
}

class _Tugas5State extends State<Tugas5> {
  String name = "Ihsan Nur Huda";
  bool showname = false;
  bool showfavorite = false;
  bool showdeskripsi = false;
  String deskripsi = "kehidupan dan kematian ";
  num counter = 0;
  bool showbox = false;
  @override
  Widget build(BuildContext context) {
    print("Refresh nama");
    return Scaffold(
      appBar: AppBar(
        title: Text("Tampilkan Nama"),
        backgroundColor: Colors.amberAccent,
      ),
      body: Column(
        children: [
          Container(color: Colors.blue),
          showname ? Text("Nama $name") : Text("nama:hilang"),
          ElevatedButton(
            onPressed: () {
              setState(() {
                showname = !showname;
              });
            },
            child: Text("Tampilkan nama"),
          ),
          Container(
            height: 50,
            margin: EdgeInsets.all(8),
            child: IconButton(
              onPressed: () {
                setState(() {
                  showfavorite = !showfavorite;
                });
              },
              icon: Icon(Icons.favorite),
              color: showfavorite ? Colors.grey : Colors.red,
            ),
          ),
          Column(
            children: [
              showdeskripsi ? Text(" $deskripsi") : Text(""),
              TextButton(
                onPressed: () {
                  setState(() {
                    showdeskripsi = !showdeskripsi;
                  });
                },
                child: Text("Lihat Selengkapnya"),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 10,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      print("Print tambah $counter");
                      counter++;
                      setState(() {});
                    },
                    child: Icon(Icons.add),
                  ),
                  SizedBox(width: 24),
                  Text("Angka = $counter"),
                  FloatingActionButton(
                    onPressed: () {
                      print("Print kurang $counter");
                      counter--;
                      setState(() {});
                    },
                    child: Icon(Icons.remove),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 120,
                    width: 120,
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.all(Radius.circular(11)),
                    ),
                    child: InkWell(
                      splashColor: Colors.red,
                      onTap: () {
                        debugPrint("kotak disentuh");
                        setState(() {});
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
