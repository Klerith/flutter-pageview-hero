import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {

  final String _imageUrl;
  final String _texto;

  DetailScreen(this._texto, this._imageUrl);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(
        child: _crearCuerpo(),
      ),
    );
    
  }

  Widget _crearCuerpo() {

    return Column(
      children: <Widget>[
        Hero(
          child: Image.network(_imageUrl),
          tag: _texto,
        ),
        Expanded(
          child: Center(
            child: Text(_texto, style: TextStyle(
                fontSize: 40
              )
            ),
          )
        )
      ],
    );

  }

}