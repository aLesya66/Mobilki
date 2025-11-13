import 'dart:ui';

import 'package:flutter/material.dart';
void main() => runApp(Mobilki());

class Mobilki extends StatelessWidget 
{
  const Mobilki({super.key});
  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://sun9-30.userapi.com/impg/98DfqxoZk0VmKthVGYxjAP--jgxosIOPdVTfLg/2alsnSuWD8M.jpg?size=864x1080&quality=95&sign=939c21abc41219352ec59b854c435692&c_uniq_tag=St3G6XJ7zvCLM_ET-zmJAIZLSiHYEQCPALtwqz4plWs&type=album"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              color: const Color.fromARGB(255, 83, 83, 83).withOpacity(0.5), 
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
              child: Container(
                color: const Color.fromARGB(8, 255, 255, 255),
              ),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              padding: EdgeInsets.only(top: 35, bottom: 5, left: 20),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Питерские\n",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        height: 1,
                      ),
                    ),
                    TextSpan(
                      text: "Закладки\n",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        height: 0.85,
                      ),
                    ),
                    TextSpan(
                      text: "для питербургеров",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 211, 211, 211),
                        fontSize: 15,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 500,
               padding: EdgeInsets.only(top: 40, bottom: 40, left: 20),
               child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: 
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(160, 229, 199, 162).withOpacity(0.4),
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                          elevation: 0,
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11),
                          ),
                        ),
                        child: Text("Дворцы"),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(160, 229, 199, 162).withOpacity(0.4),
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                          elevation: 0,
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11),
                          ),
                        ),
                        child: Text("Парки"),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(160, 229, 199, 162).withOpacity(0.4),
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                          elevation: 0,
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11),
                          ),
                        ),
                        child: Text("Арт&Лофт пространства"),
                      ),
                    ],
                  )
                )
            )
          ],
        ),
      ),
    );
  }
}