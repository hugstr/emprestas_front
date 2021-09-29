import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget()
      : super(
          preferredSize: Size.fromHeight(250),
          child: Container(
            height: 250,
            child: Stack(
              children: [
                Container(
                  height: 161,
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  width: double.maxFinite,
                  decoration:
                      BoxDecoration(color: Color.fromRGBO(3, 2, 255, 1)),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 50, left: 40, right: 40),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Olá, usuário",
                          style: TextStyle(fontSize: 35, color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.network(
                              "https://picsum.photos/250?image=9",
                              height: 80,
                              width: 80,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
}
