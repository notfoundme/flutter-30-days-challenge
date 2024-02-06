class WeatherModel {
  final String datetime;
  final double datetimeEpoch;
  final double temp;
  final double feelslike;
  final double humidity;
  final double dew;
  final double precip;
  final double precipprob;
  final double snow;
  final double snowdepth;
  final String? preciptype;
  final double windgust;
  final double windspeed;
  final double winddir;
  final double pressure;
  final double visibility;
  final double cloudcover;
  final double solarradiation;
  final double solarenergy;
  final double uvindex;
  final double severerisk;
  final String conditions;
  final String icon;
  final List<dynamic> stations;
  final String source;
  final String sunrise;
  final double sunriseEpoch;
  final String sunset;
  final double sunsetEpoch;
  final double moonphase;

  WeatherModel({
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
    required this.sunrise,
    required this.sunriseEpoch,
    required this.sunset,
    required this.sunsetEpoch,
    required this.moonphase,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
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
      stations: json['stations'],
      source: json['source'],
      sunrise: json['sunrise'],
      sunriseEpoch: json['sunriseEpoch'].toDouble(),
      sunset: json['sunset'],
      sunsetEpoch: json['sunsetEpoch'].toDouble(),
      moonphase: json['moonphase'].toDouble(),
    );
  }
}
