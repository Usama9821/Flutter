import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Rao M Usama - Assignemnt#2 Mobile app development'),
          backgroundColor: Colors.teal,
        ),
        body: Container(
          child: Column(
            children: [
              Expanded(
                child: Row(children: [
                  Image.network('https://picsum.photos/250?image=9'),
                  Image.network(
                      'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAPEAAADRCAMAAAAquaQNAAAAA1BMVEX///+nxBvIAAAAR0lEQVR4nO3BMQEAAADCoPVP7WULoAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABuxZIAAeHuCGgAAAAASUVORK5CYII='),
                  Image.network('https://picsum.photos/250?image=9'),
                ]),
              ),
              Expanded(
                child: Row(
                  children: [
                    Image.network(
                        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAPEAAADRCAMAAAAquaQNAAAAA1BMVEX///+nxBvIAAAAR0lEQVR4nO3BMQEAAADCoPVP7WULoAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABuxZIAAeHuCGgAAAAASUVORK5CYII='),
                    Image.network('https://picsum.photos/250?image=9')
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Image.network('https://picsum.photos/250?image=9'),
                    Image.network(
                        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAPEAAADRCAMAAAAquaQNAAAAA1BMVEX///+nxBvIAAAAR0lEQVR4nO3BMQEAAADCoPVP7WULoAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABuxZIAAeHuCGgAAAAASUVORK5CYII='),
                    Image.network('https://picsum.photos/250?image=9')
                  ],
                ),
              ),

              //Code for Rectangle
              // Expanded(
              //   child: Row(
              //     children: [
              //       Expanded(
              //           child:
              //               Image.network('https://picsum.photos/250?image=9')),
              //       Expanded(
              //           child:
              //               Image.network('https://picsum.photos/250?image=9')),
              //       Expanded(
              //           child:
              //               Image.network('https://picsum.photos/250?image=9')),
              //       Expanded(
              //           child:
              //               Image.network('https://picsum.photos/250?image=9')),
              //       Expanded(
              //           child:
              //               Image.network('https://picsum.photos/250?image=9')),
              //       Expanded(
              //           child:
              //               Image.network('https://picsum.photos/250?image=9')),
              //       Expanded(
              //           child:
              //               Image.network('https://picsum.photos/250?image=9')),
              //     ],
              //   ),
              // ),
              // Expanded(
              //   child: Row(
              //     children: [
              //       Expanded(
              //           child:
              //               Image.network('https://picsum.photos/250?image=9')),
              //       Expanded(
              //           child: Image.network(
              //               'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAPEAAADRCAMAAAAquaQNAAAAA1BMVEX///+nxBvIAAAAR0lEQVR4nO3BMQEAAADCoPVP7WULoAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABuxZIAAeHuCGgAAAAASUVORK5CYII=')),
              //       Expanded(
              //           child: Image.network(
              //               'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAPEAAADRCAMAAAAquaQNAAAAA1BMVEX///+nxBvIAAAAR0lEQVR4nO3BMQEAAADCoPVP7WULoAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABuxZIAAeHuCGgAAAAASUVORK5CYII=')),
              //       Expanded(
              //           child: Image.network(
              //               'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAPEAAADRCAMAAAAquaQNAAAAA1BMVEX///+nxBvIAAAAR0lEQVR4nO3BMQEAAADCoPVP7WULoAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABuxZIAAeHuCGgAAAAASUVORK5CYII=')),
              //       Expanded(
              //           child: Image.network(
              //               'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAPEAAADRCAMAAAAquaQNAAAAA1BMVEX///+nxBvIAAAAR0lEQVR4nO3BMQEAAADCoPVP7WULoAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABuxZIAAeHuCGgAAAAASUVORK5CYII=')),
              //       Expanded(
              //           child: Image.network(
              //               'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAPEAAADRCAMAAAAquaQNAAAAA1BMVEX///+nxBvIAAAAR0lEQVR4nO3BMQEAAADCoPVP7WULoAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABuxZIAAeHuCGgAAAAASUVORK5CYII=')),
              //       Expanded(
              //           child:
              //               Image.network('https://picsum.photos/250?image=9')),
              //     ],
              //   ),
              // ),
              // Expanded(
              //   child: Row(
              //     children: [
              //       Expanded(
              //           child:
              //               Image.network('https://picsum.photos/250?image=9')),
              //       Expanded(
              //           child:
              //               Image.network('https://picsum.photos/250?image=9')),
              //       Expanded(
              //           child:
              //               Image.network('https://picsum.photos/250?image=9')),
              //       Expanded(
              //           child:
              //               Image.network('https://picsum.photos/250?image=9')),
              //       Expanded(
              //           child:
              //               Image.network('https://picsum.photos/250?image=9')),
              //       Expanded(
              //           child:
              //               Image.network('https://picsum.photos/250?image=9')),
              //       Expanded(
              //           child:
              //               Image.network('https://picsum.photos/250?image=9')),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    ));
