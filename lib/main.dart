import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spark/View/drawer%20screen/drawerdata.dart';
import 'package:spark/View/drawer%20screen/drawre_Screen.dart';
import 'package:spark/common/iconchanges.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => navigationprovider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Spark",
        home: DrwerScreen(),
      ),
    );
  }
}

// // // import 'package:flutter/material.dart';

// // // void main() {
// // //   runApp(MyApp());
// // // }

// // // class MyApp extends StatelessWidget {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return MaterialApp(
// // //       home: Scaffold(
// // //         appBar: AppBar(
// // //           title: Text('Flowy Board'),
// // //         ),
// // //         body: FlowyBoard(),
// // //       ),
// // //     );
// // //   }
// // // }

// // // class FlowyBoard extends StatefulWidget {
// // //   @override
// // //   _FlowyBoardState createState() => _FlowyBoardState();
// // // }

// // // class _FlowyBoardState extends State<FlowyBoard> {
// // //   List<Offset> nodes = [];

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Stack(
// // //       children: [
// // //         CustomPaint(
// // //           painter: FlowyPainter(nodes: nodes),
// // //         ),
// // //         GestureDetector(
// // //           onTapDown: (details) {
// // //             setState(() {
// // //               nodes.add(details.localPosition);
// // //             });
// // //           },
// // //           child: Container(
// // //             color: Colors.transparent,
// // //             width: double.infinity,
// // //             height: double.infinity,
// // //           ),
// // //         ),
// // //       ],
// // //     );
// // //   }
// // // }

// // // class FlowyPainter extends CustomPainter {
// // //   final List<Offset> nodes;

// // //   FlowyPainter({required this.nodes});

// // //   @override
// // //   void paint(Canvas canvas, Size size) {
// // //     Paint linePaint = Paint()
// // //       ..color = Colors.blue
// // //       ..strokeWidth = 2.0;

// // //     for (int i = 0; i < nodes.length - 1; i++) {
// // //       canvas.drawLine(nodes[i], nodes[i + 1], linePaint);
// // //     }
// // //   }

// // //   @override
// // //   bool shouldRepaint(covariant CustomPainter oldDelegate) {
// // //     return true;
// // //   }
// // // }
// // import 'package:flutter/material.dart';
// // import 'package:flutter_bloc/flutter_bloc.dart';

// // // Data model for a card
// // class CardData {
// //   final String name;
// //   final String fatherName;
// //   final String rollNumber;

// //   CardData({required this.name, required this.fatherName, required this.rollNumber});
// // }

// // // Data model for a column
// // class ColumnData {
// //   final String title;
// //   final List<CardData> cards;

// //   ColumnData({required this.title, required this.cards});
// // }

// // // Define the state for your Kanban board
// // class KanbanBoardState {
// //   final List<ColumnData> columns;

// //   KanbanBoardState(this.columns);
// // }

// // // Define events that can change the state
// // abstract class KanbanBoardEvent {}

// // class UpdateColumnsEvent extends KanbanBoardEvent {
// //   final List<ColumnData> columns;

// //   UpdateColumnsEvent(this.columns);
// // }

// // // Define the BLoC for your Kanban board
// // class KanbanBoardBloc extends Bloc<KanbanBoardEvent, KanbanBoardState> {
// //   KanbanBoardBloc() : super(KanbanBoardState([]));

// //   @override
// //   Stream<KanbanBoardState> mapEventToState(KanbanBoardEvent event) async* {
// //     if (event is UpdateColumnsEvent) {
// //       yield KanbanBoardState(event.columns);
// //     }
// //   }
// // }

// // void main() {
// //   runApp(MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: BlocProvider(
// //         create: (context) => KanbanBoardBloc(),
// //         child: KanbanBoard(),
// //       ),
// //     );
// //   }
// // }

// // class KanbanBoard extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(title: Text('Kanban Board')),
// //       body: BlocBuilder<KanbanBoardBloc, KanbanBoardState>(
// //         builder: (context, state) {
// //           return DragAndDropGrid(
// //             controller: DragAndDropGridController(),
// //             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: state.columns.length),
// //             itemBuilder: (context, index) {
// //               return Column(
// //                 children: [
// //                   Text(state.columns[index].title),
// //                   DragAndDropGrid(
// //                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
// //                     itemBuilder: (context, cardIndex) {
// //                       final card = state.columns[index].cards[cardIndex];
// //                       return Card(
// //                         child: ListTile(
// //                           title: Text(card.name),
// //                           subtitle: Text('Father: ${card.fatherName}\nRoll Number: ${card.rollNumber}'),
// //                         ),
// //                       );
// //                     },
// //                     itemCount: state.columns[index].cards.length,
// //                     onWillAccept: (oldIndex, newIndex) => true,
// //                     onReorder: (oldIndex, newIndex) {
// //                       List<CardData> newCards = List.from(state.columns[index].cards);
// //                       newCards.insert(newIndex, newCards.removeAt(oldIndex));

// //                       List<ColumnData> newColumns = List.from(state.columns);
// //                       newColumns[index] = ColumnData(title: newColumns[index].title, cards: newCards);

// //                       context.read<KanbanBoardBloc>().add(UpdateColumnsEvent(newColumns));
// //                     },
// //                   ),
// //                 ],
// //               );
// //             },
// //             itemCount: state.columns.length,
// //             onWillAccept: (oldIndex, newIndex) => true,
// //             onReorder: (oldIndex, newIndex) {
// //               List<ColumnData> newColumns = List.from(state.columns);
// //               newColumns.insert(newIndex, newColumns.removeAt(oldIndex));

// //               context.read<KanbanBoardBloc>().add(UpdateColumnsEvent(newColumns));
// //             },
// //           );
// //         },
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// // Event
// abstract class KanbanEvent {}

// class MoveCardEvent extends KanbanEvent {
//   final int sourceColumnIndex;
//   final int destinationColumnIndex;
//   final int cardIndex;

//   MoveCardEvent(
//       {required this.sourceColumnIndex,
//       required this.destinationColumnIndex,
//       required this.cardIndex});
// }

// // State
// class KanbanState {
//   final List<List<String>> columns;

//   KanbanState({required this.columns});
// }

// // Bloc
// class KanbanBloc extends Bloc<KanbanEvent, KanbanState> {
//   KanbanBloc(KanbanState initialState) : super(initialState);

//   @override
//   KanbanState get initialState => KanbanState(columns: [
//         ['Task 1', 'Task 2', 'Task 3'],
//         ['Task 4', 'Task 5'],
//         ['Task 6', 'Task 7', 'Task 8'],
//       ]);

//   @override
//   Stream<KanbanState> mapEventToState(KanbanEvent event) async* {
//     if (event is MoveCardEvent) {
//       yield moveCard(event);
//     }
//   }

//   KanbanState moveCard(MoveCardEvent event) {
//     List<List<String>> newColumns = List.from(state.columns);

//     // Remove the card from the source column
//     String card = newColumns[event.sourceColumnIndex][event.cardIndex];
//     newColumns[event.sourceColumnIndex].removeAt(event.cardIndex);

//     // Add the card to the destination column
//     newColumns[event.destinationColumnIndex].add(card);

//     return KanbanState(columns: newColumns);
//   }
// }

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: BlocProvider(
//         create: (context) => KanbanBloc(KanbanState(columns: [])),
//         child: KanbanBoard(),
//       ),
//     );
//   }
// }

// class KanbanBoard extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<KanbanBloc, KanbanState>(
//       builder: (context, state) {
//         return Scaffold(
//           appBar: AppBar(
//             title: Text('Kanban Board'),
//           ),
//           body: DraggableScrollbar.rrect(
//             controller: ScrollController(),
//             child: ListView.builder(
//               scrollDirection: Axis.horizontal,
//               itemCount: state.columns.length,
//               itemBuilder: (context, columnIndex) {
//                 return Column(
//                   children: [
//                     Text('Column ${columnIndex + 1}'),
//                     SizedBox(height: 8),
//                     for (int i = 0; i < state.columns[columnIndex].length; i++)
//                       Draggable(
//                         childWhenDragging: Container(),
//                         feedback: Card(
//                           child: Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Text(state.columns[columnIndex][i]),
//                           ),
//                         ),
//                         child: Card(
//                           child: Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Text(state.columns[columnIndex][i]),
//                           ),
//                         ),
//                         data: {
//                           'sourceColumnIndex': columnIndex,
//                           'cardIndex': i,
//                         },
//                       ),
//                     SizedBox(height: 16),
//                   ],
//                 );
//               },
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

