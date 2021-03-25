import 'package:flutter/material.dart';

class HitungVolumeKubus extends StatefulWidget {
  @override
  _HitungVolumeKubusState createState() => _HitungVolumeKubusState();
}

class _HitungVolumeKubusState extends State<HitungVolumeKubus> {
  int sisi1 = 0;
  int sisi2 = 0;
  int sisi3 = 0;
  int volume = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[400],
        title: Text('Hitung Volume Kubus'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.add,
              color: Colors.greenAccent[700],
            ),
            onPressed: () {},
          ), // IconButton
        ], // <Widget>[]
      ), // AppBar
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            margin: const EdgeInsets.only(left: 20, right: 20, top: 300),
            child: Row(
              children: <Widget>[
                Expanded(
                    child: TextField(
                  onChanged: (txt) {
                    setState(() {
                      sisi1 = int.parse(txt);
                    });
                  },
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    suffix: Text('Cm'),
                    filled: true,
                    hintText: 'Sisi 1',
                  ),
                )),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: TextField(
                  onChanged: (txt) {
                    setState(() {
                      sisi2 = int.parse(txt);
                    });
                  },
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    suffix: Text('Cm'),
                    filled: true,
                    hintText: 'Sisi 2',
                  ),
                )),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: TextField(
                  onChanged: (txt) {
                    setState(() {
                      sisi3 = int.parse(txt);
                    });
                  },
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    suffix: Text('Cm'),
                    filled: true,
                    hintText: 'Sisi 3',
                  ),
                )),
              ],
            ),
          ),
          Container(
            // padding: EdgeInsets.only(left: 50, top: 5),
            margin: EdgeInsets.only(top: 15, bottom: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.black,
              ),
            ),

            child: RaisedButton(
              padding:
                  EdgeInsets.only(left: 50, top: 10, bottom: 10, right: 50),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              color: Colors.blueAccent,
              onPressed: () {
                setState(() {
                  volume = sisi1 * sisi2 * sisi3;
                });
              },
              child: Text("Hitung Volume Kubus",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Column(
              children: <Widget>[
                Text(
                'Answer',
                style: TextStyle(
                  fontSize: 40,
                  foreground: Paint()
                    ..shader = ui.Gradient.linear(
                      const Offset(0, 20),
                      const Offset(150, 20),
                      <Color>[
                        Colors.blue,
                        Colors.purple,
                      ],
                    )
                ),
              )
                Text('$volume',
                    style: TextStyle(
                      fontSize: 60,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
            child: Center(),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0.0),
              image: DecorationImage(
                image: NetworkImage(
                    'https://lh3.googleusercontent.com/-NP4i3T_RDtM/YE-CtUd9dvI/AAAAAAAAIdk/xctPYcDEj2UX_P-uBMD_gHNTiNrNGKa4gCNcBGAsYHQ/pexels-kaique-rocha-65438.jpg'),
                fit: BoxFit.cover,
              ),
              color: Colors.deepPurpleAccent[400],
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Profile'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.adjust_outlined),
            title: Text('Hitung Volume Kubus'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.adjust_outlined),
            title: Text('Hitung Volume Lingkaran'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.adjust_outlined),
            title: Text('Hitung Luas Segitiga'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.adjust_outlined),
            title: Text('Hitung Luas Lingkaran'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.build_circle_rounded),
            title: Text('Setting'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}

class Pictures extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      margin: const EdgeInsets.only(top: 40.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.100),
        image: DecorationImage(
          image: NetworkImage(
              'https://1.bp.blogspot.com/-grKQqxmN0aA/YFvwVJEu2PI/AAAAAAAAIg0/n3ApBJG3x1s7sYdXYnvFXbLQ9DYmds3tQCNcBGAsYHQ/s700/Kubus.jpg'),
          fit: BoxFit.cover,
        ), // DecorationImage
      ), // BoxDecoration
    ); // Container
  }
}
