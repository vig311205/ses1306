// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'data/doctors_detail.dart';
import 'model/doctor_detail_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<DoctorDetail> allDoctors = [
    DoctorDetail(
        age: 35,
        clinicName: "Hopewell Medical Center",
        name: "Dr. Alice Wright",
        speciality: "Cardiologist"),
    DoctorDetail(
        age: 42,
        clinicName: "Bayside Family Practice",
        name: "Dr. Michael Jones",
        speciality: "Family Physician"),
    DoctorDetail(
        age: 28,
        clinicName: "Summit Orthopedics",
        name: "Dr. Emily Chen",
        speciality: "Orthopedist"),
    DoctorDetail(
        age: 58,
        clinicName: "Green Oaks Neurology",
        name: "Dr. David Lee",
        speciality: "Neurologist"),
    DoctorDetail(
        age: 32,
        clinicName: "Central City Pediatrics",
        name: "Dr. Sarah Miller",
        speciality: "Pediatrician"),
    DoctorDetail(
        age: 40,
        clinicName: "Evergreen Women's Care",
        name: "Dr. Olivia Brown",
        speciality: "Obstetrician/Gynecologist"),
    DoctorDetail(
        age: 50,
        clinicName: "Sunshine Eye Clinic",
        name: "Dr. William Johnson",
        speciality: "Ophthalmologist"),
    DoctorDetail(
        age: 38,
        clinicName: "Pacific Coast Psychiatry",
        name: "Dr. Elizabeth Hernandez",
        speciality: "Psychiatrist"),
    DoctorDetail(
        age: 45,
        clinicName: "North Star Rehabilitation",
        name: "Dr. Thomas Garcia",
        speciality: "Physiatrist"),
    DoctorDetail(
        age: 30,
        clinicName: "Maple Street Dental",
        name: "Dr. Sophia Garcia",
        speciality: "Dentist"),
    DoctorDetail(
        age: 55,
        clinicName: "Lakeview Gastroenterology",
        name: "Dr. Daniel Patel",
        speciality: "Gastroenterologist"),
    DoctorDetail(
        age: 48,
        clinicName: "Riverbank Urgent Care",
        name: "Dr. Christopher Young",
        speciality: "Emergency Medicine"),
    DoctorDetail(
        age: 37,
        clinicName: "Mountain View Endocrinology",
        name: "Dr. Anna Moore",
        speciality: "Endocrinologist"),
    DoctorDetail(
        age: 62,
        clinicName: "Ocean Breeze Pulmonary",
        name: "Dr. Robert Thompson",
        speciality: "Pulmonologist"),
    DoctorDetail(
        age: 43,
        clinicName: "Hilltop Urology",
        name: "Dr. Katherine Davis",
        speciality: "Urologist"),
    DoctorDetail(
        age: 29,
        clinicName: "Valley View Sleep Center",
        name: "Dr. Matthew Lopez",
        speciality: "Sleep Medicine Physician"),
    DoctorDetail(
        age: 52,
        clinicName: "Blue Ridge Dermatology",
        name: "Dr. Susan Baker",
        speciality: "Dermatologist"),
    DoctorDetail(
        age: 41,
        clinicName: "Lakeside Oncology",
        name: "Dr. Joseph Wilson",
        speciality: "Oncologist"),
    DoctorDetail(
        age: 39,
        clinicName: "Harborside Anesthesiology",
        name: "Dr. Margaret Garcia",
        speciality: "Anesthesiologist"),
    DoctorDetail(
        age: 47,
        clinicName: "Sunrise Internal Medicine",
        name: "Dr. Charles Anderson",
        speciality: "Internal Medicine"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Dashboard",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
        ),
        itemBuilder: (context, index) {
          return Card(
            color: Colors.deepPurple[40],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  allDoctors[index].speciality.toString(),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  allDoctors[index].name.toString(),
                  overflow: TextOverflow.ellipsis,
                ),
                // ListTile(
                //   title: ,
                //   subtitle: Text(
                //     allDoctors[index].speciality.toString(),
                //     overflow: TextOverflow.ellipsis,
                //   ),
                //   trailing: Text(
                //     allDoctors[index].age.toString(),
                //     overflow: TextOverflow.ellipsis,
                //   ),
                // ),
              ],
            ),
          );
        },
        itemCount: allDoctors.length,
      ),
    );
  }
}
