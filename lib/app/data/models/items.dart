class Items {
  String ID;
  String Message;
  List<dynamic> Countries;

  Items({ this.ID, this.Message, this.Countries });

  Items.fromJson(Map<String, dynamic> json){
    this.ID = json['ID'];
    this.Message = json['Message'];
    this.Countries = json['Countries'];
  }

  Map<String, dynamic> toJson() => {'ID': ID, 'Message': Message, 'Countries': Countries};

}

class CountryList {
  String ID;
  String Country;

  CountryList({ this.ID, this.Country });

  CountryList.fromJson(Map<String, dynamic> json){
    this.ID = json['ID'];
    this.Country = json['Country'];
  }

  Map<String, dynamic> toJson() => {'ID': ID, 'Country': Country};
}

