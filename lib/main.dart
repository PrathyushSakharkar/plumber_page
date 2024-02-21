import 'package:flutter/material.dart';

void main() {
  runApp( const NyApp());
}
class NyApp extends StatefulWidget {
  const NyApp({super.key});

  @override
  State<NyApp> createState() => _NyAppState();
}

List<dynamic> workers = [
  [
    'Alfredo Schafer',
    'Plumber',
    'https://images.unsplash.com/photo-1506803682981-6e718a9dd3ee?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=c3a31eeb7efb4d533647e3cad1de9257',
    4.8
  ],
  [
    'Alfredo Schafer',
    'Plumber',
    'https://images.unsplash.com/photo-1506803682981-6e718a9dd3ee?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=c3a31eeb7efb4d533647e3cad1de9257',
    4.8
  ],
  [
    'Alfredo Schafer',
    'Plumber',
    'https://images.unsplash.com/photo-1506803682981-6e718a9dd3ee?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=c3a31eeb7efb4d533647e3cad1de9257',
    4.8
  ],
  /*[
    'Michelle Baldwin',
    'Cleaner',
    'https://uifaces.co/our-content/donated/oLkb60i_.jpg',
    4.6
  ],
  [
    'Brenon Kalu',
    'Driver',
    'https://uifaces.co/our-content/donated/VUMBKh1U.jpg',
    4.4
  ]*/
];
class _NyAppState extends State<NyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          title: const Text('Plumber Info'),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 50.0,
            ),
             const Card(
               color: Colors.white,
               margin: EdgeInsets.symmetric(vertical: 20.0, horizontal:20.0),
               child: Text(
                 '   The plumber will visit your home to check the problem, for that he will charge 100/- rs'
                     'And then charge according to the type of issue you have :',
                 style: TextStyle(
                   fontStyle: FontStyle.italic,
                   fontSize: 20.0,
                   color: Colors.black,
                   fontWeight: FontWeight.bold,
                 ),
               ),
             ),
            const SizedBox(
              height: 50.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              height: 185,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: workers.length,
                  itemBuilder: (BuildContext context, int index) {
                    return
                        workerContainer(workers[index][0], workers[index][1],
                            workers[index][2], workers[index][3]);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}



workerContainer(String name, String job, String image, double rating) {
  return GestureDetector(
    child: AspectRatio(
      aspectRatio: 3.5,
      child: Container(
        margin: EdgeInsets.only(right: 30),
        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.grey.shade200,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.network(image)),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    job,
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    rating.toString(),
                    style:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 20,
                  )
                ],
              )
            ]),
      ),
    ),
  );
}


/* const Column(
            children:  [
              SizedBox(
                height: 50.0,
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal:10.0),
                child: Text(
                  '   The plumber will visit your home to check the problem, for that he will charge 100/- rs'
                      'And then charge according to the type of issue you have :',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),

              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal:50.0),
                child: ListTile(
                  leading:Icon(
                    Icons.plumbing_rounded,
                    color: Colors.teal,
                    size: 35.0,
                  ),
                  title: Text(
                    'Maitreya Salodkar, plumbing experience of 5 days,    '
                        ' 2 star Rating',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                child: ListTile(
                  leading:Icon(
                    Icons.plumbing_rounded,
                    color: Colors.teal,
                    size: 35.0,
                  ),
                  title: Text(
                    'Prathyush Sakharkar, plumbing experience of 5 days,    '
                        ' 2 star Rating',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                child: ListTile(
                  leading:Icon(
                    Icons.plumbing_rounded,
                    color: Colors.teal,
                    size: 35.0,
                  ),
                  title: Text(
                    'Sahil Kuhikar, plumbing experience of 5 days,    '
                        ' 2 star Rating',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                child: ListTile(
                  leading:Icon(
                    Icons.plumbing_rounded,
                    color: Colors.teal,
                    size: 35.0,
                  ),
                  title: Text(
                    'Kushall Sharma , plumbing experience of 5 days,    '
                        ' 2 star Rating',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),

    ],
    ),*/