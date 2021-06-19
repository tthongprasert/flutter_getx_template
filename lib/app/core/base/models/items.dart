class Items {
  late String ID;
  late String Message;
  late List<dynamic> Countries;

  Items({required this.ID, required this.Message, required this.Countries});

  Items.fromJson(Map<String, dynamic> json) {
    this.ID = json['ID'];
    this.Message = json['Message'];
    this.Countries = json['Countries'];
  }

  Map<String, dynamic> toJson() =>
      {'ID': ID, 'Message': Message, 'Countries': Countries};
}

class CountryList {
  late String ID;
  late String Country;

  CountryList({required this.ID, required this.Country});

  CountryList.fromJson(Map<String, dynamic> json) {
    this.ID = json['ID'];
    this.Country = json['Country'];
  }

  Map<String, dynamic> toJson() => {'ID': ID, 'Country': Country};
}
