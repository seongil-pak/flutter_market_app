import 'package:flutter/material.dart';
import 'package:flutter_market_app/core/validator_util.dart';
import 'package:flutter_market_app/ui/pages/product_write/widgets/product_catecory_box.dart';
import 'package:flutter_market_app/ui/pages/product_write/widgets/product_write_picture_area.dart';

class ProductWritePage extends StatefulWidget {
  @override
  State<ProductWritePage> createState() => _ProductWritePageState();
}

class _ProductWritePageState extends State<ProductWritePage> {
  final titleController = TextEditingController();
  final priceController = TextEditingController();
  final contentController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    titleController.dispose();
    priceController.dispose();
    contentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          appBar: AppBar(),
          body: Form(
            key: formKey,
            child: ListView(
              children: [
                //
                ProductWritePictureArea(),
                ProductCatecoryBox(),
                TextFormField(
                  controller: titleController,
                  decoration: InputDecoration(
                    hintText: '상품명을 입력해주세요',
                  ),
                  validator: ValidatorUtil.validatorTitle,
                ),
                TextFormField(
                  controller: priceController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: '가격을 입력해 주세요',
                  ),
                ),
                TextFormField(
                  controller: contentController,
                  decoration: InputDecoration(
                    hintText: '내용을 입력해 주세요',
                  ),
                )
              ],
            ),
          )),
    );
  }
}
