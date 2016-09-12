//
//  DMHeroHits.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class DMHeroHits: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMHeroHitsMaelstromKey: String = "maelstrom"
	internal let kDMHeroHitsBloodthornKey: String = "bloodthorn"
	internal let kDMHeroHitsAbaddonAphoticShieldKey: String = "abaddon_aphotic_shield"
	internal let kDMHeroHitsJuggernautBladeFuryKey: String = "juggernaut_blade_fury"
	internal let kDMHeroHitsVengefulspiritWaveOfTerrorKey: String = "vengefulspirit_wave_of_terror"
	internal let kDMHeroHitsViperCorrosiveSkinKey: String = "viper_corrosive_skin"
	internal let kDMHeroHitsEmberSpiritFlameGuardKey: String = "ember_spirit_flame_guard"
	internal let kDMHeroHitsNevermoreShadowraze2Key: String = "nevermore_shadowraze2"
	internal let kDMHeroHitsNevermoreRequiemKey: String = "nevermore_requiem"
	internal let kDMHeroHitsCrystalMaidenCrystalNovaKey: String = "crystal_maiden_crystal_nova"
	internal let kDMHeroHitsNullKey: String = "null"
	internal let kDMHeroHitsVengefulspiritMagicMissileKey: String = "vengefulspirit_magic_missile"
	internal let kDMHeroHitsViperPoisonAttackKey: String = "viper_poison_attack"
	internal let kDMHeroHitsEmberSpiritActivateFireRemnantKey: String = "ember_spirit_activate_fire_remnant"
	internal let kDMHeroHitsNevermoreShadowraze3Key: String = "nevermore_shadowraze3"
	internal let kDMHeroHitsArcWardenTempestDoubleKey: String = "arc_warden_tempest_double"
	internal let kDMHeroHitsBfuryKey: String = "bfury"
	internal let kDMHeroHitsMjollnirKey: String = "mjollnir"
	internal let kDMHeroHitsBristlebackQuillSprayKey: String = "bristleback_quill_spray"
	internal let kDMHeroHitsArcWardenFluxKey: String = "arc_warden_flux"
	internal let kDMHeroHitsAbaddonDeathCoilKey: String = "abaddon_death_coil"
	internal let kDMHeroHitsCrystalMaidenFrostbiteKey: String = "crystal_maiden_frostbite"
	internal let kDMHeroHitsArcWardenSparkWraithKey: String = "arc_warden_spark_wraith"
	internal let kDMHeroHitsNevermoreShadowraze1Key: String = "nevermore_shadowraze1"
	internal let kDMHeroHitsKunkkaGhostshipKey: String = "kunkka_ghostship"
	internal let kDMHeroHitsJuggernautOmniSlashKey: String = "juggernaut_omni_slash"
	internal let kDMHeroHitsCrystalMaidenFreezingFieldKey: String = "crystal_maiden_freezing_field"
	internal let kDMHeroHitsOrchidKey: String = "orchid"
	internal let kDMHeroHitsEmberSpiritSearingChainsKey: String = "ember_spirit_searing_chains"
	internal let kDMHeroHitsKunkkaTorrentKey: String = "kunkka_torrent"
	internal let kDMHeroHitsKunkkaTidebringerKey: String = "kunkka_tidebringer"
	internal let kDMHeroHitsArmletKey: String = "armlet"
	internal let kDMHeroHitsViperViperStrikeKey: String = "viper_viper_strike"


    // MARK: Properties
	public var maelstrom: Int?
	public var bloodthorn: Int?
	public var abaddonAphoticShield: Int?
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
	public var emberSpiritActivateFireRemnant: Int?
	public var nevermoreShadowraze3: Int?
	public var arcWardenTempestDouble: Int?
	public var bfury: Int?
	public var mjollnir: Int?
	public var bristlebackQuillSpray: Int?
	public var arcWardenFlux: Int?
	public var abaddonDeathCoil: Int?
	public var crystalMaidenFrostbite: Int?
	public var arcWardenSparkWraith: Int?
	public var nevermoreShadowraze1: Int?
	public var kunkkaGhostship: Int?
	public var juggernautOmniSlash: Int?
	public var crystalMaidenFreezingField: Int?
	public var orchid: Int?
	public var emberSpiritSearingChains: Int?
	public var kunkkaTorrent: Int?
	public var kunkkaTidebringer: Int?
	public var armlet: Int?
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
		maelstrom = json[kDMHeroHitsMaelstromKey].int
		bloodthorn = json[kDMHeroHitsBloodthornKey].int
		abaddonAphoticShield = json[kDMHeroHitsAbaddonAphoticShieldKey].int
		juggernautBladeFury = json[kDMHeroHitsJuggernautBladeFuryKey].int
		vengefulspiritWaveOfTerror = json[kDMHeroHitsVengefulspiritWaveOfTerrorKey].int
		viperCorrosiveSkin = json[kDMHeroHitsViperCorrosiveSkinKey].int
		emberSpiritFlameGuard = json[kDMHeroHitsEmberSpiritFlameGuardKey].int
		nevermoreShadowraze2 = json[kDMHeroHitsNevermoreShadowraze2Key].int
		nevermoreRequiem = json[kDMHeroHitsNevermoreRequiemKey].int
		crystalMaidenCrystalNova = json[kDMHeroHitsCrystalMaidenCrystalNovaKey].int
		null = json[kDMHeroHitsNullKey].int
		vengefulspiritMagicMissile = json[kDMHeroHitsVengefulspiritMagicMissileKey].int
		viperPoisonAttack = json[kDMHeroHitsViperPoisonAttackKey].int
		emberSpiritActivateFireRemnant = json[kDMHeroHitsEmberSpiritActivateFireRemnantKey].int
		nevermoreShadowraze3 = json[kDMHeroHitsNevermoreShadowraze3Key].int
		arcWardenTempestDouble = json[kDMHeroHitsArcWardenTempestDoubleKey].int
		bfury = json[kDMHeroHitsBfuryKey].int
		mjollnir = json[kDMHeroHitsMjollnirKey].int
		bristlebackQuillSpray = json[kDMHeroHitsBristlebackQuillSprayKey].int
		arcWardenFlux = json[kDMHeroHitsArcWardenFluxKey].int
		abaddonDeathCoil = json[kDMHeroHitsAbaddonDeathCoilKey].int
		crystalMaidenFrostbite = json[kDMHeroHitsCrystalMaidenFrostbiteKey].int
		arcWardenSparkWraith = json[kDMHeroHitsArcWardenSparkWraithKey].int
		nevermoreShadowraze1 = json[kDMHeroHitsNevermoreShadowraze1Key].int
		kunkkaGhostship = json[kDMHeroHitsKunkkaGhostshipKey].int
		juggernautOmniSlash = json[kDMHeroHitsJuggernautOmniSlashKey].int
		crystalMaidenFreezingField = json[kDMHeroHitsCrystalMaidenFreezingFieldKey].int
		orchid = json[kDMHeroHitsOrchidKey].int
		emberSpiritSearingChains = json[kDMHeroHitsEmberSpiritSearingChainsKey].int
		kunkkaTorrent = json[kDMHeroHitsKunkkaTorrentKey].int
		kunkkaTidebringer = json[kDMHeroHitsKunkkaTidebringerKey].int
		armlet = json[kDMHeroHitsArmletKey].int
		viperViperStrike = json[kDMHeroHitsViperViperStrikeKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if maelstrom != nil {
			dictionary.updateValue(maelstrom!, forKey: kDMHeroHitsMaelstromKey)
		}
		if bloodthorn != nil {
			dictionary.updateValue(bloodthorn!, forKey: kDMHeroHitsBloodthornKey)
		}
		if abaddonAphoticShield != nil {
			dictionary.updateValue(abaddonAphoticShield!, forKey: kDMHeroHitsAbaddonAphoticShieldKey)
		}
		if juggernautBladeFury != nil {
			dictionary.updateValue(juggernautBladeFury!, forKey: kDMHeroHitsJuggernautBladeFuryKey)
		}
		if vengefulspiritWaveOfTerror != nil {
			dictionary.updateValue(vengefulspiritWaveOfTerror!, forKey: kDMHeroHitsVengefulspiritWaveOfTerrorKey)
		}
		if viperCorrosiveSkin != nil {
			dictionary.updateValue(viperCorrosiveSkin!, forKey: kDMHeroHitsViperCorrosiveSkinKey)
		}
		if emberSpiritFlameGuard != nil {
			dictionary.updateValue(emberSpiritFlameGuard!, forKey: kDMHeroHitsEmberSpiritFlameGuardKey)
		}
		if nevermoreShadowraze2 != nil {
			dictionary.updateValue(nevermoreShadowraze2!, forKey: kDMHeroHitsNevermoreShadowraze2Key)
		}
		if nevermoreRequiem != nil {
			dictionary.updateValue(nevermoreRequiem!, forKey: kDMHeroHitsNevermoreRequiemKey)
		}
		if crystalMaidenCrystalNova != nil {
			dictionary.updateValue(crystalMaidenCrystalNova!, forKey: kDMHeroHitsCrystalMaidenCrystalNovaKey)
		}
		if null != nil {
			dictionary.updateValue(null!, forKey: kDMHeroHitsNullKey)
		}
		if vengefulspiritMagicMissile != nil {
			dictionary.updateValue(vengefulspiritMagicMissile!, forKey: kDMHeroHitsVengefulspiritMagicMissileKey)
		}
		if viperPoisonAttack != nil {
			dictionary.updateValue(viperPoisonAttack!, forKey: kDMHeroHitsViperPoisonAttackKey)
		}
		if emberSpiritActivateFireRemnant != nil {
			dictionary.updateValue(emberSpiritActivateFireRemnant!, forKey: kDMHeroHitsEmberSpiritActivateFireRemnantKey)
		}
		if nevermoreShadowraze3 != nil {
			dictionary.updateValue(nevermoreShadowraze3!, forKey: kDMHeroHitsNevermoreShadowraze3Key)
		}
		if arcWardenTempestDouble != nil {
			dictionary.updateValue(arcWardenTempestDouble!, forKey: kDMHeroHitsArcWardenTempestDoubleKey)
		}
		if bfury != nil {
			dictionary.updateValue(bfury!, forKey: kDMHeroHitsBfuryKey)
		}
		if mjollnir != nil {
			dictionary.updateValue(mjollnir!, forKey: kDMHeroHitsMjollnirKey)
		}
		if bristlebackQuillSpray != nil {
			dictionary.updateValue(bristlebackQuillSpray!, forKey: kDMHeroHitsBristlebackQuillSprayKey)
		}
		if arcWardenFlux != nil {
			dictionary.updateValue(arcWardenFlux!, forKey: kDMHeroHitsArcWardenFluxKey)
		}
		if abaddonDeathCoil != nil {
			dictionary.updateValue(abaddonDeathCoil!, forKey: kDMHeroHitsAbaddonDeathCoilKey)
		}
		if crystalMaidenFrostbite != nil {
			dictionary.updateValue(crystalMaidenFrostbite!, forKey: kDMHeroHitsCrystalMaidenFrostbiteKey)
		}
		if arcWardenSparkWraith != nil {
			dictionary.updateValue(arcWardenSparkWraith!, forKey: kDMHeroHitsArcWardenSparkWraithKey)
		}
		if nevermoreShadowraze1 != nil {
			dictionary.updateValue(nevermoreShadowraze1!, forKey: kDMHeroHitsNevermoreShadowraze1Key)
		}
		if kunkkaGhostship != nil {
			dictionary.updateValue(kunkkaGhostship!, forKey: kDMHeroHitsKunkkaGhostshipKey)
		}
		if juggernautOmniSlash != nil {
			dictionary.updateValue(juggernautOmniSlash!, forKey: kDMHeroHitsJuggernautOmniSlashKey)
		}
		if crystalMaidenFreezingField != nil {
			dictionary.updateValue(crystalMaidenFreezingField!, forKey: kDMHeroHitsCrystalMaidenFreezingFieldKey)
		}
		if orchid != nil {
			dictionary.updateValue(orchid!, forKey: kDMHeroHitsOrchidKey)
		}
		if emberSpiritSearingChains != nil {
			dictionary.updateValue(emberSpiritSearingChains!, forKey: kDMHeroHitsEmberSpiritSearingChainsKey)
		}
		if kunkkaTorrent != nil {
			dictionary.updateValue(kunkkaTorrent!, forKey: kDMHeroHitsKunkkaTorrentKey)
		}
		if kunkkaTidebringer != nil {
			dictionary.updateValue(kunkkaTidebringer!, forKey: kDMHeroHitsKunkkaTidebringerKey)
		}
		if armlet != nil {
			dictionary.updateValue(armlet!, forKey: kDMHeroHitsArmletKey)
		}
		if viperViperStrike != nil {
			dictionary.updateValue(viperViperStrike!, forKey: kDMHeroHitsViperViperStrikeKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.maelstrom = aDecoder.decodeObjectForKey(kDMHeroHitsMaelstromKey) as? Int
		self.bloodthorn = aDecoder.decodeObjectForKey(kDMHeroHitsBloodthornKey) as? Int
		self.abaddonAphoticShield = aDecoder.decodeObjectForKey(kDMHeroHitsAbaddonAphoticShieldKey) as? Int
		self.juggernautBladeFury = aDecoder.decodeObjectForKey(kDMHeroHitsJuggernautBladeFuryKey) as? Int
		self.vengefulspiritWaveOfTerror = aDecoder.decodeObjectForKey(kDMHeroHitsVengefulspiritWaveOfTerrorKey) as? Int
		self.viperCorrosiveSkin = aDecoder.decodeObjectForKey(kDMHeroHitsViperCorrosiveSkinKey) as? Int
		self.emberSpiritFlameGuard = aDecoder.decodeObjectForKey(kDMHeroHitsEmberSpiritFlameGuardKey) as? Int
		self.nevermoreShadowraze2 = aDecoder.decodeObjectForKey(kDMHeroHitsNevermoreShadowraze2Key) as? Int
		self.nevermoreRequiem = aDecoder.decodeObjectForKey(kDMHeroHitsNevermoreRequiemKey) as? Int
		self.crystalMaidenCrystalNova = aDecoder.decodeObjectForKey(kDMHeroHitsCrystalMaidenCrystalNovaKey) as? Int
		self.null = aDecoder.decodeObjectForKey(kDMHeroHitsNullKey) as? Int
		self.vengefulspiritMagicMissile = aDecoder.decodeObjectForKey(kDMHeroHitsVengefulspiritMagicMissileKey) as? Int
		self.viperPoisonAttack = aDecoder.decodeObjectForKey(kDMHeroHitsViperPoisonAttackKey) as? Int
		self.emberSpiritActivateFireRemnant = aDecoder.decodeObjectForKey(kDMHeroHitsEmberSpiritActivateFireRemnantKey) as? Int
		self.nevermoreShadowraze3 = aDecoder.decodeObjectForKey(kDMHeroHitsNevermoreShadowraze3Key) as? Int
		self.arcWardenTempestDouble = aDecoder.decodeObjectForKey(kDMHeroHitsArcWardenTempestDoubleKey) as? Int
		self.bfury = aDecoder.decodeObjectForKey(kDMHeroHitsBfuryKey) as? Int
		self.mjollnir = aDecoder.decodeObjectForKey(kDMHeroHitsMjollnirKey) as? Int
		self.bristlebackQuillSpray = aDecoder.decodeObjectForKey(kDMHeroHitsBristlebackQuillSprayKey) as? Int
		self.arcWardenFlux = aDecoder.decodeObjectForKey(kDMHeroHitsArcWardenFluxKey) as? Int
		self.abaddonDeathCoil = aDecoder.decodeObjectForKey(kDMHeroHitsAbaddonDeathCoilKey) as? Int
		self.crystalMaidenFrostbite = aDecoder.decodeObjectForKey(kDMHeroHitsCrystalMaidenFrostbiteKey) as? Int
		self.arcWardenSparkWraith = aDecoder.decodeObjectForKey(kDMHeroHitsArcWardenSparkWraithKey) as? Int
		self.nevermoreShadowraze1 = aDecoder.decodeObjectForKey(kDMHeroHitsNevermoreShadowraze1Key) as? Int
		self.kunkkaGhostship = aDecoder.decodeObjectForKey(kDMHeroHitsKunkkaGhostshipKey) as? Int
		self.juggernautOmniSlash = aDecoder.decodeObjectForKey(kDMHeroHitsJuggernautOmniSlashKey) as? Int
		self.crystalMaidenFreezingField = aDecoder.decodeObjectForKey(kDMHeroHitsCrystalMaidenFreezingFieldKey) as? Int
		self.orchid = aDecoder.decodeObjectForKey(kDMHeroHitsOrchidKey) as? Int
		self.emberSpiritSearingChains = aDecoder.decodeObjectForKey(kDMHeroHitsEmberSpiritSearingChainsKey) as? Int
		self.kunkkaTorrent = aDecoder.decodeObjectForKey(kDMHeroHitsKunkkaTorrentKey) as? Int
		self.kunkkaTidebringer = aDecoder.decodeObjectForKey(kDMHeroHitsKunkkaTidebringerKey) as? Int
		self.armlet = aDecoder.decodeObjectForKey(kDMHeroHitsArmletKey) as? Int
		self.viperViperStrike = aDecoder.decodeObjectForKey(kDMHeroHitsViperViperStrikeKey) as? Int

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeObject(maelstrom, forKey: kDMHeroHitsMaelstromKey)
		aCoder.encodeObject(bloodthorn, forKey: kDMHeroHitsBloodthornKey)
		aCoder.encodeObject(abaddonAphoticShield, forKey: kDMHeroHitsAbaddonAphoticShieldKey)
		aCoder.encodeObject(juggernautBladeFury, forKey: kDMHeroHitsJuggernautBladeFuryKey)
		aCoder.encodeObject(vengefulspiritWaveOfTerror, forKey: kDMHeroHitsVengefulspiritWaveOfTerrorKey)
		aCoder.encodeObject(viperCorrosiveSkin, forKey: kDMHeroHitsViperCorrosiveSkinKey)
		aCoder.encodeObject(emberSpiritFlameGuard, forKey: kDMHeroHitsEmberSpiritFlameGuardKey)
		aCoder.encodeObject(nevermoreShadowraze2, forKey: kDMHeroHitsNevermoreShadowraze2Key)
		aCoder.encodeObject(nevermoreRequiem, forKey: kDMHeroHitsNevermoreRequiemKey)
		aCoder.encodeObject(crystalMaidenCrystalNova, forKey: kDMHeroHitsCrystalMaidenCrystalNovaKey)
		aCoder.encodeObject(null, forKey: kDMHeroHitsNullKey)
		aCoder.encodeObject(vengefulspiritMagicMissile, forKey: kDMHeroHitsVengefulspiritMagicMissileKey)
		aCoder.encodeObject(viperPoisonAttack, forKey: kDMHeroHitsViperPoisonAttackKey)
		aCoder.encodeObject(emberSpiritActivateFireRemnant, forKey: kDMHeroHitsEmberSpiritActivateFireRemnantKey)
		aCoder.encodeObject(nevermoreShadowraze3, forKey: kDMHeroHitsNevermoreShadowraze3Key)
		aCoder.encodeObject(arcWardenTempestDouble, forKey: kDMHeroHitsArcWardenTempestDoubleKey)
		aCoder.encodeObject(bfury, forKey: kDMHeroHitsBfuryKey)
		aCoder.encodeObject(mjollnir, forKey: kDMHeroHitsMjollnirKey)
		aCoder.encodeObject(bristlebackQuillSpray, forKey: kDMHeroHitsBristlebackQuillSprayKey)
		aCoder.encodeObject(arcWardenFlux, forKey: kDMHeroHitsArcWardenFluxKey)
		aCoder.encodeObject(abaddonDeathCoil, forKey: kDMHeroHitsAbaddonDeathCoilKey)
		aCoder.encodeObject(crystalMaidenFrostbite, forKey: kDMHeroHitsCrystalMaidenFrostbiteKey)
		aCoder.encodeObject(arcWardenSparkWraith, forKey: kDMHeroHitsArcWardenSparkWraithKey)
		aCoder.encodeObject(nevermoreShadowraze1, forKey: kDMHeroHitsNevermoreShadowraze1Key)
		aCoder.encodeObject(kunkkaGhostship, forKey: kDMHeroHitsKunkkaGhostshipKey)
		aCoder.encodeObject(juggernautOmniSlash, forKey: kDMHeroHitsJuggernautOmniSlashKey)
		aCoder.encodeObject(crystalMaidenFreezingField, forKey: kDMHeroHitsCrystalMaidenFreezingFieldKey)
		aCoder.encodeObject(orchid, forKey: kDMHeroHitsOrchidKey)
		aCoder.encodeObject(emberSpiritSearingChains, forKey: kDMHeroHitsEmberSpiritSearingChainsKey)
		aCoder.encodeObject(kunkkaTorrent, forKey: kDMHeroHitsKunkkaTorrentKey)
		aCoder.encodeObject(kunkkaTidebringer, forKey: kDMHeroHitsKunkkaTidebringerKey)
		aCoder.encodeObject(armlet, forKey: kDMHeroHitsArmletKey)
		aCoder.encodeObject(viperViperStrike, forKey: kDMHeroHitsViperViperStrikeKey)

    }

}
