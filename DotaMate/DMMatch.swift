//
//  DMMatch.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class DMMatch: NSObject {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMMatchAllWordCountsKey: String = "all_word_counts"
	internal let kDMMatchPicksBansKey: String = "picks_bans"
	internal let kDMMatchPositiveVotesKey: String = "positive_votes"
	internal let kDMMatchTowerStatusRadiantKey: String = "tower_status_radiant"
	internal let kDMMatchSeriesIdKey: String = "series_id"
	internal let kDMMatchTeamfightsKey: String = "teamfights"
	internal let kDMMatchReplayUrlKey: String = "replay_url"
	internal let kDMMatchVersionKey: String = "version"
	internal let kDMMatchMatchIdKey: String = "match_id"
	internal let kDMMatchPartiesKey: String = "parties"
	internal let kDMMatchPatchKey: String = "patch"
	internal let kDMMatchChatKey: String = "chat"
	internal let kDMMatchBarracksStatusRadiantKey: String = "barracks_status_radiant"
	internal let kDMMatchClusterKey: String = "cluster"
	internal let kDMMatchHumanPlayersKey: String = "human_players"
	internal let kDMMatchRadiantWinKey: String = "radiant_win"
	internal let kDMMatchObjectivesKey: String = "objectives"
	internal let kDMMatchCosmeticsKey: String = "cosmetics"
	internal let kDMMatchFirstBloodTimeKey: String = "first_blood_time"
	internal let kDMMatchStartTimeKey: String = "start_time"
	internal let kDMMatchReplaySaltKey: String = "replay_salt"
	internal let kDMMatchLobbyTypeKey: String = "lobby_type"
	internal let kDMMatchDurationKey: String = "duration"
	internal let kDMMatchComebackKey: String = "comeback"
	internal let kDMMatchRegionKey: String = "region"
	internal let kDMMatchMatchSeqNumKey: String = "match_seq_num"
	internal let kDMMatchNegativeVotesKey: String = "negative_votes"
	internal let kDMMatchPlayersKey: String = "players"
	internal let kDMMatchSkillKey: String = "skill"
	internal let kDMMatchMyWordCountsKey: String = "my_word_counts"
	internal let kDMMatchBarracksStatusDireKey: String = "barracks_status_dire"
	internal let kDMMatchRadiantGoldAdvKey: String = "radiant_gold_adv"
	internal let kDMMatchSeriesTypeKey: String = "series_type"
	internal let kDMMatchLeagueidKey: String = "leagueid"
	internal let kDMMatchGameModeKey: String = "game_mode"
	internal let kDMMatchStompKey: String = "stomp"
	internal let kDMMatchTowerStatusDireKey: String = "tower_status_dire"
	internal let kDMMatchRadiantXpAdvKey: String = "radiant_xp_adv"
	internal let kDMMatchEngineKey: String = "engine"


    // MARK: Properties
	public var allWordCounts: DMAllWordCounts?
	public var positiveVotes: Int?
	public var towerStatusRadiant: Int?
	public var seriesId: Int?
	public var teamfights: [DMTeamfights]?
	public var replayUrl: String?
	public var version: Int?
	public var matchId: Int?
	public var patch: Int?
	public var chat: [DMChat]?
	public var barracksStatusRadiant: Int?
	public var cluster: Int?
	public var humanPlayers: Int?
	public var radiantWin: Bool = false
	public var objectives: [DMObjectives]?
	public var firstBloodTime: Int?
	public var startTime: Int?
	public var replaySalt: Int?
	public var lobbyType: Int?
	public var duration: Int?
	public var comeback: Int?
	public var region: Int?
	public var matchSeqNum: Int?
	public var negativeVotes: Int?
	public var players: [DMPlayers]?
	public var skill: Int?
	public var myWordCounts: DMMyWordCounts?
	public var barracksStatusDire: Int?
	public var radiantGoldAdv: [Int]?
	public var seriesType: Int?
	public var leagueid: Int?
	public var gameMode: Int?
	public var stomp: Int?
	public var towerStatusDire: Int?
	public var radiantXpAdv: [Int]?
	public var engine: Int?


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
		allWordCounts = DMAllWordCounts(json: json[kDMMatchAllWordCountsKey])
		positiveVotes = json[kDMMatchPositiveVotesKey].int
		towerStatusRadiant = json[kDMMatchTowerStatusRadiantKey].int
		seriesId = json[kDMMatchSeriesIdKey].int
		teamfights = []
		if let items = json[kDMMatchTeamfightsKey].array {
			for item in items {
				teamfights?.append(DMTeamfights(json: item))
			}
		} else {
			teamfights = nil
		}
		replayUrl = json[kDMMatchReplayUrlKey].string
		version = json[kDMMatchVersionKey].int
		matchId = json[kDMMatchMatchIdKey].int
		patch = json[kDMMatchPatchKey].int
		chat = []
		if let items = json[kDMMatchChatKey].array {
			for item in items {
				chat?.append(DMChat(json: item))
			}
		} else {
			chat = nil
		}
		barracksStatusRadiant = json[kDMMatchBarracksStatusRadiantKey].int
		cluster = json[kDMMatchClusterKey].int
		humanPlayers = json[kDMMatchHumanPlayersKey].int
		radiantWin = json[kDMMatchRadiantWinKey].boolValue
		objectives = []
		if let items = json[kDMMatchObjectivesKey].array {
			for item in items {
				objectives?.append(DMObjectives(json: item))
			}
		} else {
			objectives = nil
		}
		firstBloodTime = json[kDMMatchFirstBloodTimeKey].int
		startTime = json[kDMMatchStartTimeKey].int
		replaySalt = json[kDMMatchReplaySaltKey].int
		lobbyType = json[kDMMatchLobbyTypeKey].int
		duration = json[kDMMatchDurationKey].int
		comeback = json[kDMMatchComebackKey].int
		region = json[kDMMatchRegionKey].int
		matchSeqNum = json[kDMMatchMatchSeqNumKey].int
		negativeVotes = json[kDMMatchNegativeVotesKey].int
		players = []
		if let items = json[kDMMatchPlayersKey].array {
			for item in items {
				players?.append(DMPlayers(json: item))
			}
		} else {
			players = nil
		}
		skill = json[kDMMatchSkillKey].int
		myWordCounts = DMMyWordCounts(json: json[kDMMatchMyWordCountsKey])
		barracksStatusDire = json[kDMMatchBarracksStatusDireKey].int
		radiantGoldAdv = []
		if let items = json[kDMMatchRadiantGoldAdvKey].array {
			for item in items {
				if let tempValue = item.int {
				radiantGoldAdv?.append(tempValue)
				}
			}
		} else {
			radiantGoldAdv = nil
		}
		seriesType = json[kDMMatchSeriesTypeKey].int
		leagueid = json[kDMMatchLeagueidKey].int
		gameMode = json[kDMMatchGameModeKey].int
		stomp = json[kDMMatchStompKey].int
		towerStatusDire = json[kDMMatchTowerStatusDireKey].int
		radiantXpAdv = []
		if let items = json[kDMMatchRadiantXpAdvKey].array {
			for item in items {
				if let tempValue = item.int {
				radiantXpAdv?.append(tempValue)
				}
			}
		} else {
			radiantXpAdv = nil
		}
		engine = json[kDMMatchEngineKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if allWordCounts != nil {
			dictionary.updateValue(allWordCounts!.dictionaryRepresentation(), forKey: kDMMatchAllWordCountsKey)
		}
		if positiveVotes != nil {
			dictionary.updateValue(positiveVotes!, forKey: kDMMatchPositiveVotesKey)
		}
		if towerStatusRadiant != nil {
			dictionary.updateValue(towerStatusRadiant!, forKey: kDMMatchTowerStatusRadiantKey)
		}
		if seriesId != nil {
			dictionary.updateValue(seriesId!, forKey: kDMMatchSeriesIdKey)
		}
		if teamfights?.count > 0 {
			var temp: [AnyObject] = []
			for item in teamfights! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kDMMatchTeamfightsKey)
		}
		if replayUrl != nil {
			dictionary.updateValue(replayUrl!, forKey: kDMMatchReplayUrlKey)
		}
		if version != nil {
			dictionary.updateValue(version!, forKey: kDMMatchVersionKey)
		}
		if matchId != nil {
			dictionary.updateValue(matchId!, forKey: kDMMatchMatchIdKey)
		}
		if patch != nil {
			dictionary.updateValue(patch!, forKey: kDMMatchPatchKey)
		}
		if chat?.count > 0 {
			var temp: [AnyObject] = []
			for item in chat! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kDMMatchChatKey)
		}
		if barracksStatusRadiant != nil {
			dictionary.updateValue(barracksStatusRadiant!, forKey: kDMMatchBarracksStatusRadiantKey)
		}
		if cluster != nil {
			dictionary.updateValue(cluster!, forKey: kDMMatchClusterKey)
		}
		if humanPlayers != nil {
			dictionary.updateValue(humanPlayers!, forKey: kDMMatchHumanPlayersKey)
		}
		dictionary.updateValue(radiantWin, forKey: kDMMatchRadiantWinKey)
		if objectives?.count > 0 {
			var temp: [AnyObject] = []
			for item in objectives! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kDMMatchObjectivesKey)
		}
		if firstBloodTime != nil {
			dictionary.updateValue(firstBloodTime!, forKey: kDMMatchFirstBloodTimeKey)
		}
		if startTime != nil {
			dictionary.updateValue(startTime!, forKey: kDMMatchStartTimeKey)
		}
		if replaySalt != nil {
			dictionary.updateValue(replaySalt!, forKey: kDMMatchReplaySaltKey)
		}
		if lobbyType != nil {
			dictionary.updateValue(lobbyType!, forKey: kDMMatchLobbyTypeKey)
		}
		if duration != nil {
			dictionary.updateValue(duration!, forKey: kDMMatchDurationKey)
		}
		if comeback != nil {
			dictionary.updateValue(comeback!, forKey: kDMMatchComebackKey)
		}
		if region != nil {
			dictionary.updateValue(region!, forKey: kDMMatchRegionKey)
		}
		if matchSeqNum != nil {
			dictionary.updateValue(matchSeqNum!, forKey: kDMMatchMatchSeqNumKey)
		}
		if negativeVotes != nil {
			dictionary.updateValue(negativeVotes!, forKey: kDMMatchNegativeVotesKey)
		}
		if players?.count > 0 {
			var temp: [AnyObject] = []
			for item in players! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kDMMatchPlayersKey)
		}
		if skill != nil {
			dictionary.updateValue(skill!, forKey: kDMMatchSkillKey)
		}
		if myWordCounts != nil {
			dictionary.updateValue(myWordCounts!.dictionaryRepresentation(), forKey: kDMMatchMyWordCountsKey)
		}
		if barracksStatusDire != nil {
			dictionary.updateValue(barracksStatusDire!, forKey: kDMMatchBarracksStatusDireKey)
		}
		if radiantGoldAdv?.count > 0 {
			dictionary.updateValue(radiantGoldAdv!, forKey: kDMMatchRadiantGoldAdvKey)
		}
		if seriesType != nil {
			dictionary.updateValue(seriesType!, forKey: kDMMatchSeriesTypeKey)
		}
		if leagueid != nil {
			dictionary.updateValue(leagueid!, forKey: kDMMatchLeagueidKey)
		}
		if gameMode != nil {
			dictionary.updateValue(gameMode!, forKey: kDMMatchGameModeKey)
		}
		if stomp != nil {
			dictionary.updateValue(stomp!, forKey: kDMMatchStompKey)
		}
		if towerStatusDire != nil {
			dictionary.updateValue(towerStatusDire!, forKey: kDMMatchTowerStatusDireKey)
		}
		if radiantXpAdv?.count > 0 {
			dictionary.updateValue(radiantXpAdv!, forKey: kDMMatchRadiantXpAdvKey)
		}
		if engine != nil {
			dictionary.updateValue(engine!, forKey: kDMMatchEngineKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.allWordCounts = aDecoder.decodeObjectForKey(kDMMatchAllWordCountsKey) as? DMAllWordCounts
		self.positiveVotes = aDecoder.decodeObjectForKey(kDMMatchPositiveVotesKey) as? Int
		self.towerStatusRadiant = aDecoder.decodeObjectForKey(kDMMatchTowerStatusRadiantKey) as? Int
		self.seriesId = aDecoder.decodeObjectForKey(kDMMatchSeriesIdKey) as? Int
		self.teamfights = aDecoder.decodeObjectForKey(kDMMatchTeamfightsKey) as? [DMTeamfights]
		self.replayUrl = aDecoder.decodeObjectForKey(kDMMatchReplayUrlKey) as? String
		self.version = aDecoder.decodeObjectForKey(kDMMatchVersionKey) as? Int
		self.matchId = aDecoder.decodeObjectForKey(kDMMatchMatchIdKey) as? Int
		self.patch = aDecoder.decodeObjectForKey(kDMMatchPatchKey) as? Int
		self.chat = aDecoder.decodeObjectForKey(kDMMatchChatKey) as? [DMChat]
		self.barracksStatusRadiant = aDecoder.decodeObjectForKey(kDMMatchBarracksStatusRadiantKey) as? Int
		self.cluster = aDecoder.decodeObjectForKey(kDMMatchClusterKey) as? Int
		self.humanPlayers = aDecoder.decodeObjectForKey(kDMMatchHumanPlayersKey) as? Int
		self.radiantWin = aDecoder.decodeBoolForKey(kDMMatchRadiantWinKey)
		self.objectives = aDecoder.decodeObjectForKey(kDMMatchObjectivesKey) as? [DMObjectives]
		self.firstBloodTime = aDecoder.decodeObjectForKey(kDMMatchFirstBloodTimeKey) as? Int
		self.startTime = aDecoder.decodeObjectForKey(kDMMatchStartTimeKey) as? Int
		self.replaySalt = aDecoder.decodeObjectForKey(kDMMatchReplaySaltKey) as? Int
		self.lobbyType = aDecoder.decodeObjectForKey(kDMMatchLobbyTypeKey) as? Int
		self.duration = aDecoder.decodeObjectForKey(kDMMatchDurationKey) as? Int
		self.comeback = aDecoder.decodeObjectForKey(kDMMatchComebackKey) as? Int
		self.region = aDecoder.decodeObjectForKey(kDMMatchRegionKey) as? Int
		self.matchSeqNum = aDecoder.decodeObjectForKey(kDMMatchMatchSeqNumKey) as? Int
		self.negativeVotes = aDecoder.decodeObjectForKey(kDMMatchNegativeVotesKey) as? Int
		self.players = aDecoder.decodeObjectForKey(kDMMatchPlayersKey) as? [DMPlayers]
		self.skill = aDecoder.decodeObjectForKey(kDMMatchSkillKey) as? Int
		self.myWordCounts = aDecoder.decodeObjectForKey(kDMMatchMyWordCountsKey) as? DMMyWordCounts
		self.barracksStatusDire = aDecoder.decodeObjectForKey(kDMMatchBarracksStatusDireKey) as? Int
		self.radiantGoldAdv = aDecoder.decodeObjectForKey(kDMMatchRadiantGoldAdvKey) as? [Int]
		self.seriesType = aDecoder.decodeObjectForKey(kDMMatchSeriesTypeKey) as? Int
		self.leagueid = aDecoder.decodeObjectForKey(kDMMatchLeagueidKey) as? Int
		self.gameMode = aDecoder.decodeObjectForKey(kDMMatchGameModeKey) as? Int
		self.stomp = aDecoder.decodeObjectForKey(kDMMatchStompKey) as? Int
		self.towerStatusDire = aDecoder.decodeObjectForKey(kDMMatchTowerStatusDireKey) as? Int
		self.radiantXpAdv = aDecoder.decodeObjectForKey(kDMMatchRadiantXpAdvKey) as? [Int]
		self.engine = aDecoder.decodeObjectForKey(kDMMatchEngineKey) as? Int

    }


}
