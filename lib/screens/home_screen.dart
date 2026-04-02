import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> medicines = [];
  final TextEditingController _controller = TextEditingController();

  void _addMedicine() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        medicines.add(_controller.text);
        _controller.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medicines'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: medicines.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(medicines[index]),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(hintText: 'Enter medicine name'),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: _addMedicine,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}