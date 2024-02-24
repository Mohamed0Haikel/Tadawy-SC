import 'package:flutter/material.dart';
import 'package:calendar_slider/calendar_slider.dart';



class Prescriptions extends StatefulWidget {
  const Prescriptions({super.key});

  @override
  State<Prescriptions> createState() => _PrescriptionsState();
}

class _PrescriptionsState extends State<Prescriptions> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  DateTime? date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // const SizedBox(height: 20),
          Text(
            'Choose date',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Theme.of(context).colorScheme.onTertiary.withOpacity(0.8),
            ),
          ),
          
          SizedBox(
            height: 100,
            child: CalendarSlider(
              selectedDayPosition: SelectedDayPosition.left,
              // fullCalendarScroll: FullCalendarScroll.horizontal,
              // backgroundColor: Colors.lightBlue,
              // fullCalendarWeekDay: WeekDay.long,
              // fullCalendarMonth: Month.long,
              fullCalendar: false,
              selectedTileBackgroundColor:
                  Theme.of(context).colorScheme.onPrimaryContainer,
              // monthYearButtonBackgroundColor: Theme.of(context).colorScheme.primary,
              // monthYearTextColor: Theme.of(context).colorScheme.background,
              tileBackgroundColor: Colors.grey[400]!,
              selectedDateColor: Theme.of(context).colorScheme.onTertiary,
              dateColor: Colors.white,
              tileShadow: BoxShadow(
                color: Colors.black.withOpacity(1),
              ),
              locale: 'en',
              initialDate: DateTime.now(),
              firstDate: DateTime.now().subtract(const Duration(days: 100)),
              lastDate: DateTime.now().add(const Duration(days: 100)),
              onDateSelected: (date) {
                setState(() {
                  this.date = date;
                });
              },
            ),
          ),
          const SizedBox(height: 5),
          Text(
            'Daily Medication',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Theme.of(context).colorScheme.onTertiary.withOpacity(0.8),
            ),
          ),
          SizedBox(height: 5),
          Expanded(
            child: ListView(
              children: [
                Text(
                  '8:00 AM',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color:
                        Theme.of(context).colorScheme.tertiary.withOpacity(0.6),
                  ),
                ),
                CustomListTile(
                  title: 'Paracetamol',
                  quantity: '1 tablet',
                  dosage: '500mg',
                  icon: Icons.medication,
                ),
                Text(
                  '10:00 AM',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color:
                        Theme.of(context).colorScheme.tertiary.withOpacity(0.6),
                  ),
                ),
                CustomListTile(
                  title: 'Dosage',
                  quantity: '2 tablets',
                  dosage: '500mg',
                  icon: Icons.medication,
                ),
                CustomListTile(
                  title: 'Time',
                  quantity: 'Morning',
                  dosage: '500mg',
                  icon: Icons.medication,
                ),
                CustomListTile(
                  title: 'Duration',
                  quantity: '7 days',
                  dosage: '500mg',
                  icon: Icons.medication,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomListTile extends StatefulWidget {
  CustomListTile({
    super.key,
    required this.title,
    required this.quantity,
    required this.dosage,
    required this.icon,
  });
  String title;
  String quantity;
  String dosage;
  IconData icon;

  @override
  State<CustomListTile> createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  bool _take = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Icon(widget.icon),
      ),
      title: Text(
        widget.title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
      ),
      subtitle: Text(
        "${widget.quantity}, ${widget.dosage}",
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.grey.shade500,
        ),
      ),
      trailing: InkWell(
        onTap: () {
          setState(() {
            _take = !_take;
          });
        },
      
        child: Container(
          height: 50,
          width: 90,
          decoration: BoxDecoration(
            color: !_take ? Theme.of(context).colorScheme.onPrimaryContainer : Theme.of(context).colorScheme.onPrimaryContainer.withOpacity(0.5),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child:!_take ? Text(
              "Take",
              style: TextStyle(
                fontSize: 15,
                color: Theme.of(context).colorScheme.background,
                fontWeight: FontWeight.bold,
              ),
            ) : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Taken",
                  style: TextStyle(
                    fontSize: 15,
                    color: Theme.of(context).colorScheme.background,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.done_all_outlined,
                  color: Theme.of(context).colorScheme.background,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Widget CustomListTile(
//   {required String title, required String quantity,required String dosage, required IconData icon}) {
//   return ListTile(
//     leading: CircleAvatar(child: Icon(icon),),
//     title: Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
//     subtitle: Text("$quantity, $dosage", style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold, color:Colors.grey.shade500,),),
//     trailing: Container(
//       height: 50,
//       width: 100,
//       decoration: BoxDecoration(
//         color: Theme.of(context).colorScheme.primary,
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Row(
//         children: [
//          Text(
//           "Take"
//          ),
//         ],
//       ),
//     ),
//   );
// }