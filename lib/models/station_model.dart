class StationModel {
    String? changeuuid;
    String? stationuuid;
    String? serveruuid;
    String? name;
    String? url;
    String? urlResolved;
    String? homepage;
    String? favicon;
    String? tags;
    String? country;
    String? countrycode;
    dynamic iso31662;
    String? state;
    String? language;
    String? languagecodes;
    int? votes;
    DateTime? lastchangetime;
    DateTime? lastchangetimeIso8601;
    String? codec;
    int? bitrate;
    int? hls;
    int? lastcheckok;
    DateTime? lastchecktime;
    DateTime? lastchecktimeIso8601;
    DateTime? lastcheckoktime;
    DateTime? lastcheckoktimeIso8601;
    DateTime? lastlocalchecktime;
    DateTime? lastlocalchecktimeIso8601;
    DateTime? clicktimestamp;
    DateTime? clicktimestampIso8601;
    int? clickcount;
    int? clicktrend;
    int? sslError;
    dynamic geoLat;
    dynamic geoLong;
    bool? hasExtendedInfo;

    StationModel({
         this.changeuuid,
         this.stationuuid,
         this.serveruuid,
         this.name,
         this.url,
         this.urlResolved,
         this.homepage,
         this.favicon,
         this.tags,
         this.country,
         this.countrycode,
         this.iso31662,
         this.state,
         this.language,
         this.languagecodes,
         this.votes,
         this.lastchangetime,
         this.lastchangetimeIso8601,
         this.codec,
         this.bitrate,
         this.hls,
         this.lastcheckok,
         this.lastchecktime,
         this.lastchecktimeIso8601,
         this.lastcheckoktime,
         this.lastcheckoktimeIso8601,
         this.lastlocalchecktime,
         this.lastlocalchecktimeIso8601,
         this.clicktimestamp,
         this.clicktimestampIso8601,
         this.clickcount,
         this.clicktrend,
         this.sslError,
         this.geoLat,
         this.geoLong,
         this.hasExtendedInfo,
    });

    factory StationModel.fromJson(Map<String, dynamic> json) {
      // print("Registro: $json");
      return StationModel(
        changeuuid: json["changeuuid"],
        stationuuid: json["stationuuid"],
        serveruuid: json["serveruuid"],
        name: json["name"],
        url: json["url"],
        urlResolved: json["url_resolved"],
        homepage: json["homepage"],
        favicon: json["favicon"],
        tags: json["tags"],
        country: json["country"],
        countrycode: json["countrycode"],
        iso31662: json["iso_3166_2"],
        state: json["state"],
        language: json["language"],
        languagecodes: json["languagecodes"],
        votes: json["votes"],
        lastchangetime: DateTime.parse(json["lastchangetime"]),
        lastchangetimeIso8601: DateTime.parse(json["lastchangetime_iso8601"]),
        codec: json["codec"],
        bitrate: json["bitrate"],
        hls: json["hls"],
        lastcheckok: json["lastcheckok"],
        lastchecktime: DateTime.parse(json["lastchecktime"]),
        lastchecktimeIso8601: DateTime.parse(json["lastchecktime_iso8601"]),
        lastcheckoktime: DateTime.parse(json["lastcheckoktime"]),
        lastcheckoktimeIso8601: DateTime.parse(json["lastcheckoktime_iso8601"]),
        lastlocalchecktime: DateTime.parse(json["lastlocalchecktime"]),
        lastlocalchecktimeIso8601: DateTime.parse(json["lastlocalchecktime_iso8601"]),
        clicktimestamp: DateTime.parse(json["clicktimestamp"]),
        clicktimestampIso8601: DateTime.parse(json["clicktimestamp_iso8601"]),
        clickcount: json["clickcount"],
        clicktrend: json["clicktrend"],
        sslError: json["ssl_error"],
        geoLat: json["geo_lat"],
        geoLong: json["geo_long"],
        hasExtendedInfo: json["has_extended_info"],
      );
    }

    // Map<String, dynamic> toJson() => {
    //     "changeuuid": changeuuid,
    //     "stationuuid": stationuuid,
    //     "serveruuid": serveruuid,
    //     "name": name,
    //     "url": url,
    //     "url_resolved": urlResolved,
    //     "homepage": homepage,
    //     "favicon": favicon,
    //     "tags": tags,
    //     "country": country,
    //     "countrycode": countrycode,
    //     "iso_3166_2": iso31662,
    //     "state": state,
    //     "language": language,
    //     "languagecodes": languagecodes,
    //     "votes": votes,
    //     "lastchangetime": lastchangetime?.toIso8601String(),
    //     "lastchangetime_iso8601": lastchangetimeIso8601?.toIso8601String(),
    //     "codec": codec,
    //     "bitrate": bitrate,
    //     "hls": hls,
    //     "lastcheckok": lastcheckok,
    //     "lastchecktime": lastchecktime?.toIso8601String(),
    //     "lastchecktime_iso8601": lastchecktimeIso8601?.toIso8601String(),
    //     "lastcheckoktime": lastcheckoktime?.toIso8601String(),
    //     "lastcheckoktime_iso8601": lastcheckoktimeIso8601?.toIso8601String(),
    //     "lastlocalchecktime": lastlocalchecktime?.toIso8601String(),
    //     "lastlocalchecktime_iso8601": lastlocalchecktimeIso8601?.toIso8601String(),
    //     "clicktimestamp": clicktimestamp?.toIso8601String(),
    //     "clicktimestamp_iso8601": clicktimestampIso8601?.toIso8601String(),
    //     "clickcount": clickcount,
    //     "clicktrend": clicktrend,
    //     "ssl_error": sslError,
    //     "geo_lat": geoLat,
    //     "geo_long": geoLong,
    //     "has_extended_info": hasExtendedInfo,
    // };
}