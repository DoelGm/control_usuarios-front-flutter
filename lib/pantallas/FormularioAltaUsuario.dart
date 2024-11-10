import 'package:flutter/material.dart';

class FormularioUsuario extends StatelessWidget {
  const FormularioUsuario({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Card(
              color: Colors.white,
              elevation: 15,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: Text(
                        'Alta usuarios',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Nombre:', style: TextStyle(fontSize: 18)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const TextField(
                      style: TextStyle(fontSize: 14.0),
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.green, width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(143, 0, 0, 0),
                                width: 1.0),
                          ),
                          hintText: 'Ingresa tu nombre'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text('Apellidos:', style: TextStyle(fontSize: 18)),
                    const SizedBox(
                      height: 10,
                    ),
                    const TextField(
                      style: TextStyle(fontSize: 14.0),
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.green, width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(143, 41, 41, 41),
                                width: 1.0),
                          ),
                          hintText: 'Ingresa tus apellidos'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Email:',
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const TextField(
                      style: TextStyle(fontSize: 14.0),
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.green, width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(143, 41, 41, 41),
                                width: 1.0),
                          ),
                          hintText: 'Ingresa tu email'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text('Curp:', style: TextStyle(fontSize: 18)),
                    const SizedBox(
                      height: 10,
                    ),
                    const TextField(
                      style: TextStyle(fontSize: 14.0),
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.green, width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(143, 41, 41, 41),
                                width: 1.0),
                          ),
                          hintText: 'Ingresa tu curp'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: getColor(
                                  const Color.fromARGB(255, 57, 243, 0),
                                  const Color.fromARGB(255, 255, 255, 255)),
                            ),
                            child: const Text('Enviar'),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),

            // Text('Estado civil'),
            // SizedBox(
            //   height: 10,
            // ),
            // TextField(
            //   decoration: InputDecoration(border: OutlineInputBorder()),
            // ),
            // SizedBox(
            //   height: 20,
            // ),
          ],
        ),
      ]),
    );
  }
}

MaterialStateProperty<Color> getColor(Color color, Color onPressedColor) {
  getColor(Set<MaterialState> state) {
    if (state.contains(MaterialState.pressed)) {
      return onPressedColor;
    } else {
      return color;
    }
  }

  return MaterialStateProperty.resolveWith(getColor);
}
