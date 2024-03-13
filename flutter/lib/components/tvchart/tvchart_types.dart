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
