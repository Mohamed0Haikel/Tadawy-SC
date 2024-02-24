import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Files extends StatefulWidget {
  const Files({super.key});

  @override
  State<Files> createState() => _FilesState();
}

class _FilesState extends State<Files> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 5,
      itemBuilder: (context, index, realIndex) {
        return Stack(
          alignment: Alignment.centerLeft,
          children: [
            Icon(
              Icons.folder,
              size: 350,
              //color: Theme.of(context).colorScheme.primary,
              //semanticLabel: 'Data',
              color: _current == index
                  ? Theme.of(context).colorScheme.secondary
                  : Theme.of(context).colorScheme.secondary.withOpacity(0.5),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Text(
                _current >= index || index > _current+2
                    ? 'Data'
                    : '',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onTertiary,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        );
      },
      options: CarouselOptions(
        //height: 350,
        scrollDirection: Axis.vertical,
        autoPlay: true,
        autoPlayCurve: Curves.fastOutSlowIn,
        autoPlayAnimationDuration: Duration(seconds: 2),
        initialPage: _current,
        aspectRatio: 2.0,
        enlargeCenterPage: true,
        viewportFraction: 0.3,
        pageSnapping: true,
        onPageChanged: (index, reason) => setState(() {
          _current = index;
        }),
      ),
    );
  }
}



// items: [
//           // Container(
//           //   margin: EdgeInsets.all(8),
//           //   decoration: BoxDecoration(
//           //     borderRadius: BorderRadius.circular(10),
//           //     // image: DecorationImage(
//           //     //   image: NetworkImage('https://example.com/document1.jpg'),
//           //     //   fit: BoxFit.cover,
//           //     // ),
//           //   ),
//           // ),
//           Container(
//             decoration: BoxDecoration(
//               //color: Theme.of(context).colorScheme.primary,
//               // borderRadius: BorderRadius.circular(10.0),
//               // border: Border.all(color: Colors.grey[300] as Color, width: 1.0),
//               // boxShadow: [
//               //   BoxShadow(
//               //       color: Colors.grey[200]!,
//               //       blurRadius: 5.0,
//               //       spreadRadius: 2.0)
//               // ],
//             ),
//             child: Padding(
//               padding: EdgeInsets.all(15.0),
//               child: Icon(
//                     Icons.folder,
                    
//                     size: 300,
//                     color: Theme.of(context).colorScheme.primary,
//                   ),
//             ),
//           ),
//           Container(
           
//             decoration: BoxDecoration(
//               //color: Theme.of(context).colorScheme.primary,
//               //borderRadius: BorderRadius.circular(10.0),
//               //border: Border.all(color: Colors.blue[300] as Color, width: 1.0),
              
//             ),
//             child: Padding(
//               padding: EdgeInsets.all(15.0),
//               child: Icon(
//                     Icons.folder,
                    
//                     size: 300,
//                     color: Theme.of(context).colorScheme.primary,
//                   ),
//             ),
//           ),
//           Container(
//             // width: 200,
//             // height: 200,
//             decoration: BoxDecoration(
//               // color: Theme.of(context).colorScheme.primary,
//               // borderRadius: BorderRadius.circular(10.0),
//               // border: Border.all(color: Colors.green[300] as Color, width: 1.0),
//               // boxShadow: [
//               //   BoxShadow(
//               //       color: Colors.red[200]!,
//               //       blurRadius: 5.0,
//               //       spreadRadius: 2.0)
//               // ],
//             ),
//             child: Padding(
//               padding: EdgeInsets.all(15.0),
//               child: Icon(
//                     Icons.folder,
                    
//                     size: 300,
//                     color: Theme.of(context).colorScheme.primary,
//                   ),
//             ),
//           ),
//           // Add more containers for other documents
//           // ...
//         ],

