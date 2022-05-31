import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Calls extends StatelessWidget {
  const Calls({Key? key}) : super(key: key);

  // Masukkan coding disini
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (_) {
          _.disallowGlow();
          return true;
        },
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            callPhone("Sinta", Icons.call_received, Colors.green, "Jan 13, 02:13", NetworkImage("https://i.postimg.cc/T2HT1Lcc/2022-05-31-at-13-21-54.jpg")),
            callPhone("Awaliya", Icons.call_made, Colors.green, "Feb 08, 10:30", NetworkImage("https://i.postimg.cc/rpd5xkL0/01.jpg")),
            callPhone("Devy", Icons.call_received, Colors.green, "Feb 17, 05:20", NetworkImage("https://i.postimg.cc/QNW9bbPP/nail-art-lucu-dari-bunga-bunga-kering-yang-terlihat-manja-Mye-KMRr-W1k.jpg")),
            callPhone("Gita", Icons.call_made, Colors.green, "Maret 25, 08:25", NetworkImage("https://i.postimg.cc/6pVCh07w/Image-2022-05-31-at-13-21-54.jpg")),
            callPhone("Hisyam", Icons.call_received, Colors.green, "April 22, 12:34", NetworkImage("https://i.postimg.cc/3wxWvMPM/panorama-alam-terasiring-di-desa-pendoworejo-20170608-223549.jpg")),
            callPhone("Furqonal", Icons.call_made, Colors.red, "April 25, 13:07", NetworkImage("https://i.postimg.cc/8PdCXPGQ/images-1.jpg")),
            callPhone("Gabriel", Icons.call_made, Colors.red, "Juni 01, 09:15", NetworkImage("https://i.postimg.cc/0yQqG82C/gambar1.jpg")),
            callPhone("Sumartatik", Icons.call_received, Colors.red, "Juli 12, 05:25", NetworkImage("https://i.postimg.cc/rpd5xkL0/01.jpg")),
            callPhone("Hisyam", Icons.call_received, Colors.red, "Agustus 17, 02:00", NetworkImage("https://i.postimg.cc/3wxWvMPM/panorama-alam-terasiring-di-desa-pendoworejo-20170608-223549.jpg")),
            callPhone("Hisyam", Icons.call_received, Colors.red, "Agustus 19, 03:04", NetworkImage("https://i.postimg.cc/3wxWvMPM/panorama-alam-terasiring-di-desa-pendoworejo-20170608-223549.jpg")),
            callPhone("Furqonal", Icons.call_made, Colors.red, "April 25, 13:07", NetworkImage("https://i.postimg.cc/8PdCXPGQ/images-1.jpg")),
            callPhone("Awaliya", Icons.call_made, Colors.green, "Feb 08, 10:30", NetworkImage("https://i.postimg.cc/rpd5xkL0/01.jpg")),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.white,
            focusElevation: 0.0,
            onPressed: () {},
            child: Icon(
              Icons.video_call,
              color: Colors.teal.shade900,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {},
            child: Icon(
              Icons.add_call,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget callPhone(String name, IconData iconSitus, Color iconColor, String Time, NetworkImage image) {
    return Card(
      margin: EdgeInsets.only(bottom: 0.9),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: image,
          radius: 40,
        ),
        title: Text(
          name,
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        subtitle: Row(
          children: [
            Icon(
              iconSitus,
              color: iconColor,
              size: 20,
            ),
            SizedBox(width: 6),
            Text(
              Time,
              style: TextStyle(fontSize: 13),
            ),
          ],
        ),
        trailing: Icon(
          Icons.call,
          size: 28,
          color: Colors.teal,
        ),
      ),
    );
  }
}
