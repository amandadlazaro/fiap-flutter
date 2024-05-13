import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:fiap_flutter/controllers/general_controller.dart';

class PetShopPage extends GetView<GeneralController> {
  const PetShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<GeneralController>().getRepoGeneral();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Petshops"),
      ),
      body: controller.obx(
        (state) => ListView.separated(
          itemBuilder: (context, index) => InkWell(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: Icon(Icons.shopping_cart, color: Colors.lightGreen,),
                  title: Text(" ${state?[index].name ?? 0}", style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
                  subtitle: Text("Endereço: ${state?[index].address ?? 0}"),
                ),
                Image.network("${state?[index].image ?? 0}"),
              ],
            ),
          ),
          separatorBuilder: (context, index) => Divider(
            height:15,
          ),
          itemCount: state?.length ?? 0,
        ),
        onLoading: const CircularProgressIndicator(),
        onEmpty: const Text('No data found'),
        onError: (error) => Text(error ?? "Error"),
      ),
    );
  }
}
