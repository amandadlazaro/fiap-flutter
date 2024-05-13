import 'package:fiap_flutter/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fiap_flutter/controllers/imc_controller.dart';
import 'package:provider/provider.dart';

class MedicalHistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Histórico médico"),
      ),
      body: Container(
        color: Colors.white,
        height: double.infinity,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                insidePadding(
                    Text("Oi, Guardião!",
                        style: Theme.of(context).textTheme.headlineMedium),
                    bottomPadding: 40),
                insidePadding(
                    Text("Você está verificando o histórico médico de Thor",
                        style: Theme.of(context).textTheme.titleLarge),
                    bottomPadding: 30),
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
                                          fontSize: 15)),
                                ],
                              ),
                            ),
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage("images/download.jpeg"),
                              radius: 24,
                            )
                          ],
                        )
                      ],
                    ),
                    bottomPadding: 40),
                insidePadding(Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black26,
                        style: BorderStyle.solid,
                        width: 0.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  margin: const EdgeInsets.only(bottom: 15),
                  width: double.infinity,
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
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
                                      icon: Icon(Icons.list_alt),
                                      color: Colors.black,
                                      onPressed: () {},
                                    ),
                                    const Text("Exames períodicos",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                    const Text("Em dia",
                                        style: TextStyle(
                                            color: Colors.lightGreen,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ]),
                )),
                insidePadding(Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black26,
                        style: BorderStyle.solid,
                        width: 0.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  margin: const EdgeInsets.only(bottom: 15),
                  width: double.infinity,
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
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
                                      icon: Icon(Icons.vaccines),
                                      color: Colors.black,
                                      onPressed: () {},
                                    ),
                                    const Text("Vacinas",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                    const Text("Em dia",
                                        style: TextStyle(
                                            color: Colors.lightGreen,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ]),
                )),
                insidePadding(Container(
                    color: Colors.white30,
                    width: double.infinity,
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                          icon: Icon(Icons.medication_liquid),
                          color: Colors.black,
                          onPressed: () {},
                        ),
                        const Text("HEMOGRAMA",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text("Feito em 31/02/2024"),
                        Divider(height: 0),
                        Text("Local: Clinica de Patas"),
                        const Text("Resultado do exame",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.lightGreen)),
                        insidePadding(
                          Text(
                              "Thor está com a saúde perfeita, não identificada anemia."),
                        ),
                        const Text("Tomou medicação?",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.lightGreen)),
                        Text("Não")
                      ],
                    )))
              ])
      ),
    );
  }
}
