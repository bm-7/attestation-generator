import 'package:acfgen/widgets/editor.dart';
import 'package:flutter/material.dart';

class EditorScreen extends StatefulWidget {
  static const routeName = 'editor-screen';

  @override
  _EditorScreenState createState() => _EditorScreenState();
}

class _EditorScreenState extends State<EditorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Text(
          'Creation attestation',
          style: TextStyle(
            color: Colors.blueGrey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: EditorAttestation(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _validForm(context),
        label: Text('Générer'),
      ),
    );
  }

  void _validForm(BuildContext ctx) {
    Navigator.of(ctx).pop();
  }
}