//
//  DMPlayers.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class DMPlayers: NSObject {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMPlayersItem2Key: String = "item_2"
	internal let kDMPlayersMultiKillsKey: String = "multi_kills"
	internal let kDMPlayersObsKey: String = "obs"
	internal let kDMPlayersAdditionalUnitsKey: String = "additional_units"
	internal let kDMPlayersIsRadiantKey: String = "isRadiant"
	internal let kDMPlayersCreepsStackedKey: String = "creeps_stacked"
	internal let kDMPlayersDnTKey: String = "dn_t"
	internal let kDMPlayersItem3Key: String = "item_3"
	internal let kDMPlayersHeroIdKey: String = "hero_id"
	internal let kDMPlayersKillStreaksKey: String = "kill_streaks"
	internal let kDMPlayersTotalXpKey: String = "total_xp"
	internal let kDMPlayersLaneRoleKey: String = "lane_role"
	internal let kDMPlayersItemWinKey: String = "item_win"
	internal let kDMPlayersObsLogKey: String = "obs_log"
	internal let kDMPlayersHeroHitsKey: String = "hero_hits"
	internal let kDMPlayersPersonanameKey: String = "personaname"
	internal let kDMPlayersGoldKey: String = "gold"
	internal let kDMPlayersAssistsKey: String = "assists"
	internal let kDMPlayersLifeStateDeadKey: String = "life_state_dead"
	internal let kDMPlayersAncientKillsKey: String = "ancient_kills"
	internal let kDMPlayersGoldReasonsKey: String = "gold_reasons"
	internal let kDMPlayersRunePickupsKey: String = "rune_pickups"
	internal let kDMPlayersKillsLogKey: String = "kills_log"
	internal let kDMPlayersGameModeKey: String = "game_mode"
	internal let kDMPlayersKdaKey: String = "kda"
	internal let kDMPlayersTowerKillsKey: String = "tower_kills"
	internal let kDMPlayersXpReasonsKey: String = "xp_reasons"
	internal let kDMPlayersBuybackLogKey: String = "buyback_log"
	internal let kDMPlayersSentryKillsKey: String = "sentry_kills"
	internal let kDMPlayersDamageTakenKey: String = "damage_taken"
	internal let kDMPlayersSentryUsesKey: String = "sentry_uses"
	internal let kDMPlayersKilledByKey: String = "killed_by"
	internal let kDMPlayersLeaverStatusKey: String = "leaver_status"
	internal let kDMPlayersLoseKey: String = "lose"
	internal let kDMPlayersDeathsKey: String = "deaths"
	internal let kDMPlayersMatchIdKey: String = "match_id"
	internal let kDMPlayersLaneKillsKey: String = "lane_kills"
	internal let kDMPlayersNecronomiconKillsKey: String = "necronomicon_kills"
	internal let kDMPlayersItem0Key: String = "item_0"
	internal let kDMPlayersPurchaseTimeKey: String = "purchase_time"
	internal let kDMPlayersSenLogKey: String = "sen_log"
	internal let kDMPlayersLaneEfficiencyKey: String = "lane_efficiency"
	internal let kDMPlayersSenLeftLogKey: String = "sen_left_log"
	internal let kDMPlayersSpecificKey: String = "specific"
	internal let kDMPlayersRadiantWinKey: String = "radiant_win"
	internal let kDMPlayersHeroKillsKey: String = "hero_kills"
	internal let kDMPlayersItem5Key: String = "item_5"
	internal let kDMPlayersDeniesKey: String = "denies"
	internal let kDMPlayersHeroHealingKey: String = "hero_healing"
	internal let kDMPlayersDurationKey: String = "duration"
	internal let kDMPlayersLaneEfficiencyPctKey: String = "lane_efficiency_pct"
	internal let kDMPlayersLanePosKey: String = "lane_pos"
	internal let kDMPlayersTowerDamageKey: String = "tower_damage"
	internal let kDMPlayersItemUsageKey: String = "item_usage"
	internal let kDMPlayersGoldTKey: String = "gold_t"
	internal let kDMPlayersItem1Key: String = "item_1"
	internal let kDMPlayersPurchaseGemKey: String = "purchase_gem"
	internal let kDMPlayersXpTKey: String = "xp_t"
	internal let kDMPlayersTotalGoldKey: String = "total_gold"
	internal let kDMPlayersObserverKillsKey: String = "observer_kills"
	internal let kDMPlayersRunesKey: String = "runes"
	internal let kDMPlayersActionsKey: String = "actions"
	internal let kDMPlayersLastLoginKey: String = "last_login"
	internal let kDMPlayersWinKey: String = "win"
	internal let kDMPlayersTimesKey: String = "times"
	internal let kDMPlayersNameKey: String = "name"
	internal let kDMPlayersAbilityUsesKey: String = "ability_uses"
	internal let kDMPlayersStunsKey: String = "stuns"
	internal let kDMPlayersPatchKey: String = "patch"
	internal let kDMPlayersLaneKey: String = "lane"
	internal let kDMPlayersPurchaseKey: String = "purchase"
	internal let kDMPlayersXpPerMinKey: String = "xp_per_min"
	internal let kDMPlayersPurchaseWardSentryKey: String = "purchase_ward_sentry"
	internal let kDMPlayersNeutralKillsKey: String = "neutral_kills"
	internal let kDMPlayersPurchaseTpscrollKey: String = "purchase_tpscroll"
	internal let kDMPlayersItemUsesKey: String = "item_uses"
	internal let kDMPlayersLevelKey: String = "level"
	internal let kDMPlayersStartTimeKey: String = "start_time"
	internal let kDMPlayersRoshanKillsKey: String = "roshan_kills"
	internal let kDMPlayersCampsStackedKey: String = "camps_stacked"
	internal let kDMPlayersPosDataKey: String = "posData"
	internal let kDMPlayersPurchaseLogKey: String = "purchase_log"
	internal let kDMPlayersFirstPurchaseTimeKey: String = "first_purchase_time"
	internal let kDMPlayersKilledKey: String = "killed"
	internal let kDMPlayersDamageKey: String = "damage"
	internal let kDMPlayersLhTKey: String = "lh_t"
	internal let kDMPlayersSoloCompetitiveRankKey: String = "solo_competitive_rank"
	internal let kDMPlayersCourierKillsKey: String = "courier_kills"
	internal let kDMPlayersDamageInflictorKey: String = "damage_inflictor"
	internal let kDMPlayersItem4Key: String = "item_4"
	internal let kDMPlayersBenchmarksKey: String = "benchmarks"
	internal let kDMPlayersHeroDamageKey: String = "hero_damage"
	internal let kDMPlayersPingsKey: String = "pings"
	internal let kDMPlayersKillsPerMinKey: String = "kills_per_min"
	internal let kDMPlayersDamageInflictorReceivedKey: String = "damage_inflictor_received"
	internal let kDMPlayersPurchaseWardObserverKey: String = "purchase_ward_observer"
	internal let kDMPlayersSenPlacedKey: String = "sen_placed"
	internal let kDMPlayersObserverUsesKey: String = "observer_uses"
	internal let kDMPlayersKillsKey: String = "kills"
	internal let kDMPlayersBuybackCountKey: String = "buyback_count"
	internal let kDMPlayersAccountIdKey: String = "account_id"
	internal let kDMPlayersClusterKey: String = "cluster"
	internal let kDMPlayersAbilityUpgradesArrKey: String = "ability_upgrades_arr"
	internal let kDMPlayersLastHitsKey: String = "last_hits"
	internal let kDMPlayersSenKey: String = "sen"
	internal let kDMPlayersActionsPerMinKey: String = "actions_per_min"
	internal let kDMPlayersPlayerSlotKey: String = "player_slot"
	internal let kDMPlayersAbandonsKey: String = "abandons"
	internal let kDMPlayersObsPlacedKey: String = "obs_placed"
	internal let kDMPlayersLifeStateKey: String = "life_state"
	internal let kDMPlayersMaxHeroHitKey: String = "max_hero_hit"
	internal let kDMPlayersLobbyTypeKey: String = "lobby_type"
	internal let kDMPlayersRegionKey: String = "region"
	internal let kDMPlayersGoldPerMinKey: String = "gold_per_min"
	internal let kDMPlayersGoldSpentKey: String = "gold_spent"
	internal let kDMPlayersObsLeftLogKey: String = "obs_left_log"


    // MARK: Properties
	public var item2: Int?
	public var obs: DMObs?
	public var additionalUnits: [DMAdditionalUnits]?
	public var isRadiant: Bool = false
	public var creepsStacked: Int?
	public var dnT: [DMDnT]?
	public var item3: Int?
	public var heroId: Int?
	public var totalXp: Int?
	public var laneRole: Int?
	public var itemWin: DMItemWin?
	public var obsLog: [DMObsLog]?
	public var heroHits: DMHeroHits?
	public var personaname: String?
	public var gold: Int?
	public var assists: Int?
	public var lifeStateDead: Int?
	public var ancientKills: Int?
	public var runePickups: Int?
	public var killsLog: [DMKillsLog]?
	public var gameMode: Int?
	public var kda: Int?
	public var towerKills: Int?
	public var buybackLog: [DMBuybackLog]?
	public var sentryKills: Int?
	public var damageTaken: DMDamageTaken?
	public var sentryUses: Int?
	public var killedBy: DMKilledBy?
	public var leaverStatus: Int?
	public var lose: Int?
	public var deaths: Int?
	public var matchId: Int?
	public var laneKills: Int?
	public var necronomiconKills: Int?
	public var item0: Int?
	public var purchaseTime: DMPurchaseTime?
	public var senLog: [DMSenLog]?
	public var laneEfficiency: Float?
	public var senLeftLog: [DMSenLeftLog]?
	public var specific: DMSpecific?
	public var radiantWin: Bool = false
	public var heroKills: Int?
	public var item5: Int?
	public var denies: Int?
	public var heroHealing: Int?
	public var duration: Int?
	public var laneEfficiencyPct: Int?
	public var lanePos: DMLanePos?
	public var towerDamage: Int?
	public var itemUsage: DMItemUsage?
	public var goldT: [DMGoldT]?
	public var item1: Int?
	public var purchaseGem: Int?
	public var xpT: [DMXpT]?
	public var totalGold: Int?
	public var observerKills: Int?
	public var lastLogin: String?
	public var win: Int?
	public var times: [DMTimes]?
	public var abilityUses: DMAbilityUses?
	public var stuns: Float?
	public var patch: Int?
	public var lane: Int?
	public var purchase: DMPurchase?
	public var xpPerMin: Int?
	public var purchaseWardSentry: Int?
	public var neutralKills: Int?
	public var purchaseTpscroll: Int?
	public var itemUses: DMItemUses?
	public var level: Int?
	public var startTime: Int?
	public var roshanKills: Int?
	public var campsStacked: Int?
	public var posData: DMPosData?
	public var purchaseLog: [DMPurchaseLog]?
	public var firstPurchaseTime: DMFirstPurchaseTime?
	public var killed: DMKilled?
	public var damage: DMDamage?
	public var lhT: [DMLhT]?
	public var soloCompetitiveRank: String?
	public var courierKills: Int?
	public var damageInflictor: DMDamageInflictor?
	public var item4: Int?
	public var benchmarks: DMBenchmarks?
	public var heroDamage: Int?
	public var pings: Int?
	public var killsPerMin: Float?
	public var damageInflictorReceived: DMDamageInflictorReceived?
	public var purchaseWardObserver: Int?
	public var senPlaced: Int?
	public var observerUses: Int?
	public var kills: Int?
	public var buybackCount: Int?
	public var accountId: Int?
	public var cluster: Int?
	public var abilityUpgradesArr: [DMAbilityUpgradesArr]?
	public var lastHits: Int?
	public var actionsPerMin: Int?
	public var playerSlot: Int?
	public var abandons: Int?
	public var obsPlaced: Int?
	public var maxHeroHit: DMMaxHeroHit?
	public var lobbyType: Int?
	public var region: Int?
	public var goldPerMin: Int?
	public var goldSpent: Int?
	public var obsLeftLog: [DMObsLeftLog]?


    // MARK: SwiftyJSON Initalizers
    /**
    Initates the class based on the object
    - parameter object: The object of either Dictionary or Array kind that was passed.
    - returns: An initalized instance of the class.
    */
    convenience public init(object: AnyObject) {
        self.init(json: JSON(object))
    }

    /**
    Initates the class based on the JSON that was passed.
    - parameter json: JSON object from SwiftyJSON.
    - returns: An initalized instance of the class.
    */
    public init(json: JSON) {
		item2 = json[kDMPlayersItem2Key].int
		obs = DMObs(json: json[kDMPlayersObsKey])
		additionalUnits = []
		if let items = json[kDMPlayersAdditionalUnitsKey].array {
			for item in items {
				additionalUnits?.append(DMAdditionalUnits(json: item))
			}
		} else {
			additionalUnits = nil
		}
		isRadiant = json[kDMPlayersIsRadiantKey].boolValue
		creepsStacked = json[kDMPlayersCreepsStackedKey].int
		dnT = []
		if let items = json[kDMPlayersDnTKey].array {
			for item in items {
				dnT?.append(DMDnT(json: item))
			}
		} else {
			dnT = nil
		}
		item3 = json[kDMPlayersItem3Key].int
		heroId = json[kDMPlayersHeroIdKey].int
		totalXp = json[kDMPlayersTotalXpKey].int
		laneRole = json[kDMPlayersLaneRoleKey].int
		itemWin = DMItemWin(json: json[kDMPlayersItemWinKey])
		obsLog = []
		if let items = json[kDMPlayersObsLogKey].array {
			for item in items {
				obsLog?.append(DMObsLog(json: item))
			}
		} else {
			obsLog = nil
		}
		heroHits = DMHeroHits(json: json[kDMPlayersHeroHitsKey])
		personaname = json[kDMPlayersPersonanameKey].string
		gold = json[kDMPlayersGoldKey].int
		assists = json[kDMPlayersAssistsKey].int
		lifeStateDead = json[kDMPlayersLifeStateDeadKey].int
		ancientKills = json[kDMPlayersAncientKillsKey].int
		runePickups = json[kDMPlayersRunePickupsKey].int
		killsLog = []
		if let items = json[kDMPlayersKillsLogKey].array {
			for item in items {
				killsLog?.append(DMKillsLog(json: item))
			}
		} else {
			killsLog = nil
		}
		gameMode = json[kDMPlayersGameModeKey].int
		kda = json[kDMPlayersKdaKey].int
		towerKills = json[kDMPlayersTowerKillsKey].int
		buybackLog = []
		if let items = json[kDMPlayersBuybackLogKey].array {
			for item in items {
				buybackLog?.append(DMBuybackLog(json: item))
			}
		} else {
			buybackLog = nil
		}
		sentryKills = json[kDMPlayersSentryKillsKey].int
		damageTaken = DMDamageTaken(json: json[kDMPlayersDamageTakenKey])
		sentryUses = json[kDMPlayersSentryUsesKey].int
		killedBy = DMKilledBy(json: json[kDMPlayersKilledByKey])
		leaverStatus = json[kDMPlayersLeaverStatusKey].int
		lose = json[kDMPlayersLoseKey].int
		deaths = json[kDMPlayersDeathsKey].int
		matchId = json[kDMPlayersMatchIdKey].int
		laneKills = json[kDMPlayersLaneKillsKey].int
		necronomiconKills = json[kDMPlayersNecronomiconKillsKey].int
		item0 = json[kDMPlayersItem0Key].int
		purchaseTime = DMPurchaseTime(json: json[kDMPlayersPurchaseTimeKey])
		senLog = []
		if let items = json[kDMPlayersSenLogKey].array {
			for item in items {
				senLog?.append(DMSenLog(json: item))
			}
		} else {
			senLog = nil
		}
		laneEfficiency = json[kDMPlayersLaneEfficiencyKey].float
		senLeftLog = []
		if let items = json[kDMPlayersSenLeftLogKey].array {
			for item in items {
				senLeftLog?.append(DMSenLeftLog(json: item))
			}
		} else {
			senLeftLog = nil
		}
		specific = DMSpecific(json: json[kDMPlayersSpecificKey])
		radiantWin = json[kDMPlayersRadiantWinKey].boolValue
		heroKills = json[kDMPlayersHeroKillsKey].int
		item5 = json[kDMPlayersItem5Key].int
		denies = json[kDMPlayersDeniesKey].int
		heroHealing = json[kDMPlayersHeroHealingKey].int
		duration = json[kDMPlayersDurationKey].int
		laneEfficiencyPct = json[kDMPlayersLaneEfficiencyPctKey].int
		lanePos = DMLanePos(json: json[kDMPlayersLanePosKey])
		towerDamage = json[kDMPlayersTowerDamageKey].int
		itemUsage = DMItemUsage(json: json[kDMPlayersItemUsageKey])
		goldT = []
		if let items = json[kDMPlayersGoldTKey].array {
			for item in items {
				goldT?.append(DMGoldT(json: item))
			}
		} else {
			goldT = nil
		}
		item1 = json[kDMPlayersItem1Key].int
		purchaseGem = json[kDMPlayersPurchaseGemKey].int
		xpT = []
		if let items = json[kDMPlayersXpTKey].array {
			for item in items {
				xpT?.append(DMXpT(json: item))
			}
		} else {
			xpT = nil
		}
		totalGold = json[kDMPlayersTotalGoldKey].int
		observerKills = json[kDMPlayersObserverKillsKey].int
		lastLogin = json[kDMPlayersLastLoginKey].string
		win = json[kDMPlayersWinKey].int
		times = []
		if let items = json[kDMPlayersTimesKey].array {
			for item in items {
				times?.append(DMTimes(json: item))
			}
		} else {
			times = nil
		}
		abilityUses = DMAbilityUses(json: json[kDMPlayersAbilityUsesKey])
		stuns = json[kDMPlayersStunsKey].float
		patch = json[kDMPlayersPatchKey].int
		lane = json[kDMPlayersLaneKey].int
		purchase = DMPurchase(json: json[kDMPlayersPurchaseKey])
		xpPerMin = json[kDMPlayersXpPerMinKey].int
		purchaseWardSentry = json[kDMPlayersPurchaseWardSentryKey].int
		neutralKills = json[kDMPlayersNeutralKillsKey].int
		purchaseTpscroll = json[kDMPlayersPurchaseTpscrollKey].int
		itemUses = DMItemUses(json: json[kDMPlayersItemUsesKey])
		level = json[kDMPlayersLevelKey].int
		startTime = json[kDMPlayersStartTimeKey].int
		roshanKills = json[kDMPlayersRoshanKillsKey].int
		campsStacked = json[kDMPlayersCampsStackedKey].int
		posData = DMPosData(json: json[kDMPlayersPosDataKey])
		purchaseLog = []
		if let items = json[kDMPlayersPurchaseLogKey].array {
			for item in items {
				purchaseLog?.append(DMPurchaseLog(json: item))
			}
		} else {
			purchaseLog = nil
		}
		firstPurchaseTime = DMFirstPurchaseTime(json: json[kDMPlayersFirstPurchaseTimeKey])
		killed = DMKilled(json: json[kDMPlayersKilledKey])
		damage = DMDamage(json: json[kDMPlayersDamageKey])
		lhT = []
		if let items = json[kDMPlayersLhTKey].array {
			for item in items {
				lhT?.append(DMLhT(json: item))
			}
		} else {
			lhT = nil
		}
		soloCompetitiveRank = json[kDMPlayersSoloCompetitiveRankKey].string
		courierKills = json[kDMPlayersCourierKillsKey].int
		damageInflictor = DMDamageInflictor(json: json[kDMPlayersDamageInflictorKey])
		item4 = json[kDMPlayersItem4Key].int
		benchmarks = DMBenchmarks(json: json[kDMPlayersBenchmarksKey])
		heroDamage = json[kDMPlayersHeroDamageKey].int
		pings = json[kDMPlayersPingsKey].int
		killsPerMin = json[kDMPlayersKillsPerMinKey].float
		damageInflictorReceived = DMDamageInflictorReceived(json: json[kDMPlayersDamageInflictorReceivedKey])
		purchaseWardObserver = json[kDMPlayersPurchaseWardObserverKey].int
		senPlaced = json[kDMPlayersSenPlacedKey].int
		observerUses = json[kDMPlayersObserverUsesKey].int
		kills = json[kDMPlayersKillsKey].int
		buybackCount = json[kDMPlayersBuybackCountKey].int
		accountId = json[kDMPlayersAccountIdKey].int
		cluster = json[kDMPlayersClusterKey].int
		abilityUpgradesArr = []
		if let items = json[kDMPlayersAbilityUpgradesArrKey].array {
			for item in items {
				abilityUpgradesArr?.append(DMAbilityUpgradesArr(json: item))
			}
		} else {
			abilityUpgradesArr = nil
		}
		lastHits = json[kDMPlayersLastHitsKey].int
		actionsPerMin = json[kDMPlayersActionsPerMinKey].int
		playerSlot = json[kDMPlayersPlayerSlotKey].int
		abandons = json[kDMPlayersAbandonsKey].int
		obsPlaced = json[kDMPlayersObsPlacedKey].int
		maxHeroHit = DMMaxHeroHit(json: json[kDMPlayersMaxHeroHitKey])
		lobbyType = json[kDMPlayersLobbyTypeKey].int
		region = json[kDMPlayersRegionKey].int
		goldPerMin = json[kDMPlayersGoldPerMinKey].int
		goldSpent = json[kDMPlayersGoldSpentKey].int
		obsLeftLog = []
		if let items = json[kDMPlayersObsLeftLogKey].array {
			for item in items {
				obsLeftLog?.append(DMObsLeftLog(json: item))
			}
		} else {
			obsLeftLog = nil
		}

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if item2 != nil {
			dictionary.updateValue(item2!, forKey: kDMPlayersItem2Key)
		}
		if obs != nil {
			dictionary.updateValue(obs!.dictionaryRepresentation(), forKey: kDMPlayersObsKey)
		}
		if additionalUnits?.count > 0 {
			var temp: [AnyObject] = []
			for item in additionalUnits! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kDMPlayersAdditionalUnitsKey)
		}
		dictionary.updateValue(isRadiant, forKey: kDMPlayersIsRadiantKey)
		if creepsStacked != nil {
			dictionary.updateValue(creepsStacked!, forKey: kDMPlayersCreepsStackedKey)
		}
		if dnT?.count > 0 {
			var temp: [AnyObject] = []
			for item in dnT! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kDMPlayersDnTKey)
		}
		if item3 != nil {
			dictionary.updateValue(item3!, forKey: kDMPlayersItem3Key)
		}
		if heroId != nil {
			dictionary.updateValue(heroId!, forKey: kDMPlayersHeroIdKey)
		}
		if totalXp != nil {
			dictionary.updateValue(totalXp!, forKey: kDMPlayersTotalXpKey)
		}
		if laneRole != nil {
			dictionary.updateValue(laneRole!, forKey: kDMPlayersLaneRoleKey)
		}
		if itemWin != nil {
			dictionary.updateValue(itemWin!.dictionaryRepresentation(), forKey: kDMPlayersItemWinKey)
		}
		if obsLog?.count > 0 {
			var temp: [AnyObject] = []
			for item in obsLog! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kDMPlayersObsLogKey)
		}
		if heroHits != nil {
			dictionary.updateValue(heroHits!.dictionaryRepresentation(), forKey: kDMPlayersHeroHitsKey)
		}
		if personaname != nil {
			dictionary.updateValue(personaname!, forKey: kDMPlayersPersonanameKey)
		}
		if gold != nil {
			dictionary.updateValue(gold!, forKey: kDMPlayersGoldKey)
		}
		if assists != nil {
			dictionary.updateValue(assists!, forKey: kDMPlayersAssistsKey)
		}
		if lifeStateDead != nil {
			dictionary.updateValue(lifeStateDead!, forKey: kDMPlayersLifeStateDeadKey)
		}
		if ancientKills != nil {
			dictionary.updateValue(ancientKills!, forKey: kDMPlayersAncientKillsKey)
		}
		if runePickups != nil {
			dictionary.updateValue(runePickups!, forKey: kDMPlayersRunePickupsKey)
		}
		if killsLog?.count > 0 {
			var temp: [AnyObject] = []
			for item in killsLog! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kDMPlayersKillsLogKey)
		}
		if gameMode != nil {
			dictionary.updateValue(gameMode!, forKey: kDMPlayersGameModeKey)
		}
		if kda != nil {
			dictionary.updateValue(kda!, forKey: kDMPlayersKdaKey)
		}
		if towerKills != nil {
			dictionary.updateValue(towerKills!, forKey: kDMPlayersTowerKillsKey)
        }
		if buybackLog?.count > 0 {
			var temp: [AnyObject] = []
			for item in buybackLog! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kDMPlayersBuybackLogKey)
		}
		if sentryKills != nil {
			dictionary.updateValue(sentryKills!, forKey: kDMPlayersSentryKillsKey)
		}
		if damageTaken != nil {
			dictionary.updateValue(damageTaken!.dictionaryRepresentation(), forKey: kDMPlayersDamageTakenKey)
		}
		if sentryUses != nil {
			dictionary.updateValue(sentryUses!, forKey: kDMPlayersSentryUsesKey)
		}
		if killedBy != nil {
			dictionary.updateValue(killedBy!.dictionaryRepresentation(), forKey: kDMPlayersKilledByKey)
		}
		if leaverStatus != nil {
			dictionary.updateValue(leaverStatus!, forKey: kDMPlayersLeaverStatusKey)
		}
		if lose != nil {
			dictionary.updateValue(lose!, forKey: kDMPlayersLoseKey)
		}
		if deaths != nil {
			dictionary.updateValue(deaths!, forKey: kDMPlayersDeathsKey)
		}
		if matchId != nil {
			dictionary.updateValue(matchId!, forKey: kDMPlayersMatchIdKey)
		}
		if laneKills != nil {
			dictionary.updateValue(laneKills!, forKey: kDMPlayersLaneKillsKey)
		}
		if necronomiconKills != nil {
			dictionary.updateValue(necronomiconKills!, forKey: kDMPlayersNecronomiconKillsKey)
		}
		if item0 != nil {
			dictionary.updateValue(item0!, forKey: kDMPlayersItem0Key)
		}
		if purchaseTime != nil {
			dictionary.updateValue(purchaseTime!.dictionaryRepresentation(), forKey: kDMPlayersPurchaseTimeKey)
		}
		if senLog?.count > 0 {
			var temp: [AnyObject] = []
			for item in senLog! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kDMPlayersSenLogKey)
		}
		if laneEfficiency != nil {
			dictionary.updateValue(laneEfficiency!, forKey: kDMPlayersLaneEfficiencyKey)
		}
		if senLeftLog?.count > 0 {
			var temp: [AnyObject] = []
			for item in senLeftLog! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kDMPlayersSenLeftLogKey)
		}
		if specific != nil {
			dictionary.updateValue(specific!.dictionaryRepresentation(), forKey: kDMPlayersSpecificKey)
		}
		dictionary.updateValue(radiantWin, forKey: kDMPlayersRadiantWinKey)
		if heroKills != nil {
			dictionary.updateValue(heroKills!, forKey: kDMPlayersHeroKillsKey)
		}
		if item5 != nil {
			dictionary.updateValue(item5!, forKey: kDMPlayersItem5Key)
		}
		if denies != nil {
			dictionary.updateValue(denies!, forKey: kDMPlayersDeniesKey)
		}
		if heroHealing != nil {
			dictionary.updateValue(heroHealing!, forKey: kDMPlayersHeroHealingKey)
		}
		if duration != nil {
			dictionary.updateValue(duration!, forKey: kDMPlayersDurationKey)
		}
		if laneEfficiencyPct != nil {
			dictionary.updateValue(laneEfficiencyPct!, forKey: kDMPlayersLaneEfficiencyPctKey)
		}
		if lanePos != nil {
			dictionary.updateValue(lanePos!.dictionaryRepresentation(), forKey: kDMPlayersLanePosKey)
		}
		if towerDamage != nil {
			dictionary.updateValue(towerDamage!, forKey: kDMPlayersTowerDamageKey)
		}
		if itemUsage != nil {
			dictionary.updateValue(itemUsage!.dictionaryRepresentation(), forKey: kDMPlayersItemUsageKey)
		}
		if goldT?.count > 0 {
			var temp: [AnyObject] = []
			for item in goldT! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kDMPlayersGoldTKey)
		}
		if item1 != nil {
			dictionary.updateValue(item1!, forKey: kDMPlayersItem1Key)
		}
		if purchaseGem != nil {
			dictionary.updateValue(purchaseGem!, forKey: kDMPlayersPurchaseGemKey)
		}
		if xpT?.count > 0 {
			var temp: [AnyObject] = []
			for item in xpT! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kDMPlayersXpTKey)
		}
		if totalGold != nil {
			dictionary.updateValue(totalGold!, forKey: kDMPlayersTotalGoldKey)
		}
		if observerKills != nil {
			dictionary.updateValue(observerKills!, forKey: kDMPlayersObserverKillsKey)
		}
		if lastLogin != nil {
			dictionary.updateValue(lastLogin!, forKey: kDMPlayersLastLoginKey)
		}
		if win != nil {
			dictionary.updateValue(win!, forKey: kDMPlayersWinKey)
		}
		if times?.count > 0 {
			var temp: [AnyObject] = []
			for item in times! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kDMPlayersTimesKey)
		}
		if abilityUses != nil {
			dictionary.updateValue(abilityUses!.dictionaryRepresentation(), forKey: kDMPlayersAbilityUsesKey)
		}
		if stuns != nil {
			dictionary.updateValue(stuns!, forKey: kDMPlayersStunsKey)
		}
		if patch != nil {
			dictionary.updateValue(patch!, forKey: kDMPlayersPatchKey)
		}
		if lane != nil {
			dictionary.updateValue(lane!, forKey: kDMPlayersLaneKey)
		}
		if purchase != nil {
			dictionary.updateValue(purchase!.dictionaryRepresentation(), forKey: kDMPlayersPurchaseKey)
		}
		if xpPerMin != nil {
			dictionary.updateValue(xpPerMin!, forKey: kDMPlayersXpPerMinKey)
		}
		if purchaseWardSentry != nil {
			dictionary.updateValue(purchaseWardSentry!, forKey: kDMPlayersPurchaseWardSentryKey)
		}
		if neutralKills != nil {
			dictionary.updateValue(neutralKills!, forKey: kDMPlayersNeutralKillsKey)
		}
		if purchaseTpscroll != nil {
			dictionary.updateValue(purchaseTpscroll!, forKey: kDMPlayersPurchaseTpscrollKey)
		}
		if itemUses != nil {
			dictionary.updateValue(itemUses!.dictionaryRepresentation(), forKey: kDMPlayersItemUsesKey)
		}
		if level != nil {
			dictionary.updateValue(level!, forKey: kDMPlayersLevelKey)
		}
		if startTime != nil {
			dictionary.updateValue(startTime!, forKey: kDMPlayersStartTimeKey)
		}
		if roshanKills != nil {
			dictionary.updateValue(roshanKills!, forKey: kDMPlayersRoshanKillsKey)
		}
		if campsStacked != nil {
			dictionary.updateValue(campsStacked!, forKey: kDMPlayersCampsStackedKey)
		}
		if posData != nil {
			dictionary.updateValue(posData!.dictionaryRepresentation(), forKey: kDMPlayersPosDataKey)
		}
		if purchaseLog?.count > 0 {
			var temp: [AnyObject] = []
			for item in purchaseLog! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kDMPlayersPurchaseLogKey)
		}
		if firstPurchaseTime != nil {
			dictionary.updateValue(firstPurchaseTime!.dictionaryRepresentation(), forKey: kDMPlayersFirstPurchaseTimeKey)
		}
		if killed != nil {
			dictionary.updateValue(killed!.dictionaryRepresentation(), forKey: kDMPlayersKilledKey)
		}
		if damage != nil {
			dictionary.updateValue(damage!.dictionaryRepresentation(), forKey: kDMPlayersDamageKey)
		}
		if lhT?.count > 0 {
			var temp: [AnyObject] = []
			for item in lhT! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kDMPlayersLhTKey)
		}
		if soloCompetitiveRank != nil {
			dictionary.updateValue(soloCompetitiveRank!, forKey: kDMPlayersSoloCompetitiveRankKey)
		}
		if courierKills != nil {
			dictionary.updateValue(courierKills!, forKey: kDMPlayersCourierKillsKey)
		}
		if damageInflictor != nil {
			dictionary.updateValue(damageInflictor!.dictionaryRepresentation(), forKey: kDMPlayersDamageInflictorKey)
		}
		if item4 != nil {
			dictionary.updateValue(item4!, forKey: kDMPlayersItem4Key)
		}
		if benchmarks != nil {
			dictionary.updateValue(benchmarks!.dictionaryRepresentation(), forKey: kDMPlayersBenchmarksKey)
		}
		if heroDamage != nil {
			dictionary.updateValue(heroDamage!, forKey: kDMPlayersHeroDamageKey)
		}
		if pings != nil {
			dictionary.updateValue(pings!, forKey: kDMPlayersPingsKey)
		}
		if killsPerMin != nil {
			dictionary.updateValue(killsPerMin!, forKey: kDMPlayersKillsPerMinKey)
		}
		if damageInflictorReceived != nil {
			dictionary.updateValue(damageInflictorReceived!.dictionaryRepresentation(), forKey: kDMPlayersDamageInflictorReceivedKey)
		}
		if purchaseWardObserver != nil {
			dictionary.updateValue(purchaseWardObserver!, forKey: kDMPlayersPurchaseWardObserverKey)
		}
		if senPlaced != nil {
			dictionary.updateValue(senPlaced!, forKey: kDMPlayersSenPlacedKey)
		}
		if observerUses != nil {
			dictionary.updateValue(observerUses!, forKey: kDMPlayersObserverUsesKey)
		}
		if kills != nil {
			dictionary.updateValue(kills!, forKey: kDMPlayersKillsKey)
		}
		if buybackCount != nil {
			dictionary.updateValue(buybackCount!, forKey: kDMPlayersBuybackCountKey)
		}
		if accountId != nil {
			dictionary.updateValue(accountId!, forKey: kDMPlayersAccountIdKey)
		}
		if cluster != nil {
			dictionary.updateValue(cluster!, forKey: kDMPlayersClusterKey)
		}
		if abilityUpgradesArr?.count > 0 {
			var temp: [AnyObject] = []
			for item in abilityUpgradesArr! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kDMPlayersAbilityUpgradesArrKey)
		}
		if lastHits != nil {
			dictionary.updateValue(lastHits!, forKey: kDMPlayersLastHitsKey)
		}
		if actionsPerMin != nil {
			dictionary.updateValue(actionsPerMin!, forKey: kDMPlayersActionsPerMinKey)
		}
		if playerSlot != nil {
			dictionary.updateValue(playerSlot!, forKey: kDMPlayersPlayerSlotKey)
		}
		if abandons != nil {
			dictionary.updateValue(abandons!, forKey: kDMPlayersAbandonsKey)
		}
		if obsPlaced != nil {
			dictionary.updateValue(obsPlaced!, forKey: kDMPlayersObsPlacedKey)
		}
		if maxHeroHit != nil {
			dictionary.updateValue(maxHeroHit!.dictionaryRepresentation(), forKey: kDMPlayersMaxHeroHitKey)
		}
		if lobbyType != nil {
			dictionary.updateValue(lobbyType!, forKey: kDMPlayersLobbyTypeKey)
		}
		if region != nil {
			dictionary.updateValue(region!, forKey: kDMPlayersRegionKey)
		}
		if goldPerMin != nil {
			dictionary.updateValue(goldPerMin!, forKey: kDMPlayersGoldPerMinKey)
		}
		if goldSpent != nil {
			dictionary.updateValue(goldSpent!, forKey: kDMPlayersGoldSpentKey)
		}
		if obsLeftLog?.count > 0 {
			var temp: [AnyObject] = []
			for item in obsLeftLog! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kDMPlayersObsLeftLogKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.item2 = aDecoder.decodeObjectForKey(kDMPlayersItem2Key) as? Int
		self.obs = aDecoder.decodeObjectForKey(kDMPlayersObsKey) as? DMObs
		self.additionalUnits = aDecoder.decodeObjectForKey(kDMPlayersAdditionalUnitsKey) as? [DMAdditionalUnits]
		self.isRadiant = aDecoder.decodeBoolForKey(kDMPlayersIsRadiantKey)
		self.creepsStacked = aDecoder.decodeObjectForKey(kDMPlayersCreepsStackedKey) as? Int
		self.dnT = aDecoder.decodeObjectForKey(kDMPlayersDnTKey) as? [DMDnT]
		self.item3 = aDecoder.decodeObjectForKey(kDMPlayersItem3Key) as? Int
		self.heroId = aDecoder.decodeObjectForKey(kDMPlayersHeroIdKey) as? Int
		self.totalXp = aDecoder.decodeObjectForKey(kDMPlayersTotalXpKey) as? Int
		self.laneRole = aDecoder.decodeObjectForKey(kDMPlayersLaneRoleKey) as? Int
		self.itemWin = aDecoder.decodeObjectForKey(kDMPlayersItemWinKey) as? DMItemWin
		self.obsLog = aDecoder.decodeObjectForKey(kDMPlayersObsLogKey) as? [DMObsLog]
		self.heroHits = aDecoder.decodeObjectForKey(kDMPlayersHeroHitsKey) as? DMHeroHits
		self.personaname = aDecoder.decodeObjectForKey(kDMPlayersPersonanameKey) as? String
		self.gold = aDecoder.decodeObjectForKey(kDMPlayersGoldKey) as? Int
		self.assists = aDecoder.decodeObjectForKey(kDMPlayersAssistsKey) as? Int
		self.lifeStateDead = aDecoder.decodeObjectForKey(kDMPlayersLifeStateDeadKey) as? Int
		self.ancientKills = aDecoder.decodeObjectForKey(kDMPlayersAncientKillsKey) as? Int
		self.runePickups = aDecoder.decodeObjectForKey(kDMPlayersRunePickupsKey) as? Int
		self.killsLog = aDecoder.decodeObjectForKey(kDMPlayersKillsLogKey) as? [DMKillsLog]
		self.gameMode = aDecoder.decodeObjectForKey(kDMPlayersGameModeKey) as? Int
		self.kda = aDecoder.decodeObjectForKey(kDMPlayersKdaKey) as? Int
		self.towerKills = aDecoder.decodeObjectForKey(kDMPlayersTowerKillsKey) as? Int
		self.buybackLog = aDecoder.decodeObjectForKey(kDMPlayersBuybackLogKey) as? [DMBuybackLog]
		self.sentryKills = aDecoder.decodeObjectForKey(kDMPlayersSentryKillsKey) as? Int
		self.damageTaken = aDecoder.decodeObjectForKey(kDMPlayersDamageTakenKey) as? DMDamageTaken
		self.sentryUses = aDecoder.decodeObjectForKey(kDMPlayersSentryUsesKey) as? Int
		self.killedBy = aDecoder.decodeObjectForKey(kDMPlayersKilledByKey) as? DMKilledBy
		self.leaverStatus = aDecoder.decodeObjectForKey(kDMPlayersLeaverStatusKey) as? Int
		self.lose = aDecoder.decodeObjectForKey(kDMPlayersLoseKey) as? Int
		self.deaths = aDecoder.decodeObjectForKey(kDMPlayersDeathsKey) as? Int
		self.matchId = aDecoder.decodeObjectForKey(kDMPlayersMatchIdKey) as? Int
		self.laneKills = aDecoder.decodeObjectForKey(kDMPlayersLaneKillsKey) as? Int
		self.necronomiconKills = aDecoder.decodeObjectForKey(kDMPlayersNecronomiconKillsKey) as? Int
		self.item0 = aDecoder.decodeObjectForKey(kDMPlayersItem0Key) as? Int
		self.purchaseTime = aDecoder.decodeObjectForKey(kDMPlayersPurchaseTimeKey) as? DMPurchaseTime
		self.senLog = aDecoder.decodeObjectForKey(kDMPlayersSenLogKey) as? [DMSenLog]
		self.laneEfficiency = aDecoder.decodeObjectForKey(kDMPlayersLaneEfficiencyKey) as? Float
		self.senLeftLog = aDecoder.decodeObjectForKey(kDMPlayersSenLeftLogKey) as? [DMSenLeftLog]
		self.specific = aDecoder.decodeObjectForKey(kDMPlayersSpecificKey) as? DMSpecific
		self.radiantWin = aDecoder.decodeBoolForKey(kDMPlayersRadiantWinKey)
		self.heroKills = aDecoder.decodeObjectForKey(kDMPlayersHeroKillsKey) as? Int
		self.item5 = aDecoder.decodeObjectForKey(kDMPlayersItem5Key) as? Int
		self.denies = aDecoder.decodeObjectForKey(kDMPlayersDeniesKey) as? Int
		self.heroHealing = aDecoder.decodeObjectForKey(kDMPlayersHeroHealingKey) as? Int
		self.duration = aDecoder.decodeObjectForKey(kDMPlayersDurationKey) as? Int
		self.laneEfficiencyPct = aDecoder.decodeObjectForKey(kDMPlayersLaneEfficiencyPctKey) as? Int
		self.lanePos = aDecoder.decodeObjectForKey(kDMPlayersLanePosKey) as? DMLanePos
		self.towerDamage = aDecoder.decodeObjectForKey(kDMPlayersTowerDamageKey) as? Int
		self.itemUsage = aDecoder.decodeObjectForKey(kDMPlayersItemUsageKey) as? DMItemUsage
		self.goldT = aDecoder.decodeObjectForKey(kDMPlayersGoldTKey) as? [DMGoldT]
		self.item1 = aDecoder.decodeObjectForKey(kDMPlayersItem1Key) as? Int
		self.purchaseGem = aDecoder.decodeObjectForKey(kDMPlayersPurchaseGemKey) as? Int
		self.xpT = aDecoder.decodeObjectForKey(kDMPlayersXpTKey) as? [DMXpT]
		self.totalGold = aDecoder.decodeObjectForKey(kDMPlayersTotalGoldKey) as? Int
		self.observerKills = aDecoder.decodeObjectForKey(kDMPlayersObserverKillsKey) as? Int
		self.lastLogin = aDecoder.decodeObjectForKey(kDMPlayersLastLoginKey) as? String
		self.win = aDecoder.decodeObjectForKey(kDMPlayersWinKey) as? Int
		self.times = aDecoder.decodeObjectForKey(kDMPlayersTimesKey) as? [DMTimes]
        self.abilityUses = aDecoder.decodeObjectForKey(kDMPlayersAbilityUsesKey) as? DMAbilityUses
		self.stuns = aDecoder.decodeObjectForKey(kDMPlayersStunsKey) as? Float
		self.patch = aDecoder.decodeObjectForKey(kDMPlayersPatchKey) as? Int
		self.lane = aDecoder.decodeObjectForKey(kDMPlayersLaneKey) as? Int
		self.purchase = aDecoder.decodeObjectForKey(kDMPlayersPurchaseKey) as? DMPurchase
		self.xpPerMin = aDecoder.decodeObjectForKey(kDMPlayersXpPerMinKey) as? Int
		self.purchaseWardSentry = aDecoder.decodeObjectForKey(kDMPlayersPurchaseWardSentryKey) as? Int
		self.neutralKills = aDecoder.decodeObjectForKey(kDMPlayersNeutralKillsKey) as? Int
		self.purchaseTpscroll = aDecoder.decodeObjectForKey(kDMPlayersPurchaseTpscrollKey) as? Int
		self.itemUses = aDecoder.decodeObjectForKey(kDMPlayersItemUsesKey) as? DMItemUses
		self.level = aDecoder.decodeObjectForKey(kDMPlayersLevelKey) as? Int
		self.startTime = aDecoder.decodeObjectForKey(kDMPlayersStartTimeKey) as? Int
		self.roshanKills = aDecoder.decodeObjectForKey(kDMPlayersRoshanKillsKey) as? Int
		self.campsStacked = aDecoder.decodeObjectForKey(kDMPlayersCampsStackedKey) as? Int
		self.posData = aDecoder.decodeObjectForKey(kDMPlayersPosDataKey) as? DMPosData
		self.purchaseLog = aDecoder.decodeObjectForKey(kDMPlayersPurchaseLogKey) as? [DMPurchaseLog]
		self.firstPurchaseTime = aDecoder.decodeObjectForKey(kDMPlayersFirstPurchaseTimeKey) as? DMFirstPurchaseTime
		self.killed = aDecoder.decodeObjectForKey(kDMPlayersKilledKey) as? DMKilled
		self.damage = aDecoder.decodeObjectForKey(kDMPlayersDamageKey) as? DMDamage
		self.lhT = aDecoder.decodeObjectForKey(kDMPlayersLhTKey) as? [DMLhT]
		self.soloCompetitiveRank = aDecoder.decodeObjectForKey(kDMPlayersSoloCompetitiveRankKey) as? String
		self.courierKills = aDecoder.decodeObjectForKey(kDMPlayersCourierKillsKey) as? Int
		self.damageInflictor = aDecoder.decodeObjectForKey(kDMPlayersDamageInflictorKey) as? DMDamageInflictor
		self.item4 = aDecoder.decodeObjectForKey(kDMPlayersItem4Key) as? Int
		self.benchmarks = aDecoder.decodeObjectForKey(kDMPlayersBenchmarksKey) as? DMBenchmarks
		self.heroDamage = aDecoder.decodeObjectForKey(kDMPlayersHeroDamageKey) as? Int
		self.pings = aDecoder.decodeObjectForKey(kDMPlayersPingsKey) as? Int
		self.killsPerMin = aDecoder.decodeObjectForKey(kDMPlayersKillsPerMinKey) as? Float
		self.damageInflictorReceived = aDecoder.decodeObjectForKey(kDMPlayersDamageInflictorReceivedKey) as? DMDamageInflictorReceived
		self.purchaseWardObserver = aDecoder.decodeObjectForKey(kDMPlayersPurchaseWardObserverKey) as? Int
		self.senPlaced = aDecoder.decodeObjectForKey(kDMPlayersSenPlacedKey) as? Int
		self.observerUses = aDecoder.decodeObjectForKey(kDMPlayersObserverUsesKey) as? Int
		self.kills = aDecoder.decodeObjectForKey(kDMPlayersKillsKey) as? Int
		self.buybackCount = aDecoder.decodeObjectForKey(kDMPlayersBuybackCountKey) as? Int
		self.accountId = aDecoder.decodeObjectForKey(kDMPlayersAccountIdKey) as? Int
		self.cluster = aDecoder.decodeObjectForKey(kDMPlayersClusterKey) as? Int
		self.abilityUpgradesArr = aDecoder.decodeObjectForKey(kDMPlayersAbilityUpgradesArrKey) as? [DMAbilityUpgradesArr]
		self.lastHits = aDecoder.decodeObjectForKey(kDMPlayersLastHitsKey) as? Int
		self.actionsPerMin = aDecoder.decodeObjectForKey(kDMPlayersActionsPerMinKey) as? Int
		self.playerSlot = aDecoder.decodeObjectForKey(kDMPlayersPlayerSlotKey) as? Int
		self.abandons = aDecoder.decodeObjectForKey(kDMPlayersAbandonsKey) as? Int
		self.obsPlaced = aDecoder.decodeObjectForKey(kDMPlayersObsPlacedKey) as? Int
		self.maxHeroHit = aDecoder.decodeObjectForKey(kDMPlayersMaxHeroHitKey) as? DMMaxHeroHit
		self.lobbyType = aDecoder.decodeObjectForKey(kDMPlayersLobbyTypeKey) as? Int
		self.region = aDecoder.decodeObjectForKey(kDMPlayersRegionKey) as? Int
		self.goldPerMin = aDecoder.decodeObjectForKey(kDMPlayersGoldPerMinKey) as? Int
		self.goldSpent = aDecoder.decodeObjectForKey(kDMPlayersGoldSpentKey) as? Int
		self.obsLeftLog = aDecoder.decodeObjectForKey(kDMPlayersObsLeftLogKey) as? [DMObsLeftLog]

    }

}
