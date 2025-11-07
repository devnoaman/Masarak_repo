// import 'package:flutter/material.dart';
// // import 'package:flutter_map/flutter_map.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:iconsax/iconsax.dart';
// import 'package:latlong2/latlong.dart';
// import 'package:shared/shared.dart';
// import 'package:go_router/go_router.dart';
// import 'package:driver/src/features/home_view/model/mapdto.dart';
// import 'package:sub_app_core/generator/annotations/generate_route.dart';
// import 'package:shared/src/svgmanag.dart';

// @GenerateRoute(routeName: "Map screen", routePath: "/map-screen")
// class MapView extends StatelessWidget {
//   const MapView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final extra = GoRouterState.of(context).extra;
//     final Mapdto? mapdto = extra is Mapdto ? extra : null;
//     return Scaffold(
//       body: Stack(
//         children: [
//           // FlutterMap(
//           //   options: MapOptions(
//           //     initialCenter: LatLng(33.3152, 44.3661),
//           //     initialZoom: 13.0,
//           //     minZoom: 3.0,
//           //     maxZoom: 18.0,
//           //   ),
//           //   children: [
//           //     TileLayer(
//           //       urlTemplate:
//           //           "https://{s}.tile.openstreetmap.fr/hot/{z}/{x}/{y}.png",
//           //     ),
//           //   ],
//           // ),
//           Positioned(
//             top: 40,
//             left: 25,
//             child: IconButton(
//               icon: const Icon(
//                 Iconsax.arrow_circle_left5,
//                 color: Colors.white,
//                 size: 50,
//               ),
//               onPressed: () => Navigator.pop(context),
//               tooltip: 'رجوع',
//             ),
//           ),
//           Positioned(
//             bottom: 40,
//             left: 4,
//             right: 4,
//             child: Container(
//               width: context.width * 0.8,
//               height: context.height * 0.2,
//               padding: const EdgeInsets.all(16),
//               decoration: BoxDecoration(
//                 color: context.theme.scaffoldBackgroundColor,
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: mapdto == null
//                   ? Center(
//                       child: Text(
//                         'لا توجد نقطة محددة',
//                         style: context.textTheme.bodyLarge!.copyWith(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     )
//                   : Align(
//                       alignment: Alignment.centerRight,
//                       child: Text(
//                         mapdto.checkpointname,
//                         textAlign: TextAlign.right,
//                         style: context.textTheme.titleLarge!.copyWith(
//                           color: Colors.white,
//                           fontWeight: FontWeight.w900,
//                         ),
//                       ),
//                     ),
//             ),
//           ),
//           Positioned(
//             top: 100,
//             right: 25,
//             child: Container(
//               width: context.width * 0.2,
//               height: context.height * 0.2,
//               padding: const EdgeInsets.all(16),
//               decoration: BoxDecoration(
//                 color: context.theme.scaffoldBackgroundColor,
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Column(
//                 children: [
//                   Text(
//                     'Next',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SvgPicture.string(SvgManag.left, height: 50, width: 50),
//                 ],
//               ),
//             ),
//           ),
//           Positioned(
//             bottom: 400,
//             right: 25,
//             child: IconButton(
//               icon: const Icon(Iconsax.add5, color: Colors.white, size: 50),
//               onPressed: () {},
//               // tooltip: 'رجوع',
//             ),
//           ),
//           //sendIconButton
//           Positioned(
//             bottom: 350,
//             right: 25,
//             child: IconButton(
//               icon: const Icon(
//                 Iconsax.minus_square5,
//                 color: Colors.white,
//                 size: 50,
//               ),
//               onPressed: () {},
//               // tooltip: 'رجوع',
//             ),
//           ),
//           Positioned(
//             bottom: 200,
//             right: 35,
//             child: SvgPicture.string(
//               SvgManag.sendIconButton,
//               height: 50,
//               width: 50,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
