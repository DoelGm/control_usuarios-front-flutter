import 'package:flutter/material.dart';

class TablaUsuarios extends StatelessWidget {
  const TablaUsuarios({super.key});
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.person_outlined,
                size: 25,
              ),
              Text(
                'Tabla de usuarios:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: TableWidget(),
          ),
        ],
      ),
    );
  }
}

class TablaScroll extends StatelessWidget {
  const TablaScroll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(scrollDirection: Axis.horizontal, children: const [
      TableWidget(),
    ]);
  }
}

class TableWidget extends StatelessWidget {
  const TableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const [
        DataColumn(
          label: Expanded(
            child: Text(
              'Matricula',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        DataColumn(
            label: Expanded(
          child: Text('Nombre',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
        )),
        DataColumn(
            label: Expanded(
          child: Text('Apellidos',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
        )),
        DataColumn(
            label: Expanded(
          child: Text('Email',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
        )),
        DataColumn(
            label: Expanded(
          child: Text('Acciones',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
        )),
      ],
      rows: [
        DataRow(
            cells: [
              rowCells('210929'),
              rowCells('Rafael'),
              rowCells('Bernal Gallegos'),
              rowCells('rbernalgallegos@gmail.com'),
              botonesAcciones()
            ],
            color: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> state) {
              return const Color.fromARGB(255, 224, 255, 250);
            })),
        DataRow(
            cells: [
              rowCells('210929'),
              rowCells('Rafael'),
              rowCells('Bernal Gallegos'),
              rowCells('rbernalgallegos@gmail.com'),
              botonesAcciones()
            ],
            color: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> state) {
              return const Color.fromARGB(255, 224, 255, 250);
            })),
        DataRow(
            cells: [
              rowCells('210929'),
              rowCells('Rafael'),
              rowCells('Bernal Gallegos'),
              rowCells('rbernalgallegos@gmail.com'),
              botonesAcciones(),
            ],
            color: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> state) {
              return const Color.fromARGB(255, 224, 255, 250);
            })),
        DataRow(
            cells: [
              rowCells('210929'),
              rowCells('Rafael'),
              rowCells('Bernal Gallegos'),
              rowCells('rbernalgallegos@gmail.com'),
              botonesAcciones(),
            ],
            color: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> state) {
              return const Color.fromARGB(255, 224, 255, 250);
            })),
        DataRow(
            cells: [
              rowCells('210929'),
              rowCells('Rafael'),
              rowCells('Bernal Gallegos'),
              rowCells('rbernalgallegos@gmail.com'),
              botonesAcciones(),
            ],
            color: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> state) {
              return const Color.fromARGB(255, 224, 255, 250);
            })),
      ],
    );
  }

  DataCell botonesAcciones() {
    return const DataCell(Row(
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: BotonEditar(),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: BotonEliminar(),
        )
      ],
    ));
  }

  DataCell rowCells(String text) {
    return DataCell(TextoTable(
      texto: text,
    ));
  }
}

class BotonEditar extends StatelessWidget {
  const BotonEditar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          overlayColor: getColor(const Color.fromARGB(255, 255, 255, 255),
              const Color.fromARGB(172, 255, 255, 255)),
          foregroundColor: getColor(const Color.fromARGB(255, 255, 255, 255),
              const Color.fromARGB(255, 0, 204, 255)),
          backgroundColor: getColor(const Color.fromARGB(255, 1, 204, 255),
              const Color.fromARGB(255, 255, 255, 255))),
      child: const Text('Editar'),
      onPressed: () => showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: const Text('Editar usuario'),
                content: const Text('¿Deseas editar al usuario?'),
                actions: [
                  TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancelar')),
                  TextButton(
                      onPressed: () => Navigator.pop(context, 'Ok'),
                      child: const Text('Editar')),
                ],
              )),
    );
  }
}

class BotonEliminar extends StatelessWidget {
  const BotonEliminar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            overlayColor: getColor(const Color.fromARGB(255, 252, 252, 252),
                const Color.fromARGB(188, 255, 255, 255)),
            foregroundColor: getColor(const Color.fromARGB(255, 255, 255, 255),
                const Color.fromARGB(255, 255, 0, 0)),
            backgroundColor: getColor(const Color.fromARGB(255, 255, 0, 0),
                const Color.fromARGB(255, 255, 255, 255))),
        child: const Text('Eliminar'),
        onPressed: () => showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: const Text('Eliminar'),
                  content: const Text('¿Deseas borrar el usuario?'),
                  actions: [
                    TextButton(
                        onPressed: () => Navigator.pop(context, 'Cancel'),
                        child: const Text('Cancelar')),
                    TextButton(
                        onPressed: () => Navigator.pop(context, 'Ok'),
                        child: const Text('Eliminar')),
                  ],
                )));
  }
}

// funcion para obtener el color de los botones
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

class TextoTable extends StatelessWidget {
  const TextoTable({super.key, required this.texto});
  final String texto;
  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: const TextStyle(fontSize: 14),
    );
  }
}
