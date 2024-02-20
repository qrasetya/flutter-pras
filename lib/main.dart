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
  String _tempatLahir = '';
  String _biodata = '';

  TextEditingController controllerNama = new TextEditingController();
  TextEditingController controllertempatLahir = new TextEditingController();
  TextEditingController controllerBiodata = new TextEditingController();

  void kirimdata() {
    setState(() {
      _nama = "${controllerNama.text}";
      _tempatLahir = "${controllertempatLahir.text}";
      _biodata = "${controllerBiodata.text}";
    });
  }

  void clear() {
    setState(() {
      _nama = "";
      _tempatLahir = "";
      _biodata = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Biodata"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30),
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
              ),
              Text("Nama : $_nama"),
              TextField(
                controller: controllertempatLahir,
                autocorrect: false,
                autofocus: false,
                enableSuggestions: false,
                onSubmitted: (value) {
                  setState(() {
                    _tempatLahir = value;
                  });
                },
              ),
              Text("Tempat Lahir : $_tempatLahir"),
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
              ),
              Text("Biodata : $_biodata"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed: kirimdata, child: Text("Submit")),
                ],
              ),
              ElevatedButton(onPressed: clear, child: Text("Clear")),
            ],
          ),
        ),
      ),
    );
  }
}
