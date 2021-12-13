class Location {
  String? name;
  String? country;
  String? region;
  String? lat;
  String? lon;
  String? timezoneId;
  String? localtime;
  int? localtimeEpoch;
  String? utcOffset;

  Location(
      {this.name,
      this.country,
      this.region,
      this.lat,
      this.lon,
      this.timezoneId,
      this.localtime,
      this.localtimeEpoch,
      this.utcOffset});

  Location.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    country = json['country'];
    region = json['region'];
    lat = json['lat'];
    lon = json['lon'];
    timezoneId = json['timezone_id'];
    localtime = json['localtime'];
    localtimeEpoch = json['localtime_epoch'];
    utcOffset = json['utc_offset'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['country'] = this.country;
    data['region'] = this.region;
    data['lat'] = this.lat;
    data['lon'] = this.lon;
    data['timezone_id'] = this.timezoneId;
    data['localtime'] = this.localtime;
    data['localtime_epoch'] = this.localtimeEpoch;
    data['utc_offset'] = this.utcOffset;
    return data;
  }
}
