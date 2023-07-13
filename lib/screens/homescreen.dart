import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}



class _homeState extends State<home> {

  bool isActive = true;
  final controller = TorchController();





  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color(0xFF020222),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Image.asset(isActive ?  'assets/images/ledoff.png'   : 'assets/images/ledon.png' ),

              SizedBox(height: 20),

              GestureDetector(
                onTap: () {
                  isActive = !isActive;
                  controller.toggle();
                  setState(() {});

                },

                  child:

                    Container(
                      width: 80,

                        child: Image.asset( isActive ? 'assets/images/btnoff.png' : 'assets/images/btnon.png' ))



              )

            ],
          ),
        ),
      ),
    );
  }









}


