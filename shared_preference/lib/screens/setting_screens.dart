import 'package:flutter/material.dart';
import 'package:shared_preference/widgets/maximum_page_size_field.dart';
import 'package:shared_preference/widgets/notification_field.dart';
import 'package:shared_preference/widgets/save_button.dart';
import 'package:shared_preference/widgets/signature_filed.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({
    super.key,
  });

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  final maximumPageSizeController = TextEditingController();
  final signatureController = TextEditingController();

  @override
  void dispose() {
    maximumPageSizeController.dispose();
    signatureController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Setting Page'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const NotificationField(),
              MaximumPageSizeField(
                controller: maximumPageSizeController,
              ),
              SignatureField(
                controller: signatureController,
              ),
              SaveButton(
                onPressed: () => saveAction(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void saveAction() {}
}
