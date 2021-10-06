import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget()
      : super(
          preferredSize: Size.fromHeight(150),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.blue,
            automaticallyImplyLeading: false,
            title: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0, left: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'Bem vindo, ',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                          children: const <TextSpan>[
                            TextSpan(
                              text: 'hugstr',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          "https://github.com/hugstr.png",
                          height: 50,
                          width: 50,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
}
