import 'package:flutter/material.dart';
import 'package:example/core.dart';

class LtfmProductFormView extends StatefulWidget {
  const LtfmProductFormView({Key? key}) : super(key: key);

  Widget build(context, LtfmProductFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtfmProductForm"),
        actions: [
          //! 5. Tambahkan tombol Save
          //! 6. Beri padding/margin pada tombol Save sebanyak 10
          //! 7. Panggil controller.save() ketika tombol di klik
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: IconButton(
                onPressed: () {
                  controller.save();
                },
                icon: const Icon(Icons.save)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              //! 1. Buat sebuah Card, tambahkan Column di dalamnya
              //! 2. Tambahkan padding.all 20.0
              //! 3. Di dalam column yang ada di dalam Card, tambahkan field ini:
              //? textfield product name
              //? textfield price (hanya bisa menerima angka)
              //? textfield description (textfield dengan maxlines: 15)
              //! 4. Tambahkan dropdown untuk memilih category, gunakan kode ini:
              /*
              QDropdownField(
                label: "Category",
                hint: "Your product category",
                validator: Validator.required,
                items: const [
                  {
                    "label": "Food",
                    "value": 1,
                  },
                  {
                    "label": "Drink",
                    "value": 2,
                  },
                  {
                    "label": "Main Course",
                    "value": 3,
                  }
                ],
                onChanged: (value, label) {},
              ),
              */
              //! 5. Tambahkan radio untuk menentukan status product, gunakan kode ini:
              /*
              QRadioField(
                label: "Status",
                validator: Validator.atLeastOneitem,
                items: const [
                  {
                    "label": "Published",
                    "value": "published",
                  },
                  {
                    "label": "Draft",
                    "value": "draft",
                  }
                ],
                onChanged: (value, label) {},
              ),
             */
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(children: [
                    QTextField(
                      label: 'Product Name',
                      hint: 'Your Product Name',
                      onChanged: (value) {},
                    ),
                    TextFormField(
                        keyboardType: TextInputType.number,
                        maxLength: 20,
                        decoration: const InputDecoration(
                          labelText: 'Price',
                          labelStyle: TextStyle(
                            color: Colors.blueGrey,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueGrey,
                            ),
                          ),
                          suffixIcon: Icon(
                            Icons.text_format,
                          ),
                          helperText: 'Product Price',
                        ),
                        onChanged: (value) {}),
                    TextFormField(
                        maxLength: 15,
                        decoration: const InputDecoration(
                          labelText: 'Description',
                          labelStyle: TextStyle(
                            color: Colors.blueGrey,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueGrey,
                            ),
                          ),
                          suffixIcon: Icon(
                            Icons.text_format,
                          ),
                          helperText: 'Product Description',
                        ),
                        onChanged: (value) {}),
                    QDropdownField(
                      label: "Category",
                      hint: "Your product category",
                      validator: Validator.required,
                      items: const [
                        {
                          "label": "Food",
                          "value": 1,
                        },
                        {
                          "label": "Drink",
                          "value": 2,
                        },
                        {
                          "label": "Main Course",
                          "value": 3,
                        }
                      ],
                      onChanged: (value, label) {},
                    ),
                    QRadioField(
                      label: "Status",
                      validator: Validator.atLeastOneitem,
                      items: const [
                        {
                          "label": "Published",
                          "value": "published",
                        },
                        {
                          "label": "Draft",
                          "value": "draft",
                        }
                      ],
                      onChanged: (value, label) {},
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LtfmProductFormView> createState() => LtfmProductFormController();
}
