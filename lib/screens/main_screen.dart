import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:list_wisata/model/wisata.dart';
import 'package:list_wisata/screens/aboutus_screen.dart';
import 'package:list_wisata/screens/userdisplayname_screen.dart';
import 'package:list_wisata/screens/welcome_screen.dart';

class MainScreen extends StatefulWidget {
  static const String id = 'main_screen';

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _auth = FirebaseAuth.instance;
  User loggedInUser;
  dynamic myDisplaynName = 'User';

  Future<ListWisata> listWisata;

  Future<ListWisata> getListWista() async {
    //fetch data from api

    var dio = Dio();
    Response response =
        await dio.get('https://dev.farizdotid.com/api/purwakarta/wisata');
    print(response.data);
    if (response.statusCode == 200) {
      return ListWisata.fromJson(response.data);
    } else {
      throw Exception('Failed to load album');
    }
  }

  @override
  void initState() {
    super.initState();
    listWisata = getListWista();
  }

  void getCurrentUser() {
    final user = _auth.currentUser;
    if (user != null) {
      loggedInUser = user;
      if (loggedInUser.displayName != null) {
        myDisplaynName = loggedInUser.displayName;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wisata Puwakarta"),
        backgroundColor: Colors.black,
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: new Text('Hello, $myDisplaynName'),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://www.pngkey.com/png/full/121-1219231_user-default-profile.png"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Set Profile Name'),
              onTap: () {
                Navigator.pushNamed(context, UserDislayNameScreen.id)
                    .whenComplete(() => setState(() => (getCurrentUser())));
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('About Us'),
              onTap: () {
                Navigator.pushNamed(context, AboutUsScreen.id);
              },
            ),
            ListTile(
              title: Text('Log Out'),
              trailing: Icon(Icons.input),
              onTap: () {
                _auth.signOut();
                Navigator.popAndPushNamed(context, WelcomeScreen.id);
              },
            ),
          ],
        ),
      ),
      body: FutureBuilder<ListWisata>(
          future: listWisata,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  itemCount: snapshot.data.wisata.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              '${snapshot.data.wisata[index].gambarUrl}'),
                        ),
                        title: Text("${snapshot.data.wisata[index].nama}"),
                        subtitle:
                            Text("${snapshot.data.wisata[index].kategori}"),
                      ),
                    );
                  });
            }
            return Center(child: CircularProgressIndicator());
          }),
    );
  }
}
