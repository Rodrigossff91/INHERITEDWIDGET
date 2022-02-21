import 'package:flutter/material.dart';
import 'package:inherited_widget/model/use_model.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var user = UserModel.of(context);
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(user.imgAvatar),
          ),
          Text(user.name),
          Text(user.birthDate)
        ],
      ),
    );
  }
}
