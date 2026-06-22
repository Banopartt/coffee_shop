import "package:cofe_shop/dummy_data.dart";
import "package:flutter/material.dart";
import "../models/category_model.dart";

class CategoryForm extends StatefulWidget {
  static const routeName = "/category-form";
  const CategoryForm({super.key});

  @override
  State<CategoryForm> createState() => _CategoryFormState();
}

class _CategoryFormState extends State<CategoryForm> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _idController = TextEditingController();
  Color _color = Colors.orange;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Category"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _idController,
                decoration: InputDecoration(
                  labelText: "Category ID",
                  hintText: "Enter a unique ID like 'c1', 'c2'...",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter a category ID";
                  }
                  if (!RegExp(r'^[a-zA-Z0-9]+$').hasMatch(value)) {
                    return 'ID can only contain letters and numbers';
                  }
                  if (DUMMY_CATEGORIES.any((cat) => cat.id == value)) {
                    return 'This ID is alredy taken.';
                  }
                  return null;

                },
                onSaved: (value) {
                  setState(() {
                    _idController.text = value!;
                  });
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _titleController,
                decoration: InputDecoration(
                  labelText: "Category Title",
                  hintText: "Enter a title for the category",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter a category title";
                  }
                  return null;
                },
                onSaved: (value) {
                  setState(() {
                    _titleController.text = value!;
                  });
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Category Color",
                  hintText: "Enter a hex color code, e.g. #FF5733",
                ),
                validator: (value) {
                  if (value!.trim().isEmpty ||
                      !RegExp(
                        r'^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$',
                      ).hasMatch(value)) {
                    return "Please enter a valid hex color code";
                  }
                  return null;
                },
                onSaved: (value) {
                  setState(() {
                    _color = Color(int.parse(value!.substring(1), radix: 16));
                  });
                },
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    DUMMY_CATEGORIES.add(
                      Category(
                        id: _idController.text,
                        title: _titleController.text,
                        color:  _color)
                    );
                    Navigator.of(
                      context,
                    ).pop(); // Close the form after submission
                  }
                },
                child: Text("Add Category"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}