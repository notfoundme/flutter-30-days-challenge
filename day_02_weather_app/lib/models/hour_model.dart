class HourModel {
  late String datetime;
  late double datetimeEpoch;
  late double temp;
  late double feelslike;
  late double humidity;
  late double dew;
  late double precip;
  late double precipprob;
  late double snow;
  late double snowdepth;
  late String? preciptype;
  late double windgust;
  late double windspeed;
  late double winddir;
  late double pressure;
  late double visibility;
  late double cloudcover;
  late double solarradiation;
  late double solarenergy;
  late double uvindex;
  late double severerisk;
  late String conditions;
  late String icon;
  late List<String> stations;
  late String source;

  HourModel({
    required this.datetime,
    required this.datetimeEpoch,
    required this.temp,
    required this.feelslike,
    required this.humidity,
    required this.dew,
    required this.precip,
    required this.precipprob,
    required this.snow,
    required this.snowdepth,
    required this.preciptype,
    required this.windgust,
    required this.windspeed,
    required this.winddir,
    required this.pressure,
    required this.visibility,
    required this.cloudcover,
    required this.solarradiation,
    required this.solarenergy,
    required this.uvindex,
    required this.severerisk,
    required this.conditions,
    required this.icon,
    required this.stations,
    required this.source,
  });

  factory HourModel.fromJson(Map<String, dynamic> json) {
    return HourModel(
      datetime: json['datetime'],
      datetimeEpoch: json['datetimeEpoch'].toDouble(),
      temp: json['temp'].toDouble(),
      feelslike: json['feelslike'].toDouble(),
      humidity: json['humidity'].toDouble(),
      dew: json['dew'].toDouble(),
      precip: json['precip'].toDouble(),
      precipprob: json['precipprob'].toDouble(),
      snow: json['snow'].toDouble(),
      snowdepth: json['snowdepth'].toDouble(),
      preciptype: json['preciptype'],
      windgust: json['windgust'].toDouble(),
      windspeed: json['windspeed'].toDouble(),
      winddir: json['winddir'].toDouble(),
      pressure: json['pressure'].toDouble(),
      visibility: json['visibility'].toDouble(),
      cloudcover: json['cloudcover'].toDouble(),
      solarradiation: json['solarradiation'].toDouble(),
      solarenergy: json['solarenergy'].toDouble(),
      uvindex: json['uvindex'].toDouble(),
      severerisk: json['severerisk'].toDouble(),
      conditions: json['conditions'],
      icon: json['icon'],
      stations: [],
      source: json['source'],
    );
  }
}