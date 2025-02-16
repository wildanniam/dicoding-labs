import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _fileNameController = TextEditingController();
  final _contentsController = TextEditingController();

  @override
  void dispose() {
    _fileNameController.dispose();
    _contentsController.dispose();
    super.dispose();
  }

  final _textStyle = const TextStyle(
    fontSize: 14,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('HomeScreen'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: _createNewFile,
                    child: Text(
                      'New File',
                      style: _textStyle,
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: _openFile,
                    child: Text(
                      'Open File',
                      style: _textStyle,
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: _saveFile,
                    child: Text(
                      'Save File',
                      style: _textStyle,
                    ),
                  ),
                ),
                Expanded(
                  child: TextField(
                    controller: _fileNameController,
                    style: _textStyle,
                    decoration: InputDecoration(
                      hintText: "File name.txt",
                    ),
                  ),
                ),
              ],
            ),
            SizedBox.square(dimension: 16),
            TextField(
              controller: _contentsController,
              maxLines: null,
              minLines: 6,
              keyboardType: TextInputType.multiline,
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                hintText: "Input your text here.",
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _createNewFile() {}

void _saveFile() async {}

void _openFile() async {}
