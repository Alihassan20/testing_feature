import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class Premision extends StatefulWidget {
  const Premision({Key? key}) : super(key: key);

  @override
  _PremisionState createState() => _PremisionState();
}
class _PremisionState extends State<Premision> {
  @override
  void initState() {
    getPremision();
    super.initState();
  }
   getPremision()async{
    await Permission.photos.request();
    await Permission.camera.request();
    await Permission.phone.request();

   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container());
  }
}
