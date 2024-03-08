import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Utama'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/second');
            },
            child: Column(
              children: [
                Image.asset(
                  'images/7.jpg', // Gantilah dengan path gambar yang sesuai
                  width: 50,
                  height: 50,
                ),
                SizedBox(height: 10),
                Text('Kolom 1'),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/second');
            },
            child: Column(
              children: [
                Image.asset(
                  'images/7.jpg', // Gantilah dengan path gambar yang sesuai
                  width: 50,
                  height: 50,
                ),
                SizedBox(height: 10),
                Text('Kolom 2'),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/second');
            },
            child: Column(
              children: [
                Image.asset(
                  'images/7.jpg', // Gantilah dengan path gambar yang sesuai
                  width: 50,
                  height: 50,
                ),
                SizedBox(height: 10),
                Text('Kolom 3'),
              ],
            ),
          ),
          SizedBox(height: 20),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/second');
            },
            child: Column(
              children: [
                Image.asset(
                  'images/7.jpg', // Gantilah dengan path gambar yang sesuai
                  width: 50,
                  height: 50,
                ),
                SizedBox(height: 10),
                Text('Kolom 4'),
              ],
            ),
          ),
          // Tambahkan kolom lainnya sesuai kebutuhan
        ],
      ),
    );
  }
}
