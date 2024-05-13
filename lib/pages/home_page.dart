import 'package:fiap_flutter/controllers/general_controller.dart';
import 'package:fiap_flutter/main.dart';
import 'package:fiap_flutter/rest/rest_client.dart';
import 'package:fiap_flutter/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

class HomePage  extends State<MyHomePage> {

  final logger = Logger();
  late RestClient client;

  @override
  void initState() {
    final dio = Dio();
    client = RestClient(dio);
    Get.put(client);
    Get.put(GeneralController());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          switch (index) {
            case (0):
              {
                Navigator.pushNamed(context, '/');
                return;
              }
            case (1):
              {
                Navigator.pushNamed(context, '/medical-history');
                return;
              }

            case (2):
              {
                Navigator.pushNamed(context, '/localization');
                return;
              }
            case (3):
              {
                Navigator.pushNamed(context, '/imc');
                return;
              }

            case (4):
              {
                Navigator.pushNamed(context, '/petshops');
                return;
              }
          }
        },
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(
              Icons.pets,
            ),
            label: 'Pets',
          ),
          NavigationDestination(
            icon: Icon(Icons.medical_services),
            label: 'Histórico Médico',
          ),
          NavigationDestination(
            icon: Icon(Icons.gps_fixed),
            label: 'Localização',
          ),
          NavigationDestination(
            icon: Icon(Icons.calculate_outlined),
            label: 'IMC',
          ),
          NavigationDestination(
            icon: Icon(Icons.shopping_cart),
            label: 'Petshops',
          ),
        ],
      ),
      body: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              insidePadding(
                  Text("Oi, Guardião!",
                      style: Theme.of(context).textTheme.headlineMedium),
                  bottomPadding: 64),
              insidePadding(
                  Text("Veja os Pets que você está mantendo seguro no momento",
                      style: Theme.of(context).textTheme.titleLarge),
                  bottomPadding: 60),
              insidePadding(Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black26,
                      style: BorderStyle.solid,
                      width: 0.5),
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: const EdgeInsets.only(bottom: 48.0),
                width: double.maxFinite,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
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
                                    Text("3 anos e 5 meses",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium),
                                    Text("Macho",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium),
                                    Text("Castrado",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium),
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
                    ),
                    const Divider(
                      color: Colors.black26,
                      height: 1,
                    ),
                    IntrinsicHeight(
                      child: Row(
                        children: [
                          Expanded(
                            child: TextButton(
                              style: const ButtonStyle(
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap),
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, '/medical-history');
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Histórico médico",
                                    style:
                                        Theme.of(context).textTheme.labelLarge),
                              ),
                            ),
                          ),
                          const VerticalDivider(
                            color: Colors.black26,
                            width: 1,
                          ),
                          Expanded(
                            child: TextButton(
                              style: const ButtonStyle(
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap),
                              onPressed: () {
                                Navigator.pushNamed(context, '/localization');
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Localização",
                                    style:
                                        Theme.of(context).textTheme.labelLarge),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
              insidePadding(
                  Text("Verifique o IMC do seu PET",
                      style: Theme.of(context).textTheme.titleLarge),
                  bottomPadding: 10),
              const SizedBox(height: 16),
              Center(
                  child: OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/imc');
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  child: const Text(
                    'Calcular IMC',
                    style: TextStyle(color: Colors.lightGreen, fontSize: 20.0),
                  ),
                ),
              )),
              const SizedBox(height: 30),
              insidePadding(
                  Text("Encontre os melhores petshops perto de você",
                      style: Theme.of(context).textTheme.titleLarge),
                  bottomPadding: 10),
              Center(

                  child:
                  OutlinedButton(
                    child: Container(
                      padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                      child: const Text(
                        'Petshops',
                        style: TextStyle(color: Colors.lightGreen, fontSize: 20.0),
                      ),
                    ),
                    onPressed: () { Navigator.pushNamed(context, '/petshops');},
                  ),

              )
            ],
          )),
    );
  }
}
