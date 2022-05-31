import 'package:flutter/material.dart';
import 'package:check3cp/controllers/cores_controller.dart';

 void main() => runApp(Cores());

 class Cores extends StatelessWidget {
  const Cores({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cores',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


@override
  void initState() {
    super.initState();
  }

  Color CorPrincipal = Colors.green;
  String NomePrincipal = 'Gustavo';

  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return new Scaffold(
        appBar: AppBar(
          title: Text('Checkpoint 3 Cross Platform - Gustavo Ourique'),
          backgroundColor: CorPrincipal,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(NomePrincipal,
            style: TextStyle(
              fontSize: 50,
              color: CorPrincipal,
              ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
              ),
              ElevatedButton(

                onPressed: () {
                setState(() {

                  if (NomePrincipal == 'Gustavo'){
                    NomePrincipal = 'Ourique';
                  } else {
                    NomePrincipal = 'Gustavo';
                  }
                  },
                  
              );
              },
              child: Text(
                   'Trocar Nome',
                   style: TextStyle(
                     fontSize: 20,
                     )
                 ),
                 style: ElevatedButton.styleFrom(
                   primary: Colors.green, )
          ),
          
            Padding(
                padding: EdgeInsets.all(10),
              ),
          
          ElevatedButton(
            onPressed: () {
              setState(() {
                     if (CorPrincipal == Colors.green) {
                    CorPrincipal = Colors.black;
                  } else {
                    CorPrincipal = Colors.green;
                  }
              });
            },
            child: Text(
              'Trocar Cores',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
            ),
            )]
          )
          )
          );
                }
    
  }
