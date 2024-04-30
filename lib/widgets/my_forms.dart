//*************   © Copyrighted by 1 More Code. *********************

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyForms extends StatefulWidget {
  const MyForms({super.key});

  static TextEditingController nameController =
      TextEditingController(text: "Test");
  static TextEditingController phoneController =
      TextEditingController(text: "3123123");

  @override
  State<MyForms> createState() => _MyFormsState();
}

class _MyFormsState extends State<MyForms> {
  bool isEnabled = false;
  String selectedGender = "";

  List<String> selectedCheckBox = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forms"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          IconButton(
              onPressed: () {
                FocusScope.of(context).unfocus();
              },
              icon: const Icon(Icons.close)),
          TextField(
            minLines: 1,
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.next,
            controller: MyForms.nameController,
            maxLength: 10,
            keyboardAppearance: Brightness.light,
            obscureText: true,
            decoration: const InputDecoration(
              label: Text("Name"),
              helperText: "Enter Your Name",
              prefix: Icon(Icons.person),
              suffix: Icon(Icons.check),
              enabled: true,
            ),
          ),
          TextField(
            keyboardType: TextInputType.phone,
            textInputAction: TextInputAction.done,
            controller: MyForms.phoneController,
          ),
          SizedBox(
            height: 16,
          ),
          CupertinoTextField(
            placeholder: "Enter Name",
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(10)),
            minLines: 2,
            maxLines: 4,
          ),
          TextButton(
              onPressed: () {
                print("Name: ${MyForms.nameController.text}");
                print("Phone: ${MyForms.phoneController.text}");
              },
              child: const Text("Submit")),
          TextButton(
              onPressed: () {
                MyForms.nameController.clear();
                MyForms.phoneController.clear();
              },
              child: const Text("Clear")),
          Text("Switch Buttons"),
          CupertinoSwitch(
              value: isEnabled,
              onChanged: (val) {
                setState(() {
                  isEnabled = val;
                });
              }),
          Switch(
            value: isEnabled,
            onChanged: (val) {
              setState(() {
                isEnabled = val;
              });
            },
          ),
          Text("Radio Buttons"),
          RadioListTile(
              value: 'Male',
              groupValue: selectedGender,
              onChanged: (String? val) {
                print(val);
                setState(() {
                  selectedGender = val!;
                });
              }, title: Text("Male"),),
          RadioListTile(
              value: 'Female',
              groupValue: selectedGender,
              onChanged: (val) {
                print(val);
                setState(() {
                  selectedGender = val!;
                });
              }, title: Text("Female"),),
          Text("Check Box Buttons"),
          CheckboxListTile(
            value: selectedCheckBox.contains("WhatsApp"),
            onChanged: (val) {
              setState(() {
                if(val == true){
                  selectedCheckBox.add("WhatsApp");
                }else{
                  selectedCheckBox.remove("WhatsApp");
                }
              });
            },
            title: Text("WhatsApp"),
          ),
          CheckboxListTile(
            value: selectedCheckBox.contains("Facebook"),
            onChanged: (val) {
              setState(() {
                if(val == true){
                  selectedCheckBox.add("Facebook");
                }else{
                  selectedCheckBox.remove("Facebook");
                }
              });
            },
            title: Text("Facebook"),
          ),
          CheckboxListTile(
            value: selectedCheckBox.contains("Instagram"),
            onChanged: (val) {
              setState(() {
                if(val == true){
                  selectedCheckBox.add("Instagram");
                }else{
                  selectedCheckBox.remove("Instagram");
                }
              });
            },
            title: Text("Instagram"),
          ),
          Text(selectedCheckBox.toString())
        ],
      ),
    );
  }
}
