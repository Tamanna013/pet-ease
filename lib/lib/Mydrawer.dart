import 'package:flutter/material.dart';
import 'package:flutter_application/detailsupdate.dart'; // Ensure this is correct
//import 'package:provider/provider.dart';

// UserModel class for managing user details
class UserModel with ChangeNotifier {
  var _email = ''; // Changed variable name to follow Dart conventions
  var _name = ''; // Changed variable name to follow Dart conventions

  String get email => _email;
  String get name => _name;

  void setEmail(String email) {
    _email = email;
    notifyListeners();
  }

  void setName(String name) {
    _name = name;
    notifyListeners();
  }
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    // Using Provider to access UserModel
    //final userModel = Provider.of<UserModel>(context);

    return Drawer(
      child: ListView(
        children: <Widget>[
          const DrawerHeader(
            padding: EdgeInsets.only(top: 30),
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 140, 164, 176)),
            child: Text(
              'Details',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.w800,

              ),
            ),
          ),
          /*  UserAccountsDrawerHeader(
            accountName: Text(
              userModel.name,
              style: const TextStyle(color: Colors.white),
            ),
            accountEmail: Text(
              userModel.email,
              style: const TextStyle(color: Colors.white),
            ),
          ),*/
          const Divider(),
          ListTile(
             leading: const Icon(Icons.badge),
            title: const Text('Pet Details'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Detailsform()),
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.plus_one),
            title: const Text('Add a new account'),
            onTap: () {
              // Implement your navigation or action here
            },
          ),
        ],
      ),
    );
  }
}

// Updated method to create a custom ListTile
Widget customListTile(String title) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.blue, borderRadius: BorderRadius.circular(5)),
    child: ListTile(
      title: Text(title, style: TextStyle(color: Colors.white)),
      // You can add more properties here if needed
    ),
  );
}
