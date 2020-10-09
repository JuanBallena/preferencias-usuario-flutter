import 'package:flutter/material.dart';
import 'package:user_preferences/src/pages/widgets/menu_widget.dart';
import 'package:user_preferences/src/share_preferences/user_preference.dart';

class HomePage extends StatelessWidget {
  
  static final String routeName = 'home';
  final prefs = new PreferenciasUsuario();

  @override
  Widget build(BuildContext context) {

    prefs.ultimaPagina = HomePage.routeName;

    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias'),
        backgroundColor: (prefs.colorSecundario) ? Colors.teal : Colors.amber,
      ),
      drawer: MenuWidget(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Color secundario: ${ prefs.colorSecundario }'),
            Divider(),
            Text('Género: ${ prefs.genero }'),
            Divider(),
            Text('Usuario:  ${ prefs.nombreUsuario }'),
            Divider(),
          ],
        ),
      )
    );
  }
}