import 'package:flutter/material.dart';
import 'package:flutter_fast_track/core.dart';
import '../controller/product_daily_controller.dart';

class ProductDailyView extends StatefulWidget {
  const ProductDailyView({Key? key}) : super(key: key);

  Widget build(context, ProductDailyController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ProductDaily"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                '${controller.users.length}',
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ListView.builder(
                itemCount: controller.users.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var item = controller.users[index];
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        backgroundImage: NetworkImage(
                          '${item['avatar']}',
                        ),
                      ),
                      title: Text(item['first_name']),
                      subtitle: Text(item['last_name']),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ProductDailyView> createState() => ProductDailyController();
}
