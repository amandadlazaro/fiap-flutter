import 'package:fiap_flutter/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fiap_flutter/controllers/imc_controller.dart';
import 'package:provider/provider.dart';

class ResultIMC extends StatelessWidget {
  const ResultIMC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Resultado"),
        ),
        body: Center(
          child: ListView(
            children: [
              Column(
                children: [
                  const Text("Seu PET está:"),
                  Text(
                      Provider.of<IMCController>(context, listen: false)
                          .resultado,
                      style: Theme.of(context).textTheme.titleMedium, ),
                  Divider(height: 30),
                  insidePadding(
                      Text("Mas lembre-se",
                          style: Theme.of(context).textTheme.titleLarge),
                      bottomPadding: 30),
                  const Text(
                      "Este é um método para você ter uma ideia se o seu cão está obeso ou não, assim como feito para os humanos. Afinal, o cálculo caseiro sobre a obesidade do seu cão não é o ideal."),
                  insidePadding(
                      Text("O que é o ideal?",
                          style: Theme.of(context).textTheme.titleLarge),
                      bottomPadding: 30),
                  const Text(
                      "Segundo alguns veterinários, o cálculo ideal é o ECC, Escore de Condição Corporal, que avalia as condições corporais do cão por meio de exames feitos por apalpação da gordura, em locais estratégicos. É como um exame clínico que mede numa escala de 1 a 9 e dividido assim: "),
                ],
              ),
              Divider(height: 30),
              ListTile(
                leading: CircleAvatar(
                  child: Text('1'),
                  backgroundColor: Colors.lightGreen,
                  foregroundColor: Colors.black,
                ),
                title: Text(' 1 a 3 (abaixo do peso)'),
                subtitle: Text(
                    'em diferentes graus, o cachorro apresenta costelas, vértebras e ossos dos quadris visíveis, além da reentrância abdominal bem evidente;'),
              ),
              Divider(height: 0),
              ListTile(
                leading: CircleAvatar(
                    child: Text('2'),
                    backgroundColor: Colors.lightGreen,
                    foregroundColor: Colors.black),
                title: Text('4 a 6 (peso adequado)'),
                subtitle: Text(
                    'as costelas são pouco ou nada visíveis, mas podem ser facilmente sentidas na palpação. A reentrância abdominal existe, mas é pouco acentuada'),
              ),
              Divider(height: 0),
              ListTile(
                leading: CircleAvatar(
                  child: Text('3'),
                  backgroundColor: Colors.lightGreen,
                  foregroundColor: Colors.black,
                ),
                title: Text('7 a 9 (acima do peso)'),
                subtitle: Text(
                    "|além de pouco visíveis, as costelas dificilmente são sentidas na palpação, devido ao excesso de gordura. Além disso, o pet não apresenta reentrância abdominal."),
                isThreeLine: true,
              ),
              Divider(height: 0),
            ],
          ),
        ));
  }
}
