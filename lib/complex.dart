class ComplexModel {
  int? id;
  String? name;
  String? username;
  String? email;
  String? phone;
  String? website;
  Address? address;
  Company? company;

  ComplexModel(
      {this.id,
      this.name,
      this.username,
      this.email,
      this.phone,
      this.website,
      this.address,
      this.company});
  ComplexModel.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.name = json['name'];
    this.username = json['username'];
    this.email = json['email'];
    this.website = json['website'];
    this.address =
        json['address'] != null ? new Address.fromJson(json['address']) : null;
    this.company =
        json['company'] != null ? new Company.fromJson(json['company']) : null;

    this.phone = json['phone'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

//  final Map<String,dynamic> =  data new Map<String,dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['username'] = this.username;
    data['email'] = this.email;
    data['website'] = this.website;
    if (this.address != null) {
      data['address'] = this.address!.toJson();
    }
    if (this.company != null) {
      data['company'] = this.address!.toJson();
    }
    data['phone'] = this.phone;

    return data;
  }
}

class Address {
  String? street;
  String? city;
  String? suite;
  String? zipcode;
  Geo? geo;
  Address({this.street, this.city, this.zipcode, this.suite, this.geo});

  Address.fromJson(Map<String, dynamic> json) {
    this.street = json['street'];
    this.city = json['city'];
    this.zipcode = json['zipcode'];
    this.suite = json['suite'];
    this.geo = json['geo'] != null ? new Geo.fromJson(json['geo']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

//  final Map<String,dynamic> =  data new Map<String,dynamic>();
    data['street'] = this.street;
    data['city'] = this.city;
    data['suite'] = this.suite;
    data['zipcode'] = this.zipcode;
    if (this.geo != null) {
      data['geo'] = this.geo!.toJson();
    }

    return data;
  }
}

class Geo {
  String? long;
  String? lat;

  Geo({
    this.long,
    this.lat,
  });

  Geo.fromJson(Map<String, dynamic> json) {
    this.long = json['lng'];
    this.lat = json['lat'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = new Map<String, dynamic>();
    data['longitude'] = this.long;
    data['latitude'] = this.lat;

    return data;
  }
}

class Company {
  String? name;
  String? PatchPhrase;
  String? bs;

  Company({
    this.name,
    this.PatchPhrase,
    this.bs,
  });

  Company.fromJson(Map<String, dynamic> json) {
    this.name = json['name'];
    this.PatchPhrase = json['catchPhrase'];
    this.bs = json['bs'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = new Map<String, dynamic>();
    data['bs'] = this.bs;
    data['name'] = this.name;
    data['catchPhrase'] = this.PatchPhrase;

    return data;
  }
}

// class PostModel {
//   int? userId;
//   int? id;
//   String? title;
//   String? body;

//   PostModel({this.userId, this.id, this.title, this.body});

//   PostModel.fromJson(Map<String, dynamic> json) {
//     userId = json['userId'];
//     id = json['id'];
//     title = json['title'];
//     body = json['body'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['userId'] = this.userId;
//     data['id'] = this.id;
//     data['title'] = this.title;
//     data['body'] = this.body;
//     return data;
//   }
// }

// // class PostModel2 {
// //   String title, url;
// //   int id;
// //   PostModel2({required this.title, required this.url, required this.id});
// // }

// class PostModel2 {
//   int? albumId;
//   int? id;
//   String? title;
//   String? url;
//   String? thumbnailUrl;

//   PostModel2({this.albumId, this.id, this.title, this.url, this.thumbnailUrl});

//   PostModel2.fromJson(Map<String, dynamic> json) {
//     albumId = json['albumId'];
//     id = json['id'];
//     title = json['title'];
//     url = json['url'];
//     thumbnailUrl = json['thumbnailUrl'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['albumId'] = this.albumId;
//     data['id'] = this.id;
//     data['title'] = this.title;
//     data['url'] = this.url;
//     return data;
//   }
// }

// class modelclass {
//   int? id;
//   String? name;
//   String? username;
//   String? email;
//   Address? address;
//   String? phone;
//   String? website;
//   Company? company;

//   modelclass(
//       {this.id,
//       this.name,
//       this.username,
//       this.email,
//       this.address,
//       this.phone,
//       this.website,
//       this.company});

//   modelclass.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     username = json['username'];
//     email = json['email'];
//     address =
//         json['address'] != null ? new Address.fromJson(json['address']) : null;
//     phone = json['phone'];
//     website = json['website'];
//     company =
//         json['company'] != null ? new Company.fromJson(json['company']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['username'] = this.username;
//     data['email'] = this.email;
//     if (this.address != null) {
//       data['address'] = this.address!.toJson();
//     }
//     data['phone'] = this.phone;
//     data['website'] = this.website;
//     if (this.company != null) {
//       data['company'] = this.company!.toJson();
//     }
//     return data;
//   }
// }

// class Address {
//   String? street;
//   String? suite;
//   String? city;
//   String? zipcode;
//   Geo? geo;

//   Address({this.street, this.suite, this.city, this.zipcode, this.geo});

//   Address.fromJson(Map<String, dynamic> json) {
//     street = json['street'];
//     suite = json['suite'];
//     city = json['city'];
//     zipcode = json['zipcode'];
//     geo = json['geo'] != null ? new Geo.fromJson(json['geo']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['street'] = this.street;
//     data['suite'] = this.suite;
//     data['city'] = this.city;
//     data['zipcode'] = this.zipcode;
//     if (this.geo != null) {
//       data['geo'] = this.geo!.toJson();
//     }
//     return data;
//   }
// }

// class Geo {
//   String? lat;
//   String? lng;

//   Geo({this.lat, this.lng});

//   Geo.fromJson(Map<String, dynamic> json) {
//     lat = json['lat'];
//     lng = json['lng'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['lat'] = this.lat;
//     data['lng'] = this.lng;
//     return data;
//   }
// }

// class Company {
//   String? name;
//   String? catchPhrase;
//   String? bs;

//   Company({this.name, this.catchPhrase, this.bs});

//   Company.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     catchPhrase = json['catchPhrase'];
//     bs = json['bs'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['name'] = this.name;
//     data['catchPhrase'] = this.catchPhrase;
//     data['bs'] = this.bs;
//     return data;
//   }
// }
