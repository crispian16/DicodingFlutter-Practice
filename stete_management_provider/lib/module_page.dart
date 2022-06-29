import 'package:flutter/material.dart';
import 'package:stete_management_setstate/done_module_list.dart';
import 'package:stete_management_setstate/module_list.dart';

class ModulePage extends StatefulWidget {
  const ModulePage({Key? key}) : super(key: key);

  @override
  State<ModulePage> createState() => _ModulePageState();
}

class _ModulePageState extends State<ModulePage> {
  final List<String> doneModuleList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Memulai Pemograman Dengan Dart'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DoneModuleList(),
                ),
              );
            },
            icon: Icon(Icons.done),
          )
        ],
      ),
      body: ModuleList(),
    );
  }
}
