//
//  MarketDataModel.swift
//  CryptoTracker
//
//  Created by Shankar Balasubramaniam on 17/03/25.
//

import Foundation

// JSON
/*
 URL: https://api.coingecko.com/api/v3/global
 
 Response JSON:
 {
   "data": {
     "active_cryptocurrencies": 17164,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 1284,
     "total_market_cap": {
       "btc": 33859078.984898314,
       "eth": 1486467487.4101171,
       "ltc": 30357189035.002506,
       "bch": 8424520409.730339,
       "bnb": 4420057058.550527,
       "eos": 5801747649195.873,
       "xrp": 1207031483482.1365,
       "xlm": 10327039870050.973,
       "link": 205155857621.49866,
       "dot": 640841493351.9004,
       "yfi": 567761141.60335,
       "usd": 2830792311397.4883,
       "aed": 10396608460184.885,
       "ars": 3018062431273357,
       "aud": 4462820510310.548,
       "bdt": 344316359970016.4,
       "bhd": 1066648204519.1965,
       "bmd": 2830792311397.4883,
       "brl": 16384908977599.8,
       "cad": 4065201760667.033,
       "chf": 2500359586472.6826,
       "clp": 2641214150303199,
       "cny": 20487576274508.184,
       "czk": 65017068818922.91,
       "dkk": 19388954270831.754,
       "eur": 2598738111670.6797,
       "gbp": 2185425449452.7776,
       "gel": 7851199644868.622,
       "hkd": 21998483362793.48,
       "huf": 1037842180851692.4,
       "idr": 46383500524052136,
       "ils": 10345741953141.38,
       "inr": 245615817992636.62,
       "jpy": 420991186362567.2,
       "krw": 4102488116247445,
       "kwd": 871801938933.3958,
       "lkr": 839934254856746.1,
       "mmk": 5939002269311928,
       "mxn": 56419694967108.41,
       "myr": 12591364201096.027,
       "ngn": 4354692736392098,
       "nok": 29982240519227.914,
       "nzd": 4901338547269.133,
       "php": 162170421442962.38,
       "pkr": 793798961404183.4,
       "pln": 10861891638447.734,
       "rub": 238696591608072.47,
       "sar": 10617226258973.646,
       "sek": 28657936429317.63,
       "sgd": 3775034225579.5435,
       "thb": 95155668151470.86,
       "try": 103797321256620.27,
       "twd": 93368022806823.33,
       "uah": 117551209767030.17,
       "vef": 283447234140.2305,
       "vnd": 72278634665492460,
       "zar": 51410687234275.25,
       "xdr": 2121531636192.2249,
       "xag": 83788565009.20801,
       "xau": 945314784.4680772,
       "bits": 33859078984898.312,
       "sats": 3385907898489831.5
     },
     "total_volume": {
       "btc": 1034275.9576771412,
       "eth": 45406361.60784956,
       "ltc": 927305517.5413101,
       "bch": 257339513.53581497,
       "bnb": 135017220.91315424,
       "eos": 177223016277.24518,
       "xrp": 36870573002.9383,
       "xlm": 315454801837.0756,
       "link": 6266790990.067682,
       "dot": 19575457133.71024,
       "yfi": 17343109.029208444,
       "usd": 86470764020.53287,
       "aed": 317579877956.75073,
       "ars": 92191208533076.02,
       "aud": 136323494188.99861,
       "bdt": 10517655637081.277,
       "bhd": 32582356824.464825,
       "bmd": 86470764020.53287,
       "brl": 500501429227.2462,
       "cad": 124177637733.14648,
       "chf": 76377204677.9441,
       "clp": 80679816954077.78,
       "cny": 625823507522.2045,
       "czk": 1986043127400.03,
       "dkk": 592264463418.1278,
       "eur": 79382323139.94969,
       "gbp": 66757072768.36775,
       "gel": 239826577540.18384,
       "hkd": 671976413110.5238,
       "huf": 31702433961563.96,
       "idr": 1416853052805396,
       "ils": 316026084798.06573,
       "inr": 7502700693314.549,
       "jpy": 12859802318987.61,
       "krw": 125316604955008.05,
       "kwd": 26630487666.167522,
       "lkr": 25657041829615.67,
       "mmk": 181415662915077.84,
       "mxn": 1723423548230.1462,
       "myr": 384621958363.33014,
       "ngn": 133020570415706.31,
       "nok": 915852157117.4972,
       "nzd": 149718680243.41934,
       "php": 4953736869795.994,
       "pkr": 24247770631198.03,
       "pln": 331792645084.98566,
       "rub": 7291342626000.554,
       "sar": 324318976950.6909,
       "sek": 875399317822.6475,
       "sgd": 115314038537.98575,
       "thb": 2906671497168.201,
       "try": 3170643652028.895,
       "twd": 2852065209689.2344,
       "uah": 3590776645523.3003,
       "vef": 8658317601.375956,
       "vnd": 2207858463060699.8,
       "zar": 1570415952477.2053,
       "xdr": 64805341153.66031,
       "xag": 2559446414.828471,
       "xau": 28876046.93701674,
       "bits": 1034275957677.1412,
       "sats": 103427595767714.12
     },
     "market_cap_percentage": {
       "btc": 58.58960312785831,
       "eth": 8.11473122692934,
       "usdt": 5.065437078614042,
       "xrp": 4.816619899999684,
       "bnb": 3.301277238540386,
       "sol": 2.3214689423899952,
       "usdc": 2.073288638302554,
       "ada": 0.9204453914866615,
       "doge": 0.9130925138294688,
       "trx": 0.7197755142447867
     },
     "market_cap_change_percentage_24h_usd": -2.4093849321207177,
     "updated_at": 1742204626
   }
 }
 */
struct GlobalData: Codable {
    let data: MarketDataModel?
}

struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item = totalMarketCap.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc" }) {
            return item.value.asPercentString()
        }
        
        return ""
    }
}
