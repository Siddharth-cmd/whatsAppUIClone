import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/my_button.dart';
import 'package:whatsapp_clone/shared/colors.dart';

class LoginScreen extends StatefulWidget {
  static String id = "/LoginScreen";

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController? _textEditingController;
  Country? country;

  @override
  void initState() {
    _textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _textEditingController!.dispose();
    super.dispose();
  }

  void pickCountry() {
    showCountryPicker(
      context: context,
      onSelect: (selectedCountry) {
        setState(() {
          country = selectedCountry;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Enter your phone number"),
        elevation: 0,
        backgroundColor: KbackgroundColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "WhatsApp will use your phone number for verification",
          ),
          const SizedBox(
            height: 20.0,
          ),
          TextButton(
            onPressed: pickCountry,
            child: const Text("Pick country"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (country != null) Text("+${country!.phoneCode}"),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                width: size.width * 0.7,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      hintText: "enter your phone number"),
                ),
              ),
            ],
          ),
          Flexible(
            flex: 1,
            child: Container(),
          ),
          MyButton(
            label: "Next",
            onpress: () {},
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
