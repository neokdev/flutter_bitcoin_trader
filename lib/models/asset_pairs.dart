class AssetPairs {
//  String altname;
  String wsname;
//  String aclassBase;
//  String base;
//  String aclassQuote;
//  String quote;
//  String lot;
//  int pairDecimals;
//  int lotDecimals;
//  int lotMultiplier;
//  List<Null> leverageBuy;
//  List<Null> leverageSell;
//  List<Null> fees;
//  List<Null> feesMaker;
//  String feeVolumeCurrency;
//  int marginCall;
//  int marginStop;

  AssetPairs({
//        this.altname,
    this.wsname,
//        this.aclassBase,
//        this.base,
//        this.aclassQuote,
//        this.quote,
//        this.lot,
//        this.pairDecimals,
//        this.lotDecimals,
//        this.lotMultiplier,
//        this.leverageBuy,
//        this.leverageSell,
//        this.fees,
//        this.feesMaker,
//        this.feeVolumeCurrency,
//        this.marginCall,
//        this.marginStop
  });

  AssetPairs.fromJson(Map<String, dynamic> json) {
//    altname = json['altname'];
    wsname = json['wsname'];
//    aclassBase = json['aclass_base'];
//    base = json['base'];
//    aclassQuote = json['aclass_quote'];
//    quote = json['quote'];
//    lot = json['lot'];
//    pairDecimals = json['pair_decimals'];
//    lotDecimals = json['lot_decimals'];
//    lotMultiplier = json['lot_multiplier'];
//    if (json['leverage_buy'] != null) {
//      leverageBuy = new List<Null>();
//      json['leverage_buy'].forEach((v) {
//        leverageBuy.add(new Null.fromJson(v));
//      });
//    }
//    if (json['leverage_sell'] != null) {
//      leverageSell = new List<Null>();
//      json['leverage_sell'].forEach((v) {
//        leverageSell.add(new Null.fromJson(v));
//      });
//    }
//    if (json['fees'] != null) {
//      fees = new List<Null>();
//      json['fees'].forEach((v) {
//        fees.add(new Null.fromJson(v));
//      });
//    }
//    if (json['fees_maker'] != null) {
//      feesMaker = new List<Null>();
//      json['fees_maker'].forEach((v) {
//        feesMaker.add(new Null.fromJson(v));
//      });
//    }
//    feeVolumeCurrency = json['fee_volume_currency'];
//    marginCall = json['margin_call'];
//    marginStop = json['margin_stop'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
//    data['altname'] = this.altname;
    data['wsname'] = this.wsname;
//    data['aclass_base'] = this.aclassBase;
//    data['base'] = this.base;
//    data['aclass_quote'] = this.aclassQuote;
//    data['quote'] = this.quote;
//    data['lot'] = this.lot;
//    data['pair_decimals'] = this.pairDecimals;
//    data['lot_decimals'] = this.lotDecimals;
//    data['lot_multiplier'] = this.lotMultiplier;
//    if (this.leverageBuy != null) {
//      data['leverage_buy'] = this.leverageBuy.map((v) => v.toJson()).toList();
//    }
//    if (this.leverageSell != null) {
//      data['leverage_sell'] = this.leverageSell.map((v) => v.toJson()).toList();
//    }
//    if (this.fees != null) {
//      data['fees'] = this.fees.map((v) => v.toJson()).toList();
//    }
//    if (this.feesMaker != null) {
//      data['fees_maker'] = this.feesMaker.map((v) => v.toJson()).toList();
//    }
//    data['fee_volume_currency'] = this.feeVolumeCurrency;
//    data['margin_call'] = this.marginCall;
//    data['margin_stop'] = this.marginStop;
    return data;
  }
}
