import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../models/user.dart';
import '../services.dart';

class HomeMaterial extends StatefulWidget {
  final String title;
  final WebSocketChannel channel;

  HomeMaterial({Key key, @required this.title, @required this.channel})
      : super(key: key);

  @override
  _HomeMaterialState createState() => _HomeMaterialState();
}

class _HomeMaterialState extends State<HomeMaterial> {
  TextEditingController _controller = TextEditingController();

  final _user = User();
  final _formKey = GlobalKey<FormState>();
  List<String> _assetPairs = [];
  String dropdownValue = 'XBT/USD';

  Future loadAssetPairs() async {
    Services.fetchAssetPairs().then((assetPairs) {
      for (int i = 0; i < assetPairs.length; i++) {
        if (null != assetPairs[i]['wsname']) {
          _assetPairs.add(assetPairs[i]['wsname'].toString());
        }
      }
      setState(() {
        dropdownValue = _assetPairs[0];
      });
      print(_assetPairs);
    });
  }

  @override
  void initState() {
    super.initState();
    this.loadAssetPairs();
  }

  var jsonData =
      '{"event": "subscribe", "reqid": 42, "pair": ["XBT/USD","XBT/EUR"], "subscription": {"name": "*"}}';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(widget.title),
        ),
        backgroundColor: Colors.green[600],
      ),
      body: Center(
        child: DropdownButton<String>(
          value: dropdownValue,
          onChanged: (String newValue) {
            setState(() {
              dropdownValue = newValue;
            });
          },
          items: _assetPairs.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }

  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      widget.channel.sink.add(_controller.text);
//      widget.channel.sink.add(jsonData);
    }
  }

  @override
  void dispose() {
    widget.channel.sink.close();
    super.dispose();
  }
}
