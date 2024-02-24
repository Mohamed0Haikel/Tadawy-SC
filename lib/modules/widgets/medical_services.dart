import 'package:tdaway/constants/constants.dart';
import 'package:tdaway/data/medical_services_data.dart';
import 'package:tdaway/models/model.dart';
import 'package:flutter/material.dart';
import 'package:tdaway/modules/clinic_details_screen.dart';

class MedicalServices extends StatefulWidget {
  MedicalServices({
    Key? key,
    //required this.medicalServices,
  }) : super(key: key);

  @override
  State<MedicalServices> createState() => _MedicalServicesState();
}

class _MedicalServicesState extends State<MedicalServices> {
  //final List<MedicalServicesModel> medicalServices;
  HttpService httpService = HttpService();
// String url = 'http://192.168.175.53:8000';
//   //String url = 'http://192.168.1.4:8000';
//   //String url = '$baseUrl/api/clinics/all';

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: httpService.getMedicalServices(),
      builder: (context, services) {
        if (services.data == null) {
          return Center(child: CircularProgressIndicator());
        } else if (services.hasError) {
          return Center(child: Text('Error: ${services.error}'));
        } else {
          return GridView.count(
            physics: const ClampingScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: 4,
            mainAxisSpacing: 10,
            children: List.generate(
              services.data!.length,
              (index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ClinicDetailsScreen(service: services.data![index]),
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                          //color: medicalServices[index].color,
                          color: AppColors.clinic,
                        ),
                        child: Image.network(
                          '${AppText.baseUrl}/${services.data![index].image}',
                          // 'http://192.168.1.4:8000/images/pregnant.png',
                          height: 30,
                          width: 30,
                          //color: Theme.of(context).colorScheme.tertiary,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        textAlign: TextAlign.center,

                        services.data![index].title,
                        //Theme.of(context).textTheme.headline6,
                        style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).colorScheme.tertiary,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        }
      },
    );
  }
}


// GridView.count(
//       physics: const ClampingScrollPhysics(),
//       shrinkWrap: true,
//       crossAxisCount: 4,
//       mainAxisSpacing: 10,
//       children: List.generate(
//         medicalServices.length,
//         (index) {
//           return GestureDetector(
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) =>
//                       ClinicDetailsScreen(service: medicalServices[index]),
//                 ),
//               );
//             },
//             child: Column(
//               children: [
//                 Container(
//                   height: 60,
//                   width: 60,
//                   decoration: BoxDecoration(
//                     border: Border.all(
//                       color: Theme.of(context).colorScheme.primary,
//                     ),
//                     borderRadius: BorderRadius.circular(10.0),
//                     //color: medicalServices[index].color,
//                     color: AppColors.clinic,
//                   ),
//                   child: Image.asset(
//                     medicalServices[index].image,
//                     height: 30,
//                     width: 30,

//                     //color: Theme.of(context).colorScheme.tertiary,
//                   ),
//                 ),
//                 const SizedBox(height: 5),
//                 Text(
//                   textAlign: TextAlign.center,
//                   medicalServices[index].title,
//                   //Theme.of(context).textTheme.headline6,
//                   style: TextStyle(
//                     fontSize: 12,
//                     fontWeight: FontWeight.w500,
//                     color: Theme.of(context).colorScheme.tertiary,
//                   ),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );