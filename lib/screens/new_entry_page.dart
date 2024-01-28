import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class EntryPage extends StatefulWidget {
  const EntryPage({super.key});

  @override
  State<EntryPage> createState() => _EntryPageState();
}

class _EntryPageState extends State<EntryPage> {
  late TextEditingController nameController;
  late TextEditingController dosageController;

  late GlobalKey<ScaffoldState> _scaffoldState;

  @override
  void dispose() {
    nameController.dispose();
    dosageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    dosageController = TextEditingController();
    _scaffoldState = GlobalKey<ScaffoldState>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldState,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Add new',
          style: GoogleFonts.mulish(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PanelTitle(
              title: 'Medicine name',
              isRequired: true,
            ),
            TextFormField(
              controller: nameController,
              textCapitalization: TextCapitalization.words,
              maxLength: 12,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
              ),
              style: Theme.of(context).textTheme.subtitle2,
            ),
            PanelTitle(title: 'Dosage in mg', isRequired: true),
            TextFormField(
              controller: dosageController,
              keyboardType: TextInputType.number,
              maxLength: 12,
              decoration: const InputDecoration(border: UnderlineInputBorder()),
              style: Theme.of(context).textTheme.subtitle2,
            ),
            PanelTitle(title: "Medicine Type", isRequired: true),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Column(
                //   children: [
                //     Container(
                //         width: 80,
                //         height: 80,
                //         decoration: BoxDecoration(
                //           color: Colors.blueGrey,
                //         ),
                //         child: Image.asset("lib/medicines/pill-png.png")),
                //     Container(
                //       width: 80,
                //       height: 80,
                //       decoration: BoxDecoration(
                //         color: Colors.blueGrey,
                //       ),
                //       child: Image.asset("lib/medicines/injection.png"),
                //     )
                //   ],
                // )
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                  ),
                  child: Image.asset("lib/medicines/pill-png.png"),
                ),
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(color: Colors.blueGrey),
                  child: Image.asset("lib/medicines/injection.png"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class PanelTitle extends StatelessWidget {
  final String title;
  final bool isRequired;
  const PanelTitle({super.key, required this.title, required this.isRequired});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 2),
      child: Text.rich(TextSpan(children: <TextSpan>[
        TextSpan(
          text: title,
          style: GoogleFonts.poppins(fontSize: 20),
        ),
        TextSpan(
            text: isRequired ? " *" : "",
            style: GoogleFonts.poppins(fontSize: 15))
      ])),
    );
  }
}
