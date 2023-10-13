import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget Buttons(
    String title,
    Color colors,
    Color colores,
  ) {
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(colors),
        ),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(title, style: TextStyle(color: colores, fontSize: 22)),
        ));
  }

  Widget button(String title, Color border, Color colors) {
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Colors.white),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              side: BorderSide(color: border, width: 3),
            ),
          ),
        ),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: TextStyle(color: colors, fontSize: 22),
          ),
        ));
  }

  Widget buttons(String title, Color border, Color colors) {
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(colors),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(41),
            ),
          ),
        ),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: TextStyle(color: border, fontSize: 22),
          ),
        ));
  }

  Widget buttones(String title, Color border, Color colors) {
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(colors),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              side: BorderSide(color: Colors.blue, width: 3),
              borderRadius: BorderRadius.circular(
                0,
              ),
            ),
          ),
        ),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            title,
            style: TextStyle(color: border, fontSize: 22),
          ),
        ));
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Buttons',
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  width: 100,
                  height: 100,
                  'https://static.ticimax.cloud/40009/uploads/urunresimleri/buyuk/eva-mavi-e-harfi-9cm-d-ee4b.jpg',
                ),
                Text(
                  'Tailwind Elements',
                  style: TextStyle(fontSize: 75),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Buttons Component',
                  style: TextStyle(fontSize: 85),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(30),
              width: 1400,
              height: 350,
              decoration: BoxDecoration(color: Color.fromARGB(255, 255, 255, 255), boxShadow: [BoxShadow(offset: Offset(0, 5), color: Colors.black, blurRadius: 10)]),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Buttons('PRIMARY', Colors.blue, Color.fromARGB(255, 255, 255, 255)),
                      Buttons('SECONDARY', const Color.fromARGB(255, 151, 151, 151), Color.fromARGB(255, 125, 217, 245)),
                      Buttons('TETRIARY', const Color.fromARGB(255, 255, 255, 255), Color.fromARGB(255, 78, 69, 247)),
                      Buttons('SUCCESS', Color.fromARGB(255, 0, 255, 13), Color.fromARGB(255, 255, 255, 255)),
                      Buttons('DANGER', Color.fromARGB(255, 255, 0, 0), Color.fromARGB(255, 255, 255, 255)),
                      Buttons('WARNING', Color.fromARGB(255, 255, 200, 0), Color.fromARGB(255, 255, 255, 255)),
                      Buttons('INFO', Color.fromARGB(255, 0, 170, 255), Color.fromARGB(255, 247, 248, 249)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      button('PRIMARY', Color.fromARGB(255, 0, 138, 250), Color.fromARGB(255, 4, 92, 246)),
                      button('SECONDARY', Color.fromARGB(255, 197, 197, 197), Color.fromARGB(255, 126, 126, 126)),
                      button('SUCCESS', Color.fromARGB(255, 93, 244, 6), Color.fromARGB(255, 95, 221, 5)),
                      button('DANGER', Color.fromARGB(255, 255, 0, 0), Color.fromARGB(255, 247, 5, 5)),
                      button('WARNING', Color.fromARGB(255, 255, 136, 0), Color.fromARGB(255, 247, 142, 5)),
                      button('INFO', Color.fromARGB(255, 0, 89, 255), Color.fromARGB(255, 5, 130, 247)),
                      Padding(
                        padding: const EdgeInsets.all(30),
                      ),
                      button('DARK', Color.fromARGB(255, 0, 0, 0), Color.fromARGB(255, 0, 0, 0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      buttons('PRIMARY', Color.fromARGB(255, 255, 255, 255), Colors.blue),
                      buttons('SECONDARY', Color.fromARGB(255, 255, 255, 255), const Color.fromARGB(255, 156, 157, 157)),
                      buttons('SUCCESS', Color.fromARGB(255, 255, 255, 255), Color.fromARGB(255, 9, 244, 9)),
                      buttons('DANGER', Color.fromARGB(255, 255, 255, 255), Color.fromARGB(255, 255, 6, 6)),
                      buttons('WARNING', Color.fromARGB(255, 255, 255, 255), Color.fromARGB(255, 255, 210, 10)),
                      buttons('INFO', Color.fromARGB(255, 255, 255, 255), Color.fromARGB(255, 7, 142, 239)),
                      buttons('LIGHT', Color.fromARGB(255, 0, 0, 0), Color.fromARGB(255, 255, 255, 255)),
                      buttons('DARK', Color.fromARGB(255, 255, 255, 255), Color.fromARGB(255, 0, 0, 0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Container(margin: EdgeInsets.only(top: 90, bottom: 20), width: 60, height: 50, child: ElevatedButton(onPressed: () {}, child: Text('PRIMARY'))),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [buttones('                                                                                                                 PRIMARY                                                                                                                     ', Color.fromARGB(255, 56, 122, 255), Colors.white)],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  widget({required Container child}) {}
}
