class CurrentNow {
  String? observationTime;
  num? temperature;
  num? weatherCode;
  List<String>? weatherIcons;
  List<String>? weatherDescriptions;
  num? windSpeed;
  num? windDegree;
  String? windDir;
  num? pressure;
  num? precip;
  num? humidity;
  num? cloudcover;
  num? feelslike;
  num? uvIndex;
  num? visibility;
  String? isDay;

  CurrentNow(
      {this.observationTime,
      this.temperature,
      this.weatherCode,
      this.weatherIcons,
      this.weatherDescriptions,
      this.windSpeed,
      this.windDegree,
      this.windDir,
      this.pressure,
      this.precip,
      this.humidity,
      this.cloudcover,
      this.feelslike,
      this.uvIndex,
      this.visibility,
      this.isDay});

  CurrentNow.fromJson(Map<String, dynamic> json) {
    observationTime = json['observation_time'];
    temperature = json['temperature'];
    weatherCode = json['weather_code'];
    weatherIcons = json['weather_icons'].cast<String>();
    weatherDescriptions = json['weather_descriptions'].cast<String>();
    windSpeed = json['wind_speed'];
    windDegree = json['wind_degree'];
    windDir = json['wind_dir'];
    pressure = json['pressure'];
    precip = json['precip'];
    humidity = json['humidity'];
    cloudcover = json['cloudcover'];
    feelslike = json['feelslike'];
    uvIndex = json['uv_index'];
    visibility = json['visibility'];
    isDay = json['is_day'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['observation_time'] = this.observationTime;
    data['temperature'] = this.temperature;
    data['weather_code'] = this.weatherCode;
    data['weather_icons'] = this.weatherIcons;
    data['weather_descriptions'] = this.weatherDescriptions;
    data['wind_speed'] = this.windSpeed;
    data['wind_degree'] = this.windDegree;
    data['wind_dir'] = this.windDir;
    data['pressure'] = this.pressure;
    data['precip'] = this.precip;
    data['humidity'] = this.humidity;
    data['cloudcover'] = this.cloudcover;
    data['feelslike'] = this.feelslike;
    data['uv_index'] = this.uvIndex;
    data['visibility'] = this.visibility;
    data['is_day'] = this.isDay;
    return data;
  }
}
