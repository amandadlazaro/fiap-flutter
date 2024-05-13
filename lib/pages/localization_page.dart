import 'package:fiap_flutter/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fiap_flutter/controllers/imc_controller.dart';
import 'package:provider/provider.dart';

class LocalizationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Localização"),
      ),
      body:  Container(
          color: Colors.white,
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            insidePadding(
                Text("Oi, Guardião!",
                    style: Theme.of(context).textTheme.headlineMedium),
                bottomPadding: 50),
            insidePadding(
                Text("Você está verificando a localização  de Thor",
                    style: Theme.of(context).textTheme.titleLarge),
                bottomPadding: 50),
            insidePadding(
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Thor",
                                  style: TextStyle(
                                      color: Colors.lightGreen,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30)),
                            ],
                          ),
                        ),
                        CircleAvatar(
                          backgroundImage: AssetImage("images/download.jpeg"),
                          radius: 24,
                        )
                      ],
                    )
                  ],
                ),
                bottomPadding: 20),
            insidePadding(
                Container(
                  height: 100,
                  color: Colors.redAccent,
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  icon: Icon(Icons.gps_off),
                                  color: Colors.white,
                                  onPressed: () {},
                                ),
                                const Text("No momento o Thor está: Fora de casa",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                bottomPadding: 15),
            insidePadding(
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/localizacao.jpeg'),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.rectangle,
                  ),
                ),
                bottomPadding: 15),
            insidePadding(
                const Text(
                    "Av. Paulista, 1106 - Bela Vista, São Paulo - SP, 01311-000",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15)),
                bottomPadding: 60),
          ])),
    );
  }
}
