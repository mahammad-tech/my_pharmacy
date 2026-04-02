import 'package:flutter/material.dart';

class MedicineProvider with ChangeNotifier {
  // List of medicines
  List<String> _medicines = [];

  // Getter for medicines
  List<String> get medicines => _medicines;

  // Method to add a medicine
  void addMedicine(String medicine) {
    _medicines.add(medicine);
    notifyListeners();
  }

  // Method to remove a medicine
  void removeMedicine(String medicine) {
    _medicines.remove(medicine);
    notifyListeners();
  }

  // Method to clear all medicines
  void clearMedicines() {
    _medicines.clear();
    notifyListeners();
  }
}