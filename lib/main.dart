import 'package:control_usuarios/pantallas/FormularioAltaUsuario.dart';
import 'package:control_usuarios/pantallas/tabla_Usuarios.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 236, 251, 253)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Control de usarios'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.onInverseSurface,
          title: Text(widget.title),
        ),
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          selectedIndex: currentPageIndex,
          indicatorColor: const Color.fromARGB(255, 0, 204, 255),
          destinations: const [
            NavigationDestination(
                selectedIcon: Icon(Icons.home),
                icon: Icon(Icons.home_outlined),
                label: 'Home'),
            NavigationDestination(
                selectedIcon: Icon(Icons.card_membership),
                icon: Icon(Icons.card_membership_outlined),
                label: 'Alta usuarios'),
          ],
        ),
        body: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ListView(
              children: const [
                TablaUsuarios(),
              ],
            ),
          ),
          const FormularioUsuario(),
        ][currentPageIndex],
        // floatingActionButton: OrientationBuilder(
        //   builder: (context, orientation) {
        //     return Stack(
        //       children: [
        //         if (orientation == Orientation.portrait)
        //           Positioned(
        //               child: FloatingActionButton(
        //                   onPressed: () {}, child: const Icon(Icons.add)))
        //       ],
        //     );
        //   },
        // ),
      ),
    );
  }
}
