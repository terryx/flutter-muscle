import 'package:flutter/material.dart';

class TodoForm extends StatefulWidget {
  static const String routeName = 'todo_form';

  @override
  _TodoFormState createState() => _TodoFormState();
}

class _TodoFormState extends State<TodoForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final FocusNode titleFocusNode = FocusNode();
  final FocusNode descriptionFocusNode = FocusNode();

  bool isInit = true;
  TextEditingController titleController;

  Map<String, dynamic> field = <String, dynamic>{
    'id': '',
    'title': '',
  };

  @override
  void didChangeDependencies() {
    if (isInit) {
      titleController = TextEditingController(text: field['title']);
    }

    isInit = false;
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    titleFocusNode.dispose();
    descriptionFocusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo Form'),
      ),
      body: Form(
        key: formKey,
        child: ListView(
          children: <Widget>[
            Card(
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Title',
                  border: InputBorder.none,
                ),
                controller: titleController,
                textInputAction: TextInputAction.next,
              ),
            )
          ],
        ),
      ),
    );
  }
}
