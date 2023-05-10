class Services {
  String name;
  double price;

  Services({required this.name, required this.price});
}

List<Services> services = [
  Services(name: 'Residential Cleaning Service', price: 100.0),
  Services(name: 'Commercial Cleaning Service', price: 200.0),
  Services(name: 'Post Renovation Cleaning Service', price: 300.0),
  Services(name: 'Housekeeping Service', price: 300.0),
];

double getPrice(String serviceName) {
  return services.firstWhere((service) => service.name == serviceName).price;
}
