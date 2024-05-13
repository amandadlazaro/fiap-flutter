import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fiap_flutter/controllers/imc_controller.dart';
import 'package:provider/provider.dart';

class InsertData extends StatelessWidget {
  InsertData({super.key});

  final _formKey = GlobalKey<FormState>();

  final TextEditingController _pesoController = TextEditingController();
  final TextEditingController _alturaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dados"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _pesoController,
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty){
                    return "Por favor, informe o peso!";
                  }

                  return null;
                },
                decoration: const InputDecoration(
                    labelText: "Peso",
                    border: OutlineInputBorder()
                ),
              ),
              const SizedBox(height: 6,),
              TextFormField(
                controller: _alturaController,
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty){
                    return "Por favor, informe a altura!";
                  }

                  return null;
                },
                decoration: const InputDecoration(
                    labelText: "Altura",
                    border: OutlineInputBorder()
                ),
              ),
              const SizedBox(height: 24,),
              TextButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()){
                    Provider.of<IMCController>(context, listen: false).calcImc(
                        peso: double.parse(_pesoController.text),
                        altura: double.parse(_alturaController.text)
                    );

                    Navigator.pushNamed(context, '/result');
                  }
                },
                child: Container(
                  color: Colors.lightGreen,
                  padding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  child: const Text(
                    'Calcular',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
