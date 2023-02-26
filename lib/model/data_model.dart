class DataModel {
  int? status;
  String? message;
  List<Data>? data;

  DataModel({this.status, this.message, this.data});

  DataModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }
}

class Data {
  int? id;
  String? nationality;
  String? passportNumber;
  String? name;
  String? work;
  String? birthDay;
  String? age;
  String? weight;
  String? salary;
  String? previousExperience;
  int? yearExperience;
  String? educationalLevel;
  String? languages;
  String? religion;
  String? socialSituation;
  int? numberOfChildren;
  String? skills;
  String? video;
  String? image;
  String? state;

  Data(
      {this.id,
      this.nationality,
      this.passportNumber,
      this.name,
      this.work,
      this.birthDay,
      this.age,
      this.weight,
      this.salary,
      this.previousExperience,
      this.yearExperience,
      this.educationalLevel,
      this.languages,
      this.religion,
      this.socialSituation,
      this.numberOfChildren,
      this.skills,
      this.video,
      this.image,
      this.state});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nationality = json['nationality'];
    passportNumber = json['passport_number'];
    name = json['name'];
    work = json['work'];
    birthDay = json['Birth_day'];
    age = json['age'];
    weight = json['weight'];
    salary = json['salary'];
    previousExperience = json['previous_experience'];
    yearExperience = json['year_experience'];
    educationalLevel = json['educational_level'];
    languages = json['languages'];
    religion = json['Religion'];
    socialSituation = json['social_situation'];
    numberOfChildren = json['number_of_children'];
    skills = json['skills'];
    video = json['video'];
    image = json['image'];
    state = json['state'];
  }
}
