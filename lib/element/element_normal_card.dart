// import 'package:flutter/material.dart';
// import 'package:xinshijie_flutter/element/element_cell.dart';
// import 'package:xinshijie_flutter/model/home_world_model.dart';
// import 'package:xinshijie_flutter/world/world_section_view.dart';
//
//
// class ElementNormalCard extends StatelessWidget {
//   final HomeWorldModule cardInfo;
//
//   ElementNormalCard(this.cardInfo);
//
//   @override
//   Widget build(BuildContext context) {
//     var worlds = cardInfo.books;
//     if (worlds == null || worlds.length < 3) {
//       return SizedBox();
//     }
//
//     List<Widget> children = [
//       HomeSectionView(cardInfo.name),
//     ];
//     for (var i = 0; i < worlds.length; i++) {
//       var world = worlds[i];
//       children.add(ElementCell(world));
//       children.add(Divider(height: 1));
//     }
//     children.add(Container(height: 10, color: Color(0xfff5f5f5)));
//
//     return Container(
//       color: Colors.white,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: children,
//       ),
//     );
//   }
// }
