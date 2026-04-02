class Medicine {
  final String name;
  final String dosage;
  final String manufacturer;
  final DateTime expirationDate;

  Medicine({required this.name, required this.dosage, required this.manufacturer, required this.expirationDate});

  @override
  String toString() {
    return 'Medicine{name: \$name, dosage: \$dosage, manufacturer: \$manufacturer, expirationDate: \$expirationDate}';
  }
}