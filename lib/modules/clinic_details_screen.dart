import 'package:flutter/material.dart';
import '../models/medical_services_model.dart';
import '../models/doctor_model.dart';

class ClinicDetailsScreen extends StatelessWidget {
  final MedicalServicesModel service;

  const ClinicDetailsScreen({Key? key, required this.service})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(service.title),
      ),
      body: Column(children: [
        Expanded(
          flex: 1,
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
              image: DecorationImage(
                image: AssetImage(
                  "images/brain.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Clinic Details',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onTertiary,
                    // color: Color.fromARGB(255, 1, 124, 112),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Title: ${service.title}',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onTertiary,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Doctors:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    // color: Color.fromARGB(255, 1, 124, 112),
                    color: Theme.of(context).colorScheme.onTertiary,
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 200.0,
                    child: ListView.builder(
                      itemCount: service.doctors.length,
                      itemBuilder: (context, index) {
                        Doctor doctor = service.doctors[index];
                        return Container(
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          margin: const EdgeInsets.symmetric(vertical: 8),
                          child: ListTile(
                            title: Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, bottom: 8),
                              child: Text(
                                doctor.name,
                                style: TextStyle(
                                  color:
                                      Theme.of(context).colorScheme.onTertiary,
                                ),
                              ),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  doctor.specialty,
                                  style: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onTertiary,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Theme.of(context)
                                        .colorScheme
                                        .onPrimaryContainer,
                                  ),
                                  onPressed: () {},
                                  child: const Text('Book Now'),
                                )
                              ],
                            ),
                            leading: Image.asset(
                              doctor.photo,
                            ),
                            trailing: SizedBox(
                              height: 100,
                              width: 100,
                              child: Row(
                                children: [
                                  IconButton(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onTertiary,
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.favorite_border,
                                    ),
                                  ),
                                  IconButton(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onTertiary,
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.star_border,
                                    ),
                                  ),
                                  // Row(
                                  //   children: [
                                  //     IconButton(
                                  //         onPressed: () {},
                                  //         icon: const Icon(Icons.star)),
                                  //     Text('${doctor.rating}'),
                                  //   ],
                                  // ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
