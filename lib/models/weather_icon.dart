class WeatherIcon {
  final String? iconName;
  final String? iconUrl;

  WeatherIcon({
    this.iconName,
    this.iconUrl,
  });

  WeatherIcon.fromJson(Map<String, dynamic> json)
      : iconName = json['icon_name'],
        iconUrl = json['icon_url'];

  Map<String, dynamic> toJson() => {
        'icon_name': iconName,
        'icon_url': iconUrl,
      };
}
