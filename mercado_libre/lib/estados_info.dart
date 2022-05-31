// To parse this JSON data, do
//
//     final estadosinfo = estadosinfoFromMap(jsonString);

import 'dart:convert';

class Estadosinfo {
    Estadosinfo({
      required  this.estados,
    });

    List<List<Estado>> estados;

    factory Estadosinfo.fromJson(String str) => Estadosinfo.fromMap(json.decode(str));


    factory Estadosinfo.fromMap(Map<String, dynamic> json) => Estadosinfo(
        estados: List<List<Estado>>.from(json["estados"].map((x) => List<Estado>.from(x.map((x) => Estado.fromMap(x))))),
    );
}

class Estado {
    Estado({
      required  this.state,
      required  this.notes,
        this.covid19Site,
        this.covid19SiteSecondary,
        this.covid19SiteTertiary,
        this.covid19SiteQuaternary,
        this.covid19SiteQuinary,
        this.twitter,
        this.covid19SiteOld,
        this.covidTrackingProjectPreferredTotalTestUnits,
        this.covidTrackingProjectPreferredTotalTestField,
        this.totalTestResultsField,
      required  this.pui,
      required  this.pum,
      required  this.name,
      required  this.fips,
    });

    String state;
    String notes;
    String? covid19Site;
    String? covid19SiteSecondary;
    String? covid19SiteTertiary;
    String? covid19SiteQuaternary;
    String? covid19SiteQuinary;
    String? twitter;
    String? covid19SiteOld;
    String? covidTrackingProjectPreferredTotalTestUnits;
    String? covidTrackingProjectPreferredTotalTestField;
    String? totalTestResultsField;
    String pui;
    bool pum;
    String name;
    String fips;

    factory Estado.fromJson(String str) => Estado.fromMap(json.decode(str));

    factory Estado.fromMap(Map<String, dynamic> json) => Estado(
        state: json["state"],
        notes: json["notes"],
        covid19Site: json["covid19Site"],
        covid19SiteSecondary: json["covid19SiteSecondary"],
        covid19SiteTertiary: json["covid19SiteTertiary"],
        covid19SiteQuaternary: json["covid19SiteQuaternary"],
        covid19SiteQuinary: json["covid19SiteQuinary"],
        twitter: json["twitter"],
        covid19SiteOld: json["covid19SiteOld"],
        covidTrackingProjectPreferredTotalTestUnits: json["covidTrackingProjectPreferredTotalTestUnits"],
        covidTrackingProjectPreferredTotalTestField: json["covidTrackingProjectPreferredTotalTestField"],
        totalTestResultsField:json["totalTestResultsField"],
        pui: json["pui"],
        pum: json["pum"],
        name: json["name"],
        fips: json["fips"],
    );
}
