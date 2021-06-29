import 'package:flutter/material.dart';
import 'package:flutter_auth_new/size_config.dart';

class AddItemForm extends StatelessWidget {
  const AddItemForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: getPropertionateScreenHeight(30)),
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.always,
              labelText: 'Nama Barang',
              hintText: 'Masukkan Nama Barang',
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: getPropertionateScreenHeight(30)),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Jual',
                    ),
                  ),
                ),
                SizedBox(
                  width: getPropertionateScreenWidht(10),
                ),
                Expanded(
                  flex: 1,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Beli',
                    ),
                  ),
                ),
              ],
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.always,
              labelText: 'Stok Barang',
              hintText: 'Masukkan Stok Barang',
            ),
          ),
        ],
      ),
    );
  }
}
