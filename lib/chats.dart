import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

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
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage("https://i.postimg.cc/6pVCh07w/Image-2022-05-31-at-13-21-54.jpg"),
                radius: 30,
              ),
              title: Text(
                'Anita Fransiska',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: [
                  Icon(
                    Icons.done_all_rounded,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  Text('Yuk besok kita meet time?'),
                ],
              ),
              trailing: Text('07:00'),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage("https://i.postimg.cc/V60hvp6m/2022-05-31-at-13-21-53.jpg"),
                radius: 30,
              ),
              title: Text(
                'Indah Dwi',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: [
                  Icon(
                    Icons.done_all_rounded,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  Text('Bagaimana kabar Anda?'),
                ],
              ),
              trailing: Text('18:00'),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage("https://i.postimg.cc/T2HT1Lcc/2022-05-31-at-13-21-54.jpg"),
                radius: 30,
              ),
              title: Text(
                'Devi',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: [
                  Icon(
                    Icons.done_all_rounded,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  Text('Ujian nya sudah selesai'),
                ],
              ),
              trailing: Text('05:10'),
            ),
            chatPhone("Hisyam", "Dimana posisi?", "07:06", Icons.done_all, Colors.blue, NetworkImage("https://i.postimg.cc/3wxWvMPM/panorama-alam-terasiring-di-desa-pendoworejo-20170608-223549.jpg")),
            chatPhone("Sumartatik", "Besok jadi ?", "12:24", Icons.done, Colors.grey, NetworkImage("https://i.postimg.cc/0yQqG82C/gambar1.jpg")),
            chatPhone("Gabriel", "Iya kesana", "10:18", Icons.done_all, Colors.grey, NetworkImage("https://i.postimg.cc/QC32F7Mf/download.jpg")),
            chatPhone("Furqonal", "Besok les ya", "08:04", Icons.done, Colors.grey, NetworkImage("https://i.postimg.cc/8PdCXPGQ/images-1.jpg")),
            chatPhone("Awaliya", "Hehehhe", "22:12", Icons.done, Colors.grey, NetworkImage("https://i.postimg.cc/rpd5xkL0/01.jpg")),
            chatPhone("Devy", "Ketemu di perpus", "18:02", Icons.done, Colors.grey, NetworkImage("https://i.postimg.cc/dVk5K1s3/boneka-kucing-ukuran-besar-simulasi-dengan-suara-untuk-anak-anak.jpg")),
            chatPhone("Hisyam", "Udah ngerjakan tugas nya ?", "11:23", Icons.done_all, Colors.blue, NetworkImage("https://i.postimg.cc/6pVCh07w/Image-2022-05-31-at-13-21-54.jpg")),
            chatPhone("Gita", "Cara nya membuat anyamannya gimana?", "11:14", Icons.done_all, Colors.blue, NetworkImage("https://i.postimg.cc/4y0p86h5/145951-tedy-bear.jpg")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: Icon(
          Icons.chat_bubble,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget chatPhone(String name, String des, String time, IconData iconSitus, Color iconColor, NetworkImage img) {
    return Card(
      margin: EdgeInsets.only(bottom: 0.9),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: img,
          radius: 30,
        ),
        title: Text(
          name,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        subtitle: Row(children: [
          Icon(
            iconSitus,
            size: 16,
            color: iconColor,
          ),
          SizedBox(width: 5),
          Text(
            des,
            style: TextStyle(
              fontSize: 13,
            ),
          ),
        ]),
        trailing: Text(time),
      ),
    );
  }
}
