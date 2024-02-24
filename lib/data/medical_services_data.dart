import 'package:tdaway/constants/constants.dart';
import 'package:tdaway/models/model.dart';
import '../models/doctor_model.dart';
import 'package:tdaway/models/medical_services_model.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

class HttpService {
  Future<List<MedicalServicesModel>> getMedicalServices() async {
    //String baseUrl = 'http://192.168.1.4:8000';
    String url = '${AppText.baseUrl}/api/clinics/all';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      List<MedicalServicesModel> medicalService = [];
      for (var data in jsonResponse) {
        MedicalServicesModel services = MedicalServicesModel(
          title: data['name'],
          image: data['photo'],
          doctors: [
            Doctor(
              name: 'Dr. Cilia Doe',
              photo: AppImages.doctorFemale,
              rating: 4.5,
              specialty: 'Bones',
              description:
                  'Dr. Cilia Doe is a specialist in bones and joints. She has been working in this field for 10 years. She is a member of the American Association of Orthopedic Surgeons.',
            ),
            Doctor(
              name: 'Dr. Cilia Doe',
              photo: AppImages.doctorFemale,
              rating: 4.5,
              specialty: 'Bones',
              description:
                  'Dr. Cilia Doe is a specialist in bones and joints. She has been working in this field for 10 years. She is a member of the American Association of Orthopedic Surgeons.',
            ),
            Doctor(
              name: 'Dr. Cilia Doe',
              photo: AppImages.doctorFemale,
              rating: 4.5,
              specialty: 'Bones',
              description:
                  'Dr. Cilia Doe is a specialist in bones and joints. She has been working in this field for 10 years. She is a member of the American Association of Orthopedic Surgeons.',
            ),
          ],
        );
        medicalService.add(services);
      }

      return medicalService;
    } else {
      throw Exception('Failed to load medical services from the internet');
    }
  }
}



// List<MedicalServicesModel> medicalService = [
//   MedicalServicesModel(
//     //color: AppColors.clinic,
//     title: AppText.clinic1,
//     image: AppImages.brainClinic,
//     doctors: [
//       Doctor(
//         name: 'Dr. Cilia Doe',
//         photo: AppImages.doctorFemale,
//         rating: 4.5,
//         specialty: 'Bones',
//         description:
//             'Dr. Cilia Doe is a specialist in bones and joints. She has been working in this field for 10 years. She is a member of the American Association of Orthopedic Surgeons.',
//       ),
//       Doctor(
//         name: 'Dr. Cilia Doe',
//         photo: AppImages.doctorFemale,
//         rating: 4.5,
//         specialty: 'Bones',
//         description:
//             'Dr. Cilia Doe is a specialist in bones and joints. She has been working in this field for 10 years. She is a member of the American Association of Orthopedic Surgeons.',
//       ),
//       Doctor(
//         name: 'Dr. Cilia Doe',
//         photo: AppImages.doctorFemale,
//         rating: 4.5,
//         specialty: 'Bones',
//         description:
//             'Dr. Cilia Doe is a specialist in bones and joints. She has been working in this field for 10 years. She is a member of the American Association of Orthopedic Surgeons.',
//       ),
//     ],
//   ),
//   MedicalServicesModel(
//     //color: AppColors.clinic,
//     title: AppText.clinic2,
//     image: AppImages.skinCancer,
//     doctors: [
//       Doctor(
//         name: 'Dr. Doe',
//         photo: AppImages.doctorMale,
//         rating: 4.5,
//         specialty: 'Bones',
//         description:
//             'Dr. Cilia Doe is a specialist in bones and joints. She has been working in this field for 10 years. She is a member of the American Association of Orthopedic Surgeons.',
//       ),
//       Doctor(
//         name: 'Dr. Doe',
//         photo: AppImages.doctorMale,
//         rating: 4.5,
//         specialty: 'Bones',
//         description:
//             'Dr. Cilia Doe is a specialist in bones and joints. She has been working in this field for 10 years. She is a member of the American Association of Orthopedic Surgeons.',
//       ),
//       Doctor(
//         name: 'Dr. Doe',
//         photo: AppImages.doctorMale,
//         rating: 4.5,
//         specialty: 'Bones',
//         description:
//             'Dr. Cilia Doe is a specialist in bones and joints. She has been working in this field for 10 years. She is a member of the American Association of Orthopedic Surgeons.',
//       ),
//     ],
//   ),
//   MedicalServicesModel(
//     //color: AppColors.clinic,
//     title: AppText.clinic3,
//     image: AppImages.teethClinic,
//     doctors: [
//       Doctor(
//         name: 'Dr. Doe',
//         photo: AppImages.doctorMale,
//         rating: 4.5,
//         specialty: 'Bones',
//         description:
//             'Dr. Cilia Doe is a specialist in bones and joints. She has been working in this field for 10 years. She is a member of the American Association of Orthopedic Surgeons.',
//       ),
//       Doctor(
//         name: 'Dr. Doe',
//         photo: AppImages.doctorMale,
//         rating: 4.5,
//         specialty: 'Bones',
//         description:
//             'Dr. Cilia Doe is a specialist in bones and joints. She has been working in this field for 10 years. She is a member of the American Association of Orthopedic Surgeons.',
//       ),
//       Doctor(
//         name: 'Dr. Doe',
//         photo: AppImages.doctorMale,
//         rating: 4.5,
//         specialty: 'Bones',
//         description:
//             'Dr. Cilia Doe is a specialist in bones and joints. She has been working in this field for 10 years. She is a member of the American Association of Orthopedic Surgeons.',
//       ),
//     ],
//   ),
//   MedicalServicesModel(
//     //color: AppColors.clinic,
//     title: AppText.clinic4,
//     image: AppImages.heartClinic,
//     doctors: [
//       Doctor(
//         name: 'Dr. Cilia Doe',
//         photo: AppImages.doctorFemale,
//         rating: 4.5,
//         specialty: 'Bones',
//         description:
//             'Dr. Cilia Doe is a specialist in bones and joints. She has been working in this field for 10 years. She is a member of the American Association of Orthopedic Surgeons.',
//       ),
//       Doctor(
//         name: 'Dr. Cilia Doe',
//         photo: AppImages.doctorFemale,
//         rating: 4.5,
//         specialty: 'Bones',
//         description:
//             'Dr. Cilia Doe is a specialist in bones and joints. She has been working in this field for 10 years. She is a member of the American Association of Orthopedic Surgeons.',
//       ),
//       Doctor(
//         name: 'Dr. Cilia Doe',
//         photo: AppImages.doctorFemale,
//         rating: 4.5,
//         specialty: 'Bones',
//         description:
//             'Dr. Cilia Doe is a specialist in bones and joints. She has been working in this field for 10 years. She is a member of the American Association of Orthopedic Surgeons.',
//       ),
//     ],
//   ),
//   MedicalServicesModel(
//     // color: AppColors.clinic,
//     title: AppText.clinic5,
//     image: AppImages.incubatorClinic,
//     doctors: [
//       Doctor(
//         name: 'Dr. Cilia Doe',
//         photo: AppImages.doctorFemale,
//         rating: 4.5,
//         specialty: 'Bones',
//         description:
//             'Dr. Cilia Doe is a specialist in bones and joints. She has been working in this field for 10 years. She is a member of the American Association of Orthopedic Surgeons.',
//       ),
//       Doctor(
//         name: 'Dr. Cilia Doe',
//         photo: AppImages.doctorFemale,
//         rating: 4.5,
//         specialty: 'Bones',
//         description:
//             'Dr. Cilia Doe is a specialist in bones and joints. She has been working in this field for 10 years. She is a member of the American Association of Orthopedic Surgeons.',
//       ),
//       Doctor(
//         name: 'Dr. Cilia Doe',
//         photo: AppImages.doctorFemale,
//         rating: 4.5,
//         specialty: 'Bones',
//         description:
//             'Dr. Cilia Doe is a specialist in bones and joints. She has been working in this field for 10 years. She is a member of the American Association of Orthopedic Surgeons.',
//       ),
//     ],
//   ),
//   MedicalServicesModel(
//     //color: AppColors.clinic,
//     title: AppText.clinic6,
//     image: AppImages.breastCancerClinic,
//     doctors: [
//       Doctor(
//         name: 'Dr. Cilia Doe',
//         photo: AppImages.doctorFemale,
//         rating: 4.5,
//         specialty: 'Bones',
//         description:
//             'Dr. Cilia Doe is a specialist in bones and joints. She has been working in this field for 10 years. She is a member of the American Association of Orthopedic Surgeons.',
//       ),
//       Doctor(
//         name: 'Dr. Cilia Doe',
//         photo: AppImages.doctorFemale,
//         rating: 4.5,
//         specialty: 'Bones',
//         description:
//             'Dr. Cilia Doe is a specialist in bones and joints. She has been working in this field for 10 years. She is a member of the American Association of Orthopedic Surgeons.',
//       ),
//       Doctor(
//         name: 'Dr. Cilia Doe',
//         photo: AppImages.doctorFemale,
//         rating: 4.5,
//         specialty: 'Bones',
//         description:
//             'Dr. Cilia Doe is a specialist in bones and joints. She has been working in this field for 10 years. She is a member of the American Association of Orthopedic Surgeons.',
//       ),
//     ],
//   ),
//   MedicalServicesModel(
//     //color: AppColors.clinic,
//     title: AppText.clinic7,
//     image: AppImages.noseEarThroatClinic,
//     doctors: [
//       Doctor(
//         name: 'Dr. Cilia Doe',
//         photo: AppImages.doctorFemale,
//         rating: 4.5,
//         specialty: 'Bones',
//         description:
//             'Dr. Cilia Doe is a specialist in bones and joints. She has been working in this field for 10 years. She is a member of the American Association of Orthopedic Surgeons.',
//       ),
//       Doctor(
//         name: 'Dr. Cilia Doe',
//         photo: AppImages.doctorFemale,
//         rating: 4.5,
//         specialty: 'Bones',
//         description:
//             'Dr. Cilia Doe is a specialist in bones and joints. She has been working in this field for 10 years. She is a member of the American Association of Orthopedic Surgeons.',
//       ),
//       Doctor(
//         name: 'Dr. Cilia Doe',
//         photo: AppImages.doctorFemale,
//         rating: 4.5,
//         specialty: 'Bones',
//         description:
//             'Dr. Cilia Doe is a specialist in bones and joints. She has been working in this field for 10 years. She is a member of the American Association of Orthopedic Surgeons.',
//       ),
//     ],
//   ),
//   MedicalServicesModel(
//     //color: AppColors.clinic,
//     title: AppText.clinic8,
//     image: AppImages.eyeClinic,
//     doctors: [
//       Doctor(
//         name: 'Dr. Cilia Doe',
//         photo: AppImages.doctorFemale,
//         rating: 4.5,
//         specialty: 'Bones',
//         description:
//             'Dr. Cilia Doe is a specialist in bones and joints. She has been working in this field for 10 years. She is a member of the American Association of Orthopedic Surgeons.',
//       ),
//       Doctor(
//         name: 'Dr. Cilia Doe',
//         photo: AppImages.doctorFemale,
//         rating: 4.5,
//         specialty: 'Bones',
//         description:
//             'Dr. Cilia Doe is a specialist in bones and joints. She has been working in this field for 10 years. She is a member of the American Association of Orthopedic Surgeons.',
//       ),
//     ],
//   ),
//   MedicalServicesModel(
//     //color: AppColors.clinic,
//     title: AppText.clinic9,
//     image: AppImages.bonesClinic,
//     doctors: [
//       Doctor(
//         name: 'Dr. Cilia Doe',
//         photo: AppImages.doctorFemale,
//         rating: 4.5,
//         specialty: 'Bones',
//         description: '',
//       ),
//       Doctor(
//         name: 'Dr. Cilia Doe',
//         photo: AppImages.doctorFemale,
//         rating: 4.5,
//         specialty: 'Bones',
//         description: '',
//       ),
//       Doctor(
//         name: 'Dr. Cilia Doe',
//         photo: AppImages.doctorFemale,
//         rating: 4.5,
//         specialty: 'Bones',
//         description: '',
//       ),
//     ],
//   ),
//   MedicalServicesModel(
//     //color: AppColors.clinic,
//     title: AppText.clinic10,
//     image: AppImages.emergencyClinic,
//     doctors: [
//       Doctor(
//         name: 'Dr. Cilia Doe',
//         photo: AppImages.doctorFemale,
//         rating: 4.5,
//         specialty: 'Bones',
//         description:
//             'Dr. Cilia Doe is a specialist in bones and joints. She has been working in this field for 10 years. She is a member of the American Association of Orthopedic Surgeons.',
//       ),
//       Doctor(
//         name: 'Dr. Cilia Doe',
//         photo: AppImages.doctorFemale,
//         rating: 4.5,
//         specialty: 'Bones',
//         description:
//             'Dr. Cilia Doe is a specialist in bones and joints. She has been working in this field for 10 years. She is a member of the American Association of Orthopedic Surgeons.',
//       ),
//       Doctor(
//         name: 'Dr. Cilia Doe',
//         photo: AppImages.doctorFemale,
//         rating: 4.5,
//         specialty: 'Bones',
//         description:
//             'Dr. Cilia Doe is a specialist in bones and joints. She has been working in this field for 10 years. She is a member of the American Association of Orthopedic Surgeons.',
//       ),
//     ],
//   ),
//   MedicalServicesModel(
//     //color: AppColors.clinic,
//     title: AppText.clinic11,
//     image: AppImages.pregnantClinic,
//     doctors: [
//       Doctor(
//         name: 'Dr. Cilia Doe',
//         photo: AppImages.doctorFemale,
//         rating: 4.5,
//         specialty: 'Bones',
//         description:
//             'Dr. Cilia Doe is a specialist in bones and joints. She has been working in this field for 10 years. She is a member of the American Association of Orthopedic Surgeons.',
//       ),
//       Doctor(
//         name: 'Dr. Cilia Doe',
//         photo: AppImages.doctorFemale,
//         rating: 4.5,
//         specialty: 'Bones',
//         description:
//             'Dr. Cilia Doe is a specialist in bones and joints. She has been working in this field for 10 years. She is a member of the American Association of Orthopedic Surgeons.',
//       ),
//       Doctor(
//         name: 'Dr. Cilia Doe',
//         photo: AppImages.doctorFemale,
//         rating: 4.5,
//         specialty: 'Bones',
//         description:
//             'Dr. Cilia Doe is a specialist in bones and joints. She has been working in this field for 10 years. She is a member of the American Association of Orthopedic Surgeons.',
//       ),
//     ],
//   ),
// ];
