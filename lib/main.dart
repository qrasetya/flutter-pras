import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BiodataForm(),
    );
  }
}

class BiodataForm extends StatefulWidget {
  @override
  _BiodataFormState createState() => _BiodataFormState();
}

class _BiodataFormState extends State<BiodataForm> {
  String _nama = '';
  String _tempatTanggalLahir = '';
  String _biodata = '';

  TextEditingController controllerNama = new TextEditingController();
  TextEditingController controllertempatTanggalLahir =
      new TextEditingController();
  TextEditingController controllerBiodata = new TextEditingController();

  void kirimdata() {
    setState(() {
      _nama = "${controllerNama.text}";
      _tempatTanggalLahir = "${controllertempatTanggalLahir.text}";
      _biodata = "${controllerBiodata.text}";
    });
  }

  void clear() {
    setState(() {
      controllerNama.clear();
      controllertempatTanggalLahir.clear();
      controllerBiodata.clear();
      _nama = "";
      _tempatTanggalLahir = "";
      _biodata = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
        title: Text("Form Biodata"),
      ),
      body: Container(
        margin: const EdgeInsets.all(30),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: controllerNama,
                autocorrect: false,
                autofocus: false,
                enableSuggestions: false,
                onSubmitted: (value) {
                  setState(() {
                    _nama = value;
                  });
                },
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Masukan Nama',
                ),
              ),
              Text(
                "Nama : $_nama",
                style: TextStyle(fontSize: 16.0),
              ),
              TextField(
                controller: controllertempatTanggalLahir,
                autocorrect: false,
                autofocus: false,
                enableSuggestions: false,
                onSubmitted: (value) {
                  setState(() {
                    _tempatTanggalLahir = value;
                  });
                },
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: "Masukan Tempat Lahir",
                ),
              ),
              Text(
                "Tempat Lahir : $_tempatTanggalLahir",
                style: TextStyle(fontSize: 16.0),
              ),
              TextField(
                controller: controllerBiodata,
                autocorrect: false,
                autofocus: false,
                enableSuggestions: false,
                onSubmitted: (value) {
                  setState(() {
                    _biodata = value;
                  });
                },
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: "Masukan Biodata",
                ),
              ),
              Text(
                "Biodata : $_biodata",
                style: TextStyle(fontSize: 16.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: kirimdata,
                    child: const Text(
                      "Submit",
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: clear,
                    child: const Text(
                      "Clear",
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellowAccent,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
