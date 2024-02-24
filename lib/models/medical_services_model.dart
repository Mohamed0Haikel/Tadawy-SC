import 'package:flutter/material.dart';

import '../models/doctor_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class MedicalServicesModel {
  //final Color color;
  final String title;
  final String image;
  final List<Doctor> doctors;

  MedicalServicesModel({
    //required this.color,
    required this.title,
    required this.image,
    required this.doctors,
  });

  factory MedicalServicesModel.fromJson(Map<String, dynamic> json) {
    return MedicalServicesModel(
      //color: json['color'],
      title: json['name'],
      image: json['photo'],
      doctors: json['doctors'],
    );
  }
}
