import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _crearImagen(),
              _crearTitulo(),
              _crearAcciones(),
              _crearTexto(),
              _crearTexto(),
              _crearTexto(), 
              _crearTexto()
            ],
          ),

        ));
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(
            'http://betterhomesmcr.com/wp-content/uploads/2015/02/Landscape_01.jpg'),
            height: 200.0,
            fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Lago con un puente', style: estiloTitulo),
                  SizedBox(height: 7.0),
                  Text('Lago que se encuentra en Alemania',
                      style: estiloSubTitulo),
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text(
              '41',
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'Share'),


      ],
    );
  }


  Widget _accion(IconData icon, String texto){
    return Column(
        children: <Widget>[
          Icon(icon, color: Colors.blue, size: 40.0),
          SizedBox(height: 5.0,),
          Text(texto, style: TextStyle(fontSize: 15.0, color: Colors.blue),)
        ],
      );
  }

 Widget _crearTexto(){
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Text(
          'Esse consequat anim Lorem ad aliqua dolore. Non consequat ullamco proident sit elit veniam sit sint. Labore culpa consequat magna pariatur occaecat quis. Tempor commodo nisi ut sit. Ut consequat voluptate reprehenderit aliqua ipsum id. Culpa do irure dolore commodo fugiat deserunt velit adipisicing officia.',
          textAlign: TextAlign.justify,),
      ),
    );
  }

}
