//
//  DMDamageInflictorReceived.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class DMDamageInflictorReceived: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMDamageInflictorReceivedMaelstromKey: String = "maelstrom"
	internal let kDMDamageInflictorReceivedAbaddonAphoticShieldKey: String = "abaddon_aphotic_shield"
	internal let kDMDamageInflictorReceivedBloodthornKey: String = "bloodthorn"
	internal let kDMDamageInflictorReceivedJuggernautBladeFuryKey: String = "juggernaut_blade_fury"
	internal let kDMDamageInflictorReceivedVengefulspiritWaveOfTerrorKey: String = "vengefulspirit_wave_of_terror"
	internal let kDMDamageInflictorReceivedViperCorrosiveSkinKey: String = "viper_corrosive_skin"
	internal let kDMDamageInflictorReceivedEmberSpiritFlameGuardKey: String = "ember_spirit_flame_guard"
	internal let kDMDamageInflictorReceivedNevermoreShadowraze2Key: String = "nevermore_shadowraze2"
	internal let kDMDamageInflictorReceivedNevermoreRequiemKey: String = "nevermore_requiem"
	internal let kDMDamageInflictorReceivedCrystalMaidenCrystalNovaKey: String = "crystal_maiden_crystal_nova"
	internal let kDMDamageInflictorReceivedNullKey: String = "null"
	internal let kDMDamageInflictorReceivedVengefulspiritMagicMissileKey: String = "vengefulspirit_magic_missile"
	internal let kDMDamageInflictorReceivedViperPoisonAttackKey: String = "viper_poison_attack"
	internal let kDMDamageInflictorReceivedNevermoreShadowraze3Key: String = "nevermore_shadowraze3"
	internal let kDMDamageInflictorReceivedEmberSpiritActivateFireRemnantKey: String = "ember_spirit_activate_fire_remnant"
	internal let kDMDamageInflictorReceivedBfuryKey: String = "bfury"
	internal let kDMDamageInflictorReceivedMjollnirKey: String = "mjollnir"
	internal let kDMDamageInflictorReceivedBristlebackQuillSprayKey: String = "bristleback_quill_spray"
	internal let kDMDamageInflictorReceivedArcWardenFluxKey: String = "arc_warden_flux"
	internal let kDMDamageInflictorReceivedCrystalMaidenFrostbiteKey: String = "crystal_maiden_frostbite"
	internal let kDMDamageInflictorReceivedKunkkaGhostshipKey: String = "kunkka_ghostship"
	internal let kDMDamageInflictorReceivedArcWardenSparkWraithKey: String = "arc_warden_spark_wraith"
	internal let kDMDamageInflictorReceivedNevermoreShadowraze1Key: String = "nevermore_shadowraze1"
	internal let kDMDamageInflictorReceivedAbaddonDeathCoilKey: String = "abaddon_death_coil"
	internal let kDMDamageInflictorReceivedJuggernautOmniSlashKey: String = "juggernaut_omni_slash"
	internal let kDMDamageInflictorReceivedCrystalMaidenFreezingFieldKey: String = "crystal_maiden_freezing_field"
	internal let kDMDamageInflictorReceivedOrchidKey: String = "orchid"
	internal let kDMDamageInflictorReceivedEmberSpiritSearingChainsKey: String = "ember_spirit_searing_chains"
	internal let kDMDamageInflictorReceivedKunkkaTorrentKey: String = "kunkka_torrent"
	internal let kDMDamageInflictorReceivedKunkkaTidebringerKey: String = "kunkka_tidebringer"
	internal let kDMDamageInflictorReceivedViperViperStrikeKey: String = "viper_viper_strike"


    // MARK: Properties
	public var maelstrom: Int?
	public var abaddonAphoticShield: Int?
	public var bloodthorn: Int?
	public var juggernautBladeFury: Int?
	public var vengefulspiritWaveOfTerror: Int?
	public var viperCorrosiveSkin: Int?
	public var emberSpiritFlameGuard: Int?
	public var nevermoreShadowraze2: Int?
	public var nevermoreRequiem: Int?
	public var crystalMaidenCrystalNova: Int?
	public var null: Int?
	public var vengefulspiritMagicMissile: Int?
	public var viperPoisonAttack: Int?
	public var nevermoreShadowraze3: Int?
	public var emberSpiritActivateFireRemnant: Int?
	public var bfury: Int?
	public var mjollnir: Int?
	public var bristlebackQuillSpray: Int?
	public var arcWardenFlux: Int?
	public var crystalMaidenFrostbite: Int?
	public var kunkkaGhostship: Int?
	public var arcWardenSparkWraith: Int?
	public var nevermoreShadowraze1: Int?
	public var abaddonDeathCoil: Int?
	public var juggernautOmniSlash: Int?
	public var crystalMaidenFreezingField: Int?
	public var orchid: Int?
	public var emberSpiritSearingChains: Int?
	public var kunkkaTorrent: Int?
	public var kunkkaTidebringer: Int?
	public var viperViperStrike: Int?


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
		maelstrom = json[kDMDamageInflictorReceivedMaelstromKey].int
		abaddonAphoticShield = json[kDMDamageInflictorReceivedAbaddonAphoticShieldKey].int
		bloodthorn = json[kDMDamageInflictorReceivedBloodthornKey].int
		juggernautBladeFury = json[kDMDamageInflictorReceivedJuggernautBladeFuryKey].int
		vengefulspiritWaveOfTerror = json[kDMDamageInflictorReceivedVengefulspiritWaveOfTerrorKey].int
		viperCorrosiveSkin = json[kDMDamageInflictorReceivedViperCorrosiveSkinKey].int
		emberSpiritFlameGuard = json[kDMDamageInflictorReceivedEmberSpiritFlameGuardKey].int
		nevermoreShadowraze2 = json[kDMDamageInflictorReceivedNevermoreShadowraze2Key].int
		nevermoreRequiem = json[kDMDamageInflictorReceivedNevermoreRequiemKey].int
		crystalMaidenCrystalNova = json[kDMDamageInflictorReceivedCrystalMaidenCrystalNovaKey].int
		null = json[kDMDamageInflictorReceivedNullKey].int
		vengefulspiritMagicMissile = json[kDMDamageInflictorReceivedVengefulspiritMagicMissileKey].int
		viperPoisonAttack = json[kDMDamageInflictorReceivedViperPoisonAttackKey].int
		nevermoreShadowraze3 = json[kDMDamageInflictorReceivedNevermoreShadowraze3Key].int
		emberSpiritActivateFireRemnant = json[kDMDamageInflictorReceivedEmberSpiritActivateFireRemnantKey].int
		bfury = json[kDMDamageInflictorReceivedBfuryKey].int
		mjollnir = json[kDMDamageInflictorReceivedMjollnirKey].int
		bristlebackQuillSpray = json[kDMDamageInflictorReceivedBristlebackQuillSprayKey].int
		arcWardenFlux = json[kDMDamageInflictorReceivedArcWardenFluxKey].int
		crystalMaidenFrostbite = json[kDMDamageInflictorReceivedCrystalMaidenFrostbiteKey].int
		kunkkaGhostship = json[kDMDamageInflictorReceivedKunkkaGhostshipKey].int
		arcWardenSparkWraith = json[kDMDamageInflictorReceivedArcWardenSparkWraithKey].int
		nevermoreShadowraze1 = json[kDMDamageInflictorReceivedNevermoreShadowraze1Key].int
		abaddonDeathCoil = json[kDMDamageInflictorReceivedAbaddonDeathCoilKey].int
		juggernautOmniSlash = json[kDMDamageInflictorReceivedJuggernautOmniSlashKey].int
		crystalMaidenFreezingField = json[kDMDamageInflictorReceivedCrystalMaidenFreezingFieldKey].int
		orchid = json[kDMDamageInflictorReceivedOrchidKey].int
		emberSpiritSearingChains = json[kDMDamageInflictorReceivedEmberSpiritSearingChainsKey].int
		kunkkaTorrent = json[kDMDamageInflictorReceivedKunkkaTorrentKey].int
		kunkkaTidebringer = json[kDMDamageInflictorReceivedKunkkaTidebringerKey].int
		viperViperStrike = json[kDMDamageInflictorReceivedViperViperStrikeKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if maelstrom != nil {
			dictionary.updateValue(maelstrom!, forKey: kDMDamageInflictorReceivedMaelstromKey)
		}
		if abaddonAphoticShield != nil {
			dictionary.updateValue(abaddonAphoticShield!, forKey: kDMDamageInflictorReceivedAbaddonAphoticShieldKey)
		}
		if bloodthorn != nil {
			dictionary.updateValue(bloodthorn!, forKey: kDMDamageInflictorReceivedBloodthornKey)
		}
		if juggernautBladeFury != nil {
			dictionary.updateValue(juggernautBladeFury!, forKey: kDMDamageInflictorReceivedJuggernautBladeFuryKey)
		}
		if vengefulspiritWaveOfTerror != nil {
			dictionary.updateValue(vengefulspiritWaveOfTerror!, forKey: kDMDamageInflictorReceivedVengefulspiritWaveOfTerrorKey)
		}
		if viperCorrosiveSkin != nil {
			dictionary.updateValue(viperCorrosiveSkin!, forKey: kDMDamageInflictorReceivedViperCorrosiveSkinKey)
		}
		if emberSpiritFlameGuard != nil {
			dictionary.updateValue(emberSpiritFlameGuard!, forKey: kDMDamageInflictorReceivedEmberSpiritFlameGuardKey)
		}
		if nevermoreShadowraze2 != nil {
			dictionary.updateValue(nevermoreShadowraze2!, forKey: kDMDamageInflictorReceivedNevermoreShadowraze2Key)
		}
		if nevermoreRequiem != nil {
			dictionary.updateValue(nevermoreRequiem!, forKey: kDMDamageInflictorReceivedNevermoreRequiemKey)
		}
		if crystalMaidenCrystalNova != nil {
			dictionary.updateValue(crystalMaidenCrystalNova!, forKey: kDMDamageInflictorReceivedCrystalMaidenCrystalNovaKey)
		}
		if null != nil {
			dictionary.updateValue(null!, forKey: kDMDamageInflictorReceivedNullKey)
		}
		if vengefulspiritMagicMissile != nil {
			dictionary.updateValue(vengefulspiritMagicMissile!, forKey: kDMDamageInflictorReceivedVengefulspiritMagicMissileKey)
		}
		if viperPoisonAttack != nil {
			dictionary.updateValue(viperPoisonAttack!, forKey: kDMDamageInflictorReceivedViperPoisonAttackKey)
		}
		if nevermoreShadowraze3 != nil {
			dictionary.updateValue(nevermoreShadowraze3!, forKey: kDMDamageInflictorReceivedNevermoreShadowraze3Key)
		}
		if emberSpiritActivateFireRemnant != nil {
			dictionary.updateValue(emberSpiritActivateFireRemnant!, forKey: kDMDamageInflictorReceivedEmberSpiritActivateFireRemnantKey)
		}
		if bfury != nil {
			dictionary.updateValue(bfury!, forKey: kDMDamageInflictorReceivedBfuryKey)
		}
		if mjollnir != nil {
			dictionary.updateValue(mjollnir!, forKey: kDMDamageInflictorReceivedMjollnirKey)
		}
		if bristlebackQuillSpray != nil {
			dictionary.updateValue(bristlebackQuillSpray!, forKey: kDMDamageInflictorReceivedBristlebackQuillSprayKey)
		}
		if arcWardenFlux != nil {
			dictionary.updateValue(arcWardenFlux!, forKey: kDMDamageInflictorReceivedArcWardenFluxKey)
		}
		if crystalMaidenFrostbite != nil {
			dictionary.updateValue(crystalMaidenFrostbite!, forKey: kDMDamageInflictorReceivedCrystalMaidenFrostbiteKey)
		}
		if kunkkaGhostship != nil {
			dictionary.updateValue(kunkkaGhostship!, forKey: kDMDamageInflictorReceivedKunkkaGhostshipKey)
		}
		if arcWardenSparkWraith != nil {
			dictionary.updateValue(arcWardenSparkWraith!, forKey: kDMDamageInflictorReceivedArcWardenSparkWraithKey)
		}
		if nevermoreShadowraze1 != nil {
			dictionary.updateValue(nevermoreShadowraze1!, forKey: kDMDamageInflictorReceivedNevermoreShadowraze1Key)
		}
		if abaddonDeathCoil != nil {
			dictionary.updateValue(abaddonDeathCoil!, forKey: kDMDamageInflictorReceivedAbaddonDeathCoilKey)
		}
		if juggernautOmniSlash != nil {
			dictionary.updateValue(juggernautOmniSlash!, forKey: kDMDamageInflictorReceivedJuggernautOmniSlashKey)
		}
		if crystalMaidenFreezingField != nil {
			dictionary.updateValue(crystalMaidenFreezingField!, forKey: kDMDamageInflictorReceivedCrystalMaidenFreezingFieldKey)
		}
		if orchid != nil {
			dictionary.updateValue(orchid!, forKey: kDMDamageInflictorReceivedOrchidKey)
		}
		if emberSpiritSearingChains != nil {
			dictionary.updateValue(emberSpiritSearingChains!, forKey: kDMDamageInflictorReceivedEmberSpiritSearingChainsKey)
		}
		if kunkkaTorrent != nil {
			dictionary.updateValue(kunkkaTorrent!, forKey: kDMDamageInflictorReceivedKunkkaTorrentKey)
		}
		if kunkkaTidebringer != nil {
			dictionary.updateValue(kunkkaTidebringer!, forKey: kDMDamageInflictorReceivedKunkkaTidebringerKey)
		}
		if viperViperStrike != nil {
			dictionary.updateValue(viperViperStrike!, forKey: kDMDamageInflictorReceivedViperViperStrikeKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.maelstrom = aDecoder.decodeObjectForKey(kDMDamageInflictorReceivedMaelstromKey) as? Int
		self.abaddonAphoticShield = aDecoder.decodeObjectForKey(kDMDamageInflictorReceivedAbaddonAphoticShieldKey) as? Int
		self.bloodthorn = aDecoder.decodeObjectForKey(kDMDamageInflictorReceivedBloodthornKey) as? Int
		self.juggernautBladeFury = aDecoder.decodeObjectForKey(kDMDamageInflictorReceivedJuggernautBladeFuryKey) as? Int
		self.vengefulspiritWaveOfTerror = aDecoder.decodeObjectForKey(kDMDamageInflictorReceivedVengefulspiritWaveOfTerrorKey) as? Int
		self.viperCorrosiveSkin = aDecoder.decodeObjectForKey(kDMDamageInflictorReceivedViperCorrosiveSkinKey) as? Int
		self.emberSpiritFlameGuard = aDecoder.decodeObjectForKey(kDMDamageInflictorReceivedEmberSpiritFlameGuardKey) as? Int
		self.nevermoreShadowraze2 = aDecoder.decodeObjectForKey(kDMDamageInflictorReceivedNevermoreShadowraze2Key) as? Int
		self.nevermoreRequiem = aDecoder.decodeObjectForKey(kDMDamageInflictorReceivedNevermoreRequiemKey) as? Int
		self.crystalMaidenCrystalNova = aDecoder.decodeObjectForKey(kDMDamageInflictorReceivedCrystalMaidenCrystalNovaKey) as? Int
		self.null = aDecoder.decodeObjectForKey(kDMDamageInflictorReceivedNullKey) as? Int
		self.vengefulspiritMagicMissile = aDecoder.decodeObjectForKey(kDMDamageInflictorReceivedVengefulspiritMagicMissileKey) as? Int
		self.viperPoisonAttack = aDecoder.decodeObjectForKey(kDMDamageInflictorReceivedViperPoisonAttackKey) as? Int
		self.nevermoreShadowraze3 = aDecoder.decodeObjectForKey(kDMDamageInflictorReceivedNevermoreShadowraze3Key) as? Int
		self.emberSpiritActivateFireRemnant = aDecoder.decodeObjectForKey(kDMDamageInflictorReceivedEmberSpiritActivateFireRemnantKey) as? Int
		self.bfury = aDecoder.decodeObjectForKey(kDMDamageInflictorReceivedBfuryKey) as? Int
		self.mjollnir = aDecoder.decodeObjectForKey(kDMDamageInflictorReceivedMjollnirKey) as? Int
		self.bristlebackQuillSpray = aDecoder.decodeObjectForKey(kDMDamageInflictorReceivedBristlebackQuillSprayKey) as? Int
		self.arcWardenFlux = aDecoder.decodeObjectForKey(kDMDamageInflictorReceivedArcWardenFluxKey) as? Int
		self.crystalMaidenFrostbite = aDecoder.decodeObjectForKey(kDMDamageInflictorReceivedCrystalMaidenFrostbiteKey) as? Int
		self.kunkkaGhostship = aDecoder.decodeObjectForKey(kDMDamageInflictorReceivedKunkkaGhostshipKey) as? Int
		self.arcWardenSparkWraith = aDecoder.decodeObjectForKey(kDMDamageInflictorReceivedArcWardenSparkWraithKey) as? Int
		self.nevermoreShadowraze1 = aDecoder.decodeObjectForKey(kDMDamageInflictorReceivedNevermoreShadowraze1Key) as? Int
		self.abaddonDeathCoil = aDecoder.decodeObjectForKey(kDMDamageInflictorReceivedAbaddonDeathCoilKey) as? Int
		self.juggernautOmniSlash = aDecoder.decodeObjectForKey(kDMDamageInflictorReceivedJuggernautOmniSlashKey) as? Int
		self.crystalMaidenFreezingField = aDecoder.decodeObjectForKey(kDMDamageInflictorReceivedCrystalMaidenFreezingFieldKey) as? Int
		self.orchid = aDecoder.decodeObjectForKey(kDMDamageInflictorReceivedOrchidKey) as? Int
		self.emberSpiritSearingChains = aDecoder.decodeObjectForKey(kDMDamageInflictorReceivedEmberSpiritSearingChainsKey) as? Int
		self.kunkkaTorrent = aDecoder.decodeObjectForKey(kDMDamageInflictorReceivedKunkkaTorrentKey) as? Int
		self.kunkkaTidebringer = aDecoder.decodeObjectForKey(kDMDamageInflictorReceivedKunkkaTidebringerKey) as? Int
		self.viperViperStrike = aDecoder.decodeObjectForKey(kDMDamageInflictorReceivedViperViperStrikeKey) as? Int

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeObject(maelstrom, forKey: kDMDamageInflictorReceivedMaelstromKey)
		aCoder.encodeObject(abaddonAphoticShield, forKey: kDMDamageInflictorReceivedAbaddonAphoticShieldKey)
		aCoder.encodeObject(bloodthorn, forKey: kDMDamageInflictorReceivedBloodthornKey)
		aCoder.encodeObject(juggernautBladeFury, forKey: kDMDamageInflictorReceivedJuggernautBladeFuryKey)
		aCoder.encodeObject(vengefulspiritWaveOfTerror, forKey: kDMDamageInflictorReceivedVengefulspiritWaveOfTerrorKey)
		aCoder.encodeObject(viperCorrosiveSkin, forKey: kDMDamageInflictorReceivedViperCorrosiveSkinKey)
		aCoder.encodeObject(emberSpiritFlameGuard, forKey: kDMDamageInflictorReceivedEmberSpiritFlameGuardKey)
		aCoder.encodeObject(nevermoreShadowraze2, forKey: kDMDamageInflictorReceivedNevermoreShadowraze2Key)
		aCoder.encodeObject(nevermoreRequiem, forKey: kDMDamageInflictorReceivedNevermoreRequiemKey)
		aCoder.encodeObject(crystalMaidenCrystalNova, forKey: kDMDamageInflictorReceivedCrystalMaidenCrystalNovaKey)
		aCoder.encodeObject(null, forKey: kDMDamageInflictorReceivedNullKey)
		aCoder.encodeObject(vengefulspiritMagicMissile, forKey: kDMDamageInflictorReceivedVengefulspiritMagicMissileKey)
		aCoder.encodeObject(viperPoisonAttack, forKey: kDMDamageInflictorReceivedViperPoisonAttackKey)
		aCoder.encodeObject(nevermoreShadowraze3, forKey: kDMDamageInflictorReceivedNevermoreShadowraze3Key)
		aCoder.encodeObject(emberSpiritActivateFireRemnant, forKey: kDMDamageInflictorReceivedEmberSpiritActivateFireRemnantKey)
		aCoder.encodeObject(bfury, forKey: kDMDamageInflictorReceivedBfuryKey)
		aCoder.encodeObject(mjollnir, forKey: kDMDamageInflictorReceivedMjollnirKey)
		aCoder.encodeObject(bristlebackQuillSpray, forKey: kDMDamageInflictorReceivedBristlebackQuillSprayKey)
		aCoder.encodeObject(arcWardenFlux, forKey: kDMDamageInflictorReceivedArcWardenFluxKey)
		aCoder.encodeObject(crystalMaidenFrostbite, forKey: kDMDamageInflictorReceivedCrystalMaidenFrostbiteKey)
		aCoder.encodeObject(kunkkaGhostship, forKey: kDMDamageInflictorReceivedKunkkaGhostshipKey)
		aCoder.encodeObject(arcWardenSparkWraith, forKey: kDMDamageInflictorReceivedArcWardenSparkWraithKey)
		aCoder.encodeObject(nevermoreShadowraze1, forKey: kDMDamageInflictorReceivedNevermoreShadowraze1Key)
		aCoder.encodeObject(abaddonDeathCoil, forKey: kDMDamageInflictorReceivedAbaddonDeathCoilKey)
		aCoder.encodeObject(juggernautOmniSlash, forKey: kDMDamageInflictorReceivedJuggernautOmniSlashKey)
		aCoder.encodeObject(crystalMaidenFreezingField, forKey: kDMDamageInflictorReceivedCrystalMaidenFreezingFieldKey)
		aCoder.encodeObject(orchid, forKey: kDMDamageInflictorReceivedOrchidKey)
		aCoder.encodeObject(emberSpiritSearingChains, forKey: kDMDamageInflictorReceivedEmberSpiritSearingChainsKey)
		aCoder.encodeObject(kunkkaTorrent, forKey: kDMDamageInflictorReceivedKunkkaTorrentKey)
		aCoder.encodeObject(kunkkaTidebringer, forKey: kDMDamageInflictorReceivedKunkkaTidebringerKey)
		aCoder.encodeObject(viperViperStrike, forKey: kDMDamageInflictorReceivedViperViperStrikeKey)

    }

}
