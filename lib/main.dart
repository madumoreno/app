import 'package:flutter/material.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PaginaHome(),
    );
  }
}

class PaginaHome extends StatefulWidget {
  const PaginaHome({Key? key}) : super(key: key);

  @override
  State<PaginaHome> createState() => _PaginaHomeState();
}

class _PaginaHomeState extends State<PaginaHome> {
  int contador = 0;
  void aluno_entrou() {
    setState(() {
      contador++;
    });
    print(contador);
  }

  void aluno_saiu() {
    setState(() {
      if(contador>0){
      contador--;
      }
    });
    print(contador);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Feito por: Madu"),
      ),
      drawer: const Drawer(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/imagens/teste.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Comportamento dos alunos",
              style: TextStyle(
                fontSize: 35,
                color: Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.w500,
                letterSpacing: 6,
              ),
            ),

          Text(
            "$contador",
            style: const TextStyle(
              fontSize: 35,
              color:Color.fromARGB(156, 255, 255, 255),
              fontWeight: FontWeight.w500,
              letterSpacing: 6,
            ),
          ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: aluno_entrou,
                  child: const Text("Entrou"),
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(156, 0, 0, 0),
                    primary: const Color.fromARGB(255, 255, 255, 255),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),

              const SizedBox(
                width: 64,
              ),
              TextButton(
                onPressed: aluno_saiu,
                child: const Text("Saiu"),
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(156, 0, 0, 0),
                  primary: const Color.fromARGB(255, 255, 255, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                 ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
