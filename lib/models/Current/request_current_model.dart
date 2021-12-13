class Request {
  String? type;
  String? query;
  String? language;
  String? unit;

  Request({this.type, this.query, this.language, this.unit});

  Request.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    query = json['query'];
    language = json['language'];
    unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['query'] = this.query;
    data['language'] = this.language;
    data['unit'] = this.unit;
    return data;
  }
}
