import 'package:flutter/material.dart';
import 'package:flutter_application/Mydrawer.dart';

//import 'package:petease/drawer.dart';
//import 'petdata.dart';
void main() {
  runApp(detailsdisplay());
}

class detailsdisplay extends StatelessWidget {
  WidgetBuild(BuildContext context) {
    return MaterialApp(
      title: 'Pet details',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Pet Ease',
              style: TextStyle(
                fontWeight: FontWeight.w800,
              )),
          backgroundColor: Colors.blueGrey,
        ),
        drawer: const MyDrawer(),
      ),
    );
  }

  @override
  Widget build(Object context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class Detailsform extends StatefulWidget {
  @override
  _detailsdisplayState createState() => _detailsdisplayState();
}

class _detailsdisplayState extends State<Detailsform> {
  final _formKey = GlobalKey<FormState>();
  String petname = '';
  String breed = '';
  String pettype = '';
  int age = 0;
  int code = 0;
  String Healthissues = '';

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      print('Pet name:$petname');
      print('Pet type:$pettype');
      print('Pet age:$breed');
      print('Pet name:$age');
      print('Pet name:$Healthissues');
    }
  }

  final TextEditingController nameController = TextEditingController();
  final TextEditingController breedController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController pettypeController = TextEditingController();
  final TextEditingController healthController = TextEditingController();
  final TextEditingController codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'PetEase',
      )),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            TextFormField(
                // controller: nameController,
                decoration: InputDecoration(labelText: 'Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
                onChanged: (value) {
                  petname = value;
                }),
            TextFormField(
                controller: breedController,
                decoration: InputDecoration(labelText: 'Breed'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the breed';
                  }
                  return null;
                },
                onChanged: (value) {
                  pettype = value;
                }),
            TextFormField(
                // controller: healthController,
                decoration: InputDecoration(labelText: 'Health issues'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the breed';
                  }
                  return null;
                },
                onChanged: (value) {
                  breed = value;
                }),
            TextFormField(
              // controller: pettypeController,
              decoration: InputDecoration(labelText: 'Type of pet'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter the type of pet';
                }
                return null;
              },
              onChanged: (value) {
                pettype = value;
              },
            ),
            TextFormField(
                controller: ageController,
                decoration: InputDecoration(labelText: 'Age'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the age';
                  }
                  return null;
                },
                onChanged: (value) {
                  age = int.tryParse(value) ?? 0;
                }),
            TextFormField(
                controller: codeController,
                decoration: InputDecoration(
                    labelText: 'Unique numeric code (Pet code)'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a unique numeric code';
                  }
                  return null;
                },
                onChanged: (value) {
                  code = int.tryParse(value) ?? 0;
                }),
            SizedBox(height: 20),
            ElevatedButton(onPressed: _submitForm, child: Text('Submit')),
          ],
        ),
      ),
    );
  }
}
