
class DayDataModel {
  final String datetime;
  final double temp;
  final double feelslike;

  DayDataModel({
    required this.datetime,
    required this.temp,
    required this.feelslike,
  });

  factory DayDataModel.fromJson(Map<String, dynamic> json) {
    return DayDataModel(
      datetime: json['datetime'],
      temp: json['temp'].toDouble(),
      feelslike: json['feelslike'].toDouble(),
    );
  }
}
