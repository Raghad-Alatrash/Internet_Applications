// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:internet_applications/Controller/group_files_list_controller.dart';
// import 'package:internet_applications/Controller/pre_version_controller.dart';
//
// import '../UI/color.dart';
//
// class PreVersionScreen extends GetView<PreVersionController> {
//   const PreVersionScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: AppTheme.backgroundGradient(context),
//       ),
//       child: Scaffold(
//         backgroundColor: Colors.transparent,
//         body:
//
//         ListView(
//
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(40.0),
//               child: Column(
//
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   SizedBox(
//
//                   ),
//                  Text("File Name",style: GoogleFonts.openSans(
//                    fontSize: 30,
//                    color: Theme.of(context).textTheme.bodyLarge?.color,
//                  ),),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Container(
//                       //constraints: BoxConstraints(maxWidth: 600),
//                       height: 40,
//                       color: Theme.of(context).canvasColor,
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Row(
//                               children: [
//                                 Icon(
//                                   Icons.keyboard_double_arrow_down_sharp,
//                                   size: 30,
//                                   //color: Colors.blueAccent,
//                                 ),
//
//                               ],
//                             ),
//                             Row(
//                               children: [
//                                 SizedBox(
//                                   width: 5,
//                                 ),
//                                 Text(
//                                   "Owner",
//                                   style: GoogleFonts.openSans(
//                                     color: Theme.of(context)
//                                         .textTheme
//                                         .bodyMedium
//                                         ?.color,
//                                   ),
//                                 )
//                               ],
//                             ),
//                             Text(
//                               "Last Modified",
//                               style: GoogleFonts.openSans(
//                                 color: Theme.of(context)
//                                     .textTheme
//                                     .bodyMedium
//                                     ?.color,
//                               ),
//                             ),
//                             Text(
//                               "Size",
//                               style: GoogleFonts.openSans(
//                                 color: Theme.of(context)
//                                     .textTheme
//                                     .bodyMedium
//                                     ?.color,
//                               ),
//                             ),
//                            SizedBox(
//                              width: 20,
//                            )
//                           ],
//                         ),
//                       )),
//
//                   SizedBox(
//                     height: 10,
//                   ),
//
//                   Container(
//                       height: 40,
//                       //constraints: BoxConstraints(maxWidth: 600),
//                       color: Theme.of(context).primaryColor,
//                       child: Padding(
//                           padding:
//                           const EdgeInsets.symmetric(horizontal: 8.0),
//                           child: Row(
//                             mainAxisAlignment:
//                             MainAxisAlignment.spaceBetween,
//                             children: [
//                               Row(
//                                 children: [
//                                   Icon(
//                                     CupertinoIcons.folder_fill,
//                                     color: Colors.blueAccent,
//                                   ),
//
//                                 ],
//                               ),
//                               Row(
//                                 children: [
//                                   CircleAvatar(
//                                     radius: 10,
//                                   ),
//                                   SizedBox(
//                                     width: 5,
//                                   ),
//                                   Text(
//                                     "Owner",
//                                     style: GoogleFonts.openSans(
//                                       color: Theme.of(context)
//                                           .textTheme
//                                           .bodyMedium
//                                           ?.color,
//                                     ),
//                                   )
//                                 ],
//                               ),
//                               Text(
//                                 "Last Modified",
//                                 style: GoogleFonts.openSans(
//                                   color: Theme.of(context)
//                                       .textTheme
//                                       .bodyMedium
//                                       ?.color,
//                                 ),
//                               ),
//                               Text(
//                                 "1 GB",
//                                 style: GoogleFonts.openSans(
//                                   color: Theme.of(context)
//                                       .textTheme
//                                       .bodyMedium
//                                       ?.color,
//                                 ),
//                               ),
//                               Icon(
//                                   Icons.download_outlined),
//                             ],
//                           ))),
//                   SizedBox(
//                     height: 10,
//                   ),
//
//
//                 ],
//               ),
//             ),
//           ],
//         ),
//
//       ),
//     );
//   }}
//
//
//
//
//
//
//

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:dio/dio.dart';

class PreVersionScreen extends StatefulWidget {
  const PreVersionScreen({super.key});

  @override
  _PreVersionScreenState createState() => _PreVersionScreenState();
}

class _PreVersionScreenState extends State<PreVersionScreen> {
  PlatformFile? _file;

  Future<void> _pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      setState(() {
        _file = result.files.first;
      });
    }
  }

  Future<void> _uploadFile() async {
    if (_file == null) return;

    Dio dio = Dio();
    String fileName = _file!.name;
    FormData formData = FormData.fromMap({
      "file": MultipartFile.fromBytes(_file!.bytes!, filename: fileName),
    });

    try {
      Response response = await dio.post(
        "YOUR_UPLOAD_URL_HERE",
        data: formData,
      );
      print("تم رفع الملف بنجاح: ${response.data}");
    } catch (e) {
      print("حدث خطأ أثناء رفع الملف: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('رفع ملف')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _pickFile,
              child: Text('اختيار ملف'),
            ),
            SizedBox(height: 20),
            if (_file != null) Text('الملف المختار: ${_file!.name}'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _file != null ? _uploadFile : null,
              child: Text('رفع الملف'),
            ),
          ],
        ),
      ),
    );
  }
}