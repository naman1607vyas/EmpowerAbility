import 'package:empower_ability/screens/new_entry_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MedicineReminder extends StatefulWidget {
  const MedicineReminder({super.key});

  @override
  State<MedicineReminder> createState() => _MedicineReminderState();
}

class _MedicineReminderState extends State<MedicineReminder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            // title: Text("Medicine Reminder"),
            // backgroundColor: Colors.red,
            ),
        body: const Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TopContainer(),
              SizedBox(
                height: 20,
              ),
              Flexible(child: BottomContainer()),
            ],
          ),
        ),
        floatingActionButton: InkResponse(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => EntryPage()));
          },
          child: SizedBox(
            child: Card(
              child: Icon(
                Icons.add_outlined,
                size: 50,
                color: Colors.blueAccent,
              ),
            ),
          ),
        ));
  }
}

class TopContainer extends StatelessWidget {
  const TopContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(bottom: 15, top: 15),
          child: Text(
            'Worry less. \nLive healthier.',
            style:
                GoogleFonts.aBeeZee(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            '0',
            style:
                GoogleFonts.aBeeZee(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}

class BottomContainer extends StatelessWidget {
  const BottomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'No Medicine',
        textAlign: TextAlign.center,
        style: GoogleFonts.aBeeZee(fontSize: 30, color: Colors.red),
      ),
    );
  }
}
