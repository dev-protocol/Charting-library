import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tvchart_types.g.dart';

enum ChartTheme {
  @JsonValue('Light')
  light,

  @JsonValue('Dark')
  dark,
}

enum AccessListType {
  @JsonValue('black')
  black,

  @JsonValue('white')
  white,
}

enum Timezone {
  @JsonValue('Etc/UTC')
  utc,

  @JsonValue('Africa/Cairo')
  africaCairo,

  @JsonValue('Africa/Johannesburg')
  africaJohannesburg,

  @JsonValue('Africa/Lagos')
  africaLagos,

  @JsonValue('America/Argentina/Buenos_Aires')
  americaArgentinaBuenosAires,

  @JsonValue('America/Bogota')
  americaBogota,

  @JsonValue('America/Caracas')
  americaCaracas,

  @JsonValue('America/Chicago')
  americaChicago,

  @JsonValue('America/El_Salvador')
  americaElSalvador,

  @JsonValue('America/Juneau')
  americaJuneau,

  @JsonValue('America/Lima')
  americaLima,

  @JsonValue('America/Los_Angeles')
  americaLosAngeles,

  @JsonValue('America/Mexico_City')
  americaMexicoCity,

  @JsonValue('America/New_York')
  americaNewYork,

  @JsonValue('America/Phoenix')
  americaPhoenix,

  @JsonValue('America/Santiago')
  americaSantiago,

  @JsonValue('America/Sao_Paulo')
  americaSaoPaulo,

  @JsonValue('America/Toronto')
  americaToronto,

  @JsonValue('America/Vancouver')
  americaVancouver,

  @JsonValue('Asia/Almaty')
  asiaAlmaty,

  @JsonValue('Asia/Ashkhabad')
  asiaAshkhabad,

  @JsonValue('Asia/Bahrain')
  asiaBahrain,

  @JsonValue('Asia/Bangkok')
  asiaBangkok,

  @JsonValue('Asia/Chongqing')
  asiaChongqing,

  @JsonValue('Asia/Dubai')
  asiaDubai,

  @JsonValue('Asia/Ho_Chi_Minh')
  asiaHoChiMinh,

  @JsonValue('Asia/Hong_Kong')
  asiaHongKong,

  @JsonValue('Asia/Jakarta')
  asiaJakarta,

  @JsonValue('Asia/Jerusalem')
  asiaJerusalem,

  @JsonValue('Asia/Kathmandu')
  asiaKathmandu,

  @JsonValue('Asia/Kolkata')
  asiaKolkata,

  @JsonValue('Asia/Kuwait')
  asiaKuwait,

  @JsonValue('Asia/Muscat')
  asiaMuscat,

  @JsonValue('Asia/Qatar')
  asiaQatar,

  @JsonValue('Asia/Riyadh')
  asiaRiyadh,

  @JsonValue('Asia/Seoul')
  asiaSeoul,

  @JsonValue('Asia/Shanghai')
  asiaShanghai,

  @JsonValue('Asia/Singapore')
  asiaSingapore,

  @JsonValue('Asia/Taipei')
  asiaTaipei,

  @JsonValue('Asia/Tehran')
  asiaTehran,

  @JsonValue('Asia/Tokyo')
  asiaTokyo,

  @JsonValue('Atlantic/Reykjavik')
  atlanticReykjavik,

  @JsonValue('Australia/ACT')
  australiaACT,

  @JsonValue('Australia/Adelaide')
  australiaAdelaide,

  @JsonValue('Australia/Brisbane')
  australiaBrisbane,

  @JsonValue('Australia/Perth')
  australiaPerth,

  @JsonValue('Australia/Sydney')
  australiaSydney,

  @JsonValue('Europe/Amsterdam')
  europeAmsterdam,

  @JsonValue('Europe/Athens')
  europeAthens,

  @JsonValue('Europe/Belgrade')
  europeBelgrade,

  @JsonValue('Europe/Berlin')
  europeBerlin,

  @JsonValue('Europe/Brussels')
  europeBrussels,

  @JsonValue('Europe/Copenhagen')
  europeCopenhagen,

  @JsonValue('Europe/Dublin')
  europeDublin,

  @JsonValue('Europe/Helsinki')
  europeHelsinki,

  @JsonValue('Europe/Istanbul')
  europeIstanbul,

  @JsonValue('Europe/Lisbon')
  europeLisbon,

  @JsonValue('Europe/London')
  europeLondon,

  @JsonValue('Europe/Luxembourg')
  europeLuxembourg,

  @JsonValue('Europe/Madrid')
  europeMadrid,

  @JsonValue('Europe/Malta')
  europeMalta,

  @JsonValue('Europe/Moscow')
  europeMoscow,

  @JsonValue('Europe/Oslo')
  europeOslo,

  @JsonValue('Europe/Paris')
  europeParis,

  @JsonValue('Europe/Riga')
  europeRiga,

  @JsonValue('Europe/Rome')
  europeRome,

  @JsonValue('Europe/Stockholm')
  europeStockholm,

  @JsonValue('Europe/Tallinn')
  europeTallinn,

  @JsonValue('Europe/Vilnius')
  europeVilnius,

  @JsonValue('Europe/Warsaw')
  europeWarsaw,

  @JsonValue('Europe/Zurich')
  europeZurich,

  @JsonValue('Pacific/Auckland')
  pacificAuckland,

  @JsonValue('Pacific/Chatham')
  pacificChatham,

  @JsonValue('Pacific/Fakaofo')
  pacificFakaofo,

  @JsonValue('Pacific/Honolulu')
  pacificHonolulu,

  @JsonValue('Pacific/Norfolk')
  pacificNorfolk,

  @JsonValue('US/Mountain')
  usMountain,

  /// Only use this when the parameters/function actually could accept timezone `exchange`
  @JsonValue('exchange')
  exchange,
}

enum SeriesFormat {
  @JsonValue('price')
  price,

  @JsonValue('volume')
  volume,
}

enum DataStatus {
  @JsonValue('streaming')
  streaming,

  @JsonValue('endofday')
  endOfDay,

  @JsonValue('pulsed')
  pulsed,

  @JsonValue('delayed_streaming')
  delayedStreaming,
}

@immutable
@JsonSerializable(includeIfNull: false)
class PeriodParams {
  final int from;

  final int to;

  final int countBack;

  final bool firstDataRequest;

  const PeriodParams({
    required this.from,
    required this.to,
    required this.countBack,
    required this.firstDataRequest,
  });

  factory PeriodParams.fromJson(Map<String, dynamic> json) =>
      _$PeriodParamsFromJson(json);

  Map<String, dynamic> toJson() => _$PeriodParamsToJson(this);
}

@immutable
@JsonSerializable(includeIfNull: false)
class Bar {
  final int time;

  final double open;

  final double high;

  final double low;

  final double close;

  final int? volume;

  const Bar({
    required this.time,
    required this.open,
    required this.high,
    required this.low,
    required this.close,
    this.volume,
  });

  factory Bar.fromJson(Map<String, dynamic> json) => _$BarFromJson(json);

  Map<String, dynamic> toJson() => _$BarToJson(this);
}

@immutable
@JsonSerializable(includeIfNull: false)
class Exchange {
  final String value;

  final String name;

  final String desc;

  const Exchange({
    required this.value,
    required this.name,
    required this.desc,
  });

  factory Exchange.fromJson(Map<String, dynamic> json) =>
      _$ExchangeFromJson(json);

  Map<String, dynamic> toJson() => _$ExchangeToJson(this);
}

@immutable
@JsonSerializable(includeIfNull: false)
class DatafeedConfiguration {
  final List<Exchange>? exchanges;

  @JsonKey(name: 'supported_resolutions')
  final List<String>? supportedResolutions;

  @JsonKey(name: 'currency_codes')
  final List<String>? currencyCodes;

  @JsonKey(name: 'supports_marks')
  final bool? supportsMarks;

  @JsonKey(name: 'supports_time')
  final bool? supportsTime;

  @JsonKey(name: 'supports_timescale_marks')
  final bool? supportsTimescaleMarks;

  @JsonKey(name: 'symbols_types')
  final List<DatafeedSymbolType>? symbolsTypes;

  const DatafeedConfiguration({
    this.exchanges,
    this.supportedResolutions,
    this.currencyCodes,
    this.supportsMarks,
    this.supportsTime,
    this.supportsTimescaleMarks,
    this.symbolsTypes,
  });

  factory DatafeedConfiguration.fromJson(Map<String, dynamic> json) =>
      _$DatafeedConfigurationFromJson(json);

  Map<String, dynamic> toJson() => _$DatafeedConfigurationToJson(this);
}

@immutable
@JsonSerializable(includeIfNull: false)
class DatafeedSymbolType {
  final String name;

  final String value;

  const DatafeedSymbolType({
    required this.name,
    required this.value,
  });

  factory DatafeedSymbolType.fromJson(Map<String, dynamic> json) =>
      _$DatafeedSymbolTypeFromJson(json);

  Map<String, dynamic> toJson() => _$DatafeedSymbolTypeToJson(this);
}

@immutable
@JsonSerializable(includeIfNull: false)
class SearchSymbolResultItem {
  final String symbol;

  @JsonKey(name: 'full_name')
  final String fullName;

  final String description;

  final String exchange;

  final String ticker;

  final String type;

  const SearchSymbolResultItem({
    required this.symbol,
    required this.fullName,
    required this.description,
    required this.exchange,
    required this.ticker,
    required this.type,
  });

  factory SearchSymbolResultItem.fromJson(Map<String, dynamic> json) =>
      _$SearchSymbolResultItemFromJson(json);

  Map<String, dynamic> toJson() => _$SearchSymbolResultItemToJson(this);
}

