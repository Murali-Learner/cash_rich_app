import 'dart:convert';

class CoinRichApiModel {
  Status status;
  Map<String, Coin> data;

  CoinRichApiModel({
    required this.status,
    required this.data,
  });

  factory CoinRichApiModel.fromRawJson(String str) =>
      CoinRichApiModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CoinRichApiModel.fromJson(Map<String, dynamic> json) =>
      CoinRichApiModel(
        status: Status.fromJson(json["status"]),
        data: Map.from(json["data"])
            .map((k, v) => MapEntry<String, Coin>(k, Coin.fromJson(v))),
      );

  Map<String, dynamic> toJson() => {
        "status": status.toJson(),
        "data": Map.from(data)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
      };
}

class Coin {
  int id;
  String name;
  String symbol;
  String slug;
  int numMarketPairs;
  DateTime dateAdded;
  List<String> tags;
  int? maxSupply;
  double circulatingSupply;
  double totalSupply;
  int isActive;
  bool infiniteSupply;
  dynamic platform;
  int cmcRank;
  int isFiat;
  dynamic selfReportedCirculatingSupply;
  dynamic selfReportedMarketCap;
  dynamic tvlRatio;
  DateTime lastUpdated;
  Quote quote;

  Coin({
    required this.id,
    required this.name,
    required this.symbol,
    required this.slug,
    required this.numMarketPairs,
    required this.dateAdded,
    required this.tags,
    this.maxSupply,
    required this.circulatingSupply,
    required this.totalSupply,
    required this.isActive,
    required this.infiniteSupply,
    this.platform,
    required this.cmcRank,
    required this.isFiat,
    this.selfReportedCirculatingSupply,
    this.selfReportedMarketCap,
    this.tvlRatio,
    required this.lastUpdated,
    required this.quote,
  });

  factory Coin.fromRawJson(String str) => Coin.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Coin.fromJson(Map<String, dynamic> json) => Coin(
        id: json["id"],
        name: json["name"],
        symbol: json["symbol"],
        slug: json["slug"],
        numMarketPairs: json["num_market_pairs"],
        dateAdded: DateTime.parse(json["date_added"]),
        tags: List<String>.from(json["tags"].map((x) => x)),
        maxSupply: json["max_supply"],
        circulatingSupply: json["circulating_supply"]?.toDouble(),
        totalSupply: json["total_supply"]?.toDouble(),
        isActive: json["is_active"],
        infiniteSupply: json["infinite_supply"],
        platform: json["platform"],
        cmcRank: json["cmc_rank"],
        isFiat: json["is_fiat"],
        selfReportedCirculatingSupply: json["self_reported_circulating_supply"],
        selfReportedMarketCap: json["self_reported_market_cap"],
        tvlRatio: json["tvl_ratio"],
        lastUpdated: DateTime.parse(json["last_updated"]),
        quote: Quote.fromJson(json["quote"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "symbol": symbol,
        "slug": slug,
        "num_market_pairs": numMarketPairs,
        "date_added": dateAdded.toIso8601String(),
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "max_supply": maxSupply,
        "circulating_supply": circulatingSupply,
        "total_supply": totalSupply,
        "is_active": isActive,
        "infinite_supply": infiniteSupply,
        "platform": platform,
        "cmc_rank": cmcRank,
        "is_fiat": isFiat,
        "self_reported_circulating_supply": selfReportedCirculatingSupply,
        "self_reported_market_cap": selfReportedMarketCap,
        "tvl_ratio": tvlRatio,
        "last_updated": lastUpdated.toIso8601String(),
        "quote": quote.toJson(),
      };
}

class Quote {
  Usd usd;

  Quote({
    required this.usd,
  });

  factory Quote.fromRawJson(String str) => Quote.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Quote.fromJson(Map<String, dynamic> json) => Quote(
        usd: Usd.fromJson(json["USD"]),
      );

  Map<String, dynamic> toJson() => {
        "USD": usd.toJson(),
      };
}

class Usd {
  double price;
  double volume24H;
  double volumeChange24H;
  double percentChange1H;
  double percentChange24H;
  double percentChange7D;
  double percentChange30D;
  double percentChange60D;
  double percentChange90D;
  double marketCap;
  double marketCapDominance;
  double fullyDilutedMarketCap;
  dynamic tvl;
  DateTime lastUpdated;

  Usd({
    required this.price,
    required this.volume24H,
    required this.volumeChange24H,
    required this.percentChange1H,
    required this.percentChange24H,
    required this.percentChange7D,
    required this.percentChange30D,
    required this.percentChange60D,
    required this.percentChange90D,
    required this.marketCap,
    required this.marketCapDominance,
    required this.fullyDilutedMarketCap,
    this.tvl,
    required this.lastUpdated,
  });

  factory Usd.fromRawJson(String str) => Usd.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Usd.fromJson(Map<String, dynamic> json) => Usd(
        price: json["price"]?.toDouble(),
        volume24H: json["volume_24h"]?.toDouble(),
        volumeChange24H: json["volume_change_24h"]?.toDouble(),
        percentChange1H: json["percent_change_1h"]?.toDouble(),
        percentChange24H: json["percent_change_24h"]?.toDouble(),
        percentChange7D: json["percent_change_7d"]?.toDouble(),
        percentChange30D: json["percent_change_30d"]?.toDouble(),
        percentChange60D: json["percent_change_60d"]?.toDouble(),
        percentChange90D: json["percent_change_90d"]?.toDouble(),
        marketCap: json["market_cap"]?.toDouble(),
        marketCapDominance: json["market_cap_dominance"]?.toDouble(),
        fullyDilutedMarketCap: json["fully_diluted_market_cap"]?.toDouble(),
        tvl: json["tvl"],
        lastUpdated: DateTime.parse(json["last_updated"]),
      );

  Map<String, dynamic> toJson() => {
        "price": price,
        "volume_24h": volume24H,
        "volume_change_24h": volumeChange24H,
        "percent_change_1h": percentChange1H,
        "percent_change_24h": percentChange24H,
        "percent_change_7d": percentChange7D,
        "percent_change_30d": percentChange30D,
        "percent_change_60d": percentChange60D,
        "percent_change_90d": percentChange90D,
        "market_cap": marketCap,
        "market_cap_dominance": marketCapDominance,
        "fully_diluted_market_cap": fullyDilutedMarketCap,
        "tvl": tvl,
        "last_updated": lastUpdated.toIso8601String(),
      };
}

class Status {
  DateTime timestamp;
  int errorCode;
  dynamic errorMessage;
  int elapsed;
  int creditCount;
  dynamic notice;

  Status({
    required this.timestamp,
    required this.errorCode,
    this.errorMessage,
    required this.elapsed,
    required this.creditCount,
    this.notice,
  });

  factory Status.fromRawJson(String str) => Status.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Status.fromJson(Map<String, dynamic> json) => Status(
        timestamp: DateTime.parse(json["timestamp"]),
        errorCode: json["error_code"],
        errorMessage: json["error_message"],
        elapsed: json["elapsed"],
        creditCount: json["credit_count"],
        notice: json["notice"],
      );

  Map<String, dynamic> toJson() => {
        "timestamp": timestamp.toIso8601String(),
        "error_code": errorCode,
        "error_message": errorMessage,
        "elapsed": elapsed,
        "credit_count": creditCount,
        "notice": notice,
      };
}
