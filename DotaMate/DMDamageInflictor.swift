//
//  DMDamageInflictor.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class DMDamageInflictor: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMDamageInflictorMaelstromKey: String = "maelstrom"
	internal let kDMDamageInflictorBloodthornKey: String = "bloodthorn"
	internal let kDMDamageInflictorAbaddonAphoticShieldKey: String = "abaddon_aphotic_shield"
	internal let kDMDamageInflictorJuggernautBladeFuryKey: String = "juggernaut_blade_fury"
	internal let kDMDamageInflictorVengefulspiritWaveOfTerrorKey: String = "vengefulspirit_wave_of_terror"
	internal let kDMDamageInflictorViperCorrosiveSkinKey: String = "viper_corrosive_skin"
	internal let kDMDamageInflictorEmberSpiritFlameGuardKey: String = "ember_spirit_flame_guard"
	internal let kDMDamageInflictorNevermoreShadowraze2Key: String = "nevermore_shadowraze2"
	internal let kDMDamageInflictorNevermoreRequiemKey: String = "nevermore_requiem"
	internal let kDMDamageInflictorCrystalMaidenCrystalNovaKey: String = "crystal_maiden_crystal_nova"
	internal let kDMDamageInflictorNullKey: String = "null"
	internal let kDMDamageInflictorVengefulspiritMagicMissileKey: String = "vengefulspirit_magic_missile"
	internal let kDMDamageInflictorViperPoisonAttackKey: String = "viper_poison_attack"
	internal let kDMDamageInflictorEmberSpiritActivateFireRemnantKey: String = "ember_spirit_activate_fire_remnant"
	internal let kDMDamageInflictorNevermoreShadowraze3Key: String = "nevermore_shadowraze3"
	internal let kDMDamageInflictorBfuryKey: String = "bfury"
	internal let kDMDamageInflictorMjollnirKey: String = "mjollnir"
	internal let kDMDamageInflictorBristlebackQuillSprayKey: String = "bristleback_quill_spray"
	internal let kDMDamageInflictorArcWardenFluxKey: String = "arc_warden_flux"
	internal let kDMDamageInflictorAbaddonDeathCoilKey: String = "abaddon_death_coil"
	internal let kDMDamageInflictorCrystalMaidenFrostbiteKey: String = "crystal_maiden_frostbite"
	internal let kDMDamageInflictorArcWardenSparkWraithKey: String = "arc_warden_spark_wraith"
	internal let kDMDamageInflictorNevermoreShadowraze1Key: String = "nevermore_shadowraze1"
	internal let kDMDamageInflictorKunkkaGhostshipKey: String = "kunkka_ghostship"
	internal let kDMDamageInflictorJuggernautOmniSlashKey: String = "juggernaut_omni_slash"
	internal let kDMDamageInflictorCrystalMaidenFreezingFieldKey: String = "crystal_maiden_freezing_field"
	internal let kDMDamageInflictorOrchidKey: String = "orchid"
	internal let kDMDamageInflictorEmberSpiritSearingChainsKey: String = "ember_spirit_searing_chains"
	internal let kDMDamageInflictorKunkkaTorrentKey: String = "kunkka_torrent"
	internal let kDMDamageInflictorKunkkaTidebringerKey: String = "kunkka_tidebringer"
	internal let kDMDamageInflictorViperViperStrikeKey: String = "viper_viper_strike"


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
		maelstrom = json[kDMDamageInflictorMaelstromKey].int
		bloodthorn = json[kDMDamageInflictorBloodthornKey].int
		abaddonAphoticShield = json[kDMDamageInflictorAbaddonAphoticShieldKey].int
		juggernautBladeFury = json[kDMDamageInflictorJuggernautBladeFuryKey].int
		vengefulspiritWaveOfTerror = json[kDMDamageInflictorVengefulspiritWaveOfTerrorKey].int
		viperCorrosiveSkin = json[kDMDamageInflictorViperCorrosiveSkinKey].int
		emberSpiritFlameGuard = json[kDMDamageInflictorEmberSpiritFlameGuardKey].int
		nevermoreShadowraze2 = json[kDMDamageInflictorNevermoreShadowraze2Key].int
		nevermoreRequiem = json[kDMDamageInflictorNevermoreRequiemKey].int
		crystalMaidenCrystalNova = json[kDMDamageInflictorCrystalMaidenCrystalNovaKey].int
		null = json[kDMDamageInflictorNullKey].int
		vengefulspiritMagicMissile = json[kDMDamageInflictorVengefulspiritMagicMissileKey].int
		viperPoisonAttack = json[kDMDamageInflictorViperPoisonAttackKey].int
		emberSpiritActivateFireRemnant = json[kDMDamageInflictorEmberSpiritActivateFireRemnantKey].int
		nevermoreShadowraze3 = json[kDMDamageInflictorNevermoreShadowraze3Key].int
		bfury = json[kDMDamageInflictorBfuryKey].int
		mjollnir = json[kDMDamageInflictorMjollnirKey].int
		bristlebackQuillSpray = json[kDMDamageInflictorBristlebackQuillSprayKey].int
		arcWardenFlux = json[kDMDamageInflictorArcWardenFluxKey].int
		abaddonDeathCoil = json[kDMDamageInflictorAbaddonDeathCoilKey].int
		crystalMaidenFrostbite = json[kDMDamageInflictorCrystalMaidenFrostbiteKey].int
		arcWardenSparkWraith = json[kDMDamageInflictorArcWardenSparkWraithKey].int
		nevermoreShadowraze1 = json[kDMDamageInflictorNevermoreShadowraze1Key].int
		kunkkaGhostship = json[kDMDamageInflictorKunkkaGhostshipKey].int
		juggernautOmniSlash = json[kDMDamageInflictorJuggernautOmniSlashKey].int
		crystalMaidenFreezingField = json[kDMDamageInflictorCrystalMaidenFreezingFieldKey].int
		orchid = json[kDMDamageInflictorOrchidKey].int
		emberSpiritSearingChains = json[kDMDamageInflictorEmberSpiritSearingChainsKey].int
		kunkkaTorrent = json[kDMDamageInflictorKunkkaTorrentKey].int
		kunkkaTidebringer = json[kDMDamageInflictorKunkkaTidebringerKey].int
		viperViperStrike = json[kDMDamageInflictorViperViperStrikeKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if maelstrom != nil {
			dictionary.updateValue(maelstrom!, forKey: kDMDamageInflictorMaelstromKey)
		}
		if bloodthorn != nil {
			dictionary.updateValue(bloodthorn!, forKey: kDMDamageInflictorBloodthornKey)
		}
		if abaddonAphoticShield != nil {
			dictionary.updateValue(abaddonAphoticShield!, forKey: kDMDamageInflictorAbaddonAphoticShieldKey)
		}
		if juggernautBladeFury != nil {
			dictionary.updateValue(juggernautBladeFury!, forKey: kDMDamageInflictorJuggernautBladeFuryKey)
		}
		if vengefulspiritWaveOfTerror != nil {
			dictionary.updateValue(vengefulspiritWaveOfTerror!, forKey: kDMDamageInflictorVengefulspiritWaveOfTerrorKey)
		}
		if viperCorrosiveSkin != nil {
			dictionary.updateValue(viperCorrosiveSkin!, forKey: kDMDamageInflictorViperCorrosiveSkinKey)
		}
		if emberSpiritFlameGuard != nil {
			dictionary.updateValue(emberSpiritFlameGuard!, forKey: kDMDamageInflictorEmberSpiritFlameGuardKey)
		}
		if nevermoreShadowraze2 != nil {
			dictionary.updateValue(nevermoreShadowraze2!, forKey: kDMDamageInflictorNevermoreShadowraze2Key)
		}
		if nevermoreRequiem != nil {
			dictionary.updateValue(nevermoreRequiem!, forKey: kDMDamageInflictorNevermoreRequiemKey)
		}
		if crystalMaidenCrystalNova != nil {
			dictionary.updateValue(crystalMaidenCrystalNova!, forKey: kDMDamageInflictorCrystalMaidenCrystalNovaKey)
		}
		if null != nil {
			dictionary.updateValue(null!, forKey: kDMDamageInflictorNullKey)
		}
		if vengefulspiritMagicMissile != nil {
			dictionary.updateValue(vengefulspiritMagicMissile!, forKey: kDMDamageInflictorVengefulspiritMagicMissileKey)
		}
		if viperPoisonAttack != nil {
			dictionary.updateValue(viperPoisonAttack!, forKey: kDMDamageInflictorViperPoisonAttackKey)
		}
		if emberSpiritActivateFireRemnant != nil {
			dictionary.updateValue(emberSpiritActivateFireRemnant!, forKey: kDMDamageInflictorEmberSpiritActivateFireRemnantKey)
		}
		if nevermoreShadowraze3 != nil {
			dictionary.updateValue(nevermoreShadowraze3!, forKey: kDMDamageInflictorNevermoreShadowraze3Key)
		}
		if bfury != nil {
			dictionary.updateValue(bfury!, forKey: kDMDamageInflictorBfuryKey)
		}
		if mjollnir != nil {
			dictionary.updateValue(mjollnir!, forKey: kDMDamageInflictorMjollnirKey)
		}
		if bristlebackQuillSpray != nil {
			dictionary.updateValue(bristlebackQuillSpray!, forKey: kDMDamageInflictorBristlebackQuillSprayKey)
		}
		if arcWardenFlux != nil {
			dictionary.updateValue(arcWardenFlux!, forKey: kDMDamageInflictorArcWardenFluxKey)
		}
		if abaddonDeathCoil != nil {
			dictionary.updateValue(abaddonDeathCoil!, forKey: kDMDamageInflictorAbaddonDeathCoilKey)
		}
		if crystalMaidenFrostbite != nil {
			dictionary.updateValue(crystalMaidenFrostbite!, forKey: kDMDamageInflictorCrystalMaidenFrostbiteKey)
		}
		if arcWardenSparkWraith != nil {
			dictionary.updateValue(arcWardenSparkWraith!, forKey: kDMDamageInflictorArcWardenSparkWraithKey)
		}
		if nevermoreShadowraze1 != nil {
			dictionary.updateValue(nevermoreShadowraze1!, forKey: kDMDamageInflictorNevermoreShadowraze1Key)
		}
		if kunkkaGhostship != nil {
			dictionary.updateValue(kunkkaGhostship!, forKey: kDMDamageInflictorKunkkaGhostshipKey)
		}
		if juggernautOmniSlash != nil {
			dictionary.updateValue(juggernautOmniSlash!, forKey: kDMDamageInflictorJuggernautOmniSlashKey)
		}
		if crystalMaidenFreezingField != nil {
			dictionary.updateValue(crystalMaidenFreezingField!, forKey: kDMDamageInflictorCrystalMaidenFreezingFieldKey)
		}
		if orchid != nil {
			dictionary.updateValue(orchid!, forKey: kDMDamageInflictorOrchidKey)
		}
		if emberSpiritSearingChains != nil {
			dictionary.updateValue(emberSpiritSearingChains!, forKey: kDMDamageInflictorEmberSpiritSearingChainsKey)
		}
		if kunkkaTorrent != nil {
			dictionary.updateValue(kunkkaTorrent!, forKey: kDMDamageInflictorKunkkaTorrentKey)
		}
		if kunkkaTidebringer != nil {
			dictionary.updateValue(kunkkaTidebringer!, forKey: kDMDamageInflictorKunkkaTidebringerKey)
		}
		if viperViperStrike != nil {
			dictionary.updateValue(viperViperStrike!, forKey: kDMDamageInflictorViperViperStrikeKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.maelstrom = aDecoder.decodeObjectForKey(kDMDamageInflictorMaelstromKey) as? Int
		self.bloodthorn = aDecoder.decodeObjectForKey(kDMDamageInflictorBloodthornKey) as? Int
		self.abaddonAphoticShield = aDecoder.decodeObjectForKey(kDMDamageInflictorAbaddonAphoticShieldKey) as? Int
		self.juggernautBladeFury = aDecoder.decodeObjectForKey(kDMDamageInflictorJuggernautBladeFuryKey) as? Int
		self.vengefulspiritWaveOfTerror = aDecoder.decodeObjectForKey(kDMDamageInflictorVengefulspiritWaveOfTerrorKey) as? Int
		self.viperCorrosiveSkin = aDecoder.decodeObjectForKey(kDMDamageInflictorViperCorrosiveSkinKey) as? Int
		self.emberSpiritFlameGuard = aDecoder.decodeObjectForKey(kDMDamageInflictorEmberSpiritFlameGuardKey) as? Int
		self.nevermoreShadowraze2 = aDecoder.decodeObjectForKey(kDMDamageInflictorNevermoreShadowraze2Key) as? Int
		self.nevermoreRequiem = aDecoder.decodeObjectForKey(kDMDamageInflictorNevermoreRequiemKey) as? Int
		self.crystalMaidenCrystalNova = aDecoder.decodeObjectForKey(kDMDamageInflictorCrystalMaidenCrystalNovaKey) as? Int
		self.null = aDecoder.decodeObjectForKey(kDMDamageInflictorNullKey) as? Int
		self.vengefulspiritMagicMissile = aDecoder.decodeObjectForKey(kDMDamageInflictorVengefulspiritMagicMissileKey) as? Int
		self.viperPoisonAttack = aDecoder.decodeObjectForKey(kDMDamageInflictorViperPoisonAttackKey) as? Int
		self.emberSpiritActivateFireRemnant = aDecoder.decodeObjectForKey(kDMDamageInflictorEmberSpiritActivateFireRemnantKey) as? Int
		self.nevermoreShadowraze3 = aDecoder.decodeObjectForKey(kDMDamageInflictorNevermoreShadowraze3Key) as? Int
		self.bfury = aDecoder.decodeObjectForKey(kDMDamageInflictorBfuryKey) as? Int
		self.mjollnir = aDecoder.decodeObjectForKey(kDMDamageInflictorMjollnirKey) as? Int
		self.bristlebackQuillSpray = aDecoder.decodeObjectForKey(kDMDamageInflictorBristlebackQuillSprayKey) as? Int
		self.arcWardenFlux = aDecoder.decodeObjectForKey(kDMDamageInflictorArcWardenFluxKey) as? Int
		self.abaddonDeathCoil = aDecoder.decodeObjectForKey(kDMDamageInflictorAbaddonDeathCoilKey) as? Int
		self.crystalMaidenFrostbite = aDecoder.decodeObjectForKey(kDMDamageInflictorCrystalMaidenFrostbiteKey) as? Int
		self.arcWardenSparkWraith = aDecoder.decodeObjectForKey(kDMDamageInflictorArcWardenSparkWraithKey) as? Int
		self.nevermoreShadowraze1 = aDecoder.decodeObjectForKey(kDMDamageInflictorNevermoreShadowraze1Key) as? Int
		self.kunkkaGhostship = aDecoder.decodeObjectForKey(kDMDamageInflictorKunkkaGhostshipKey) as? Int
		self.juggernautOmniSlash = aDecoder.decodeObjectForKey(kDMDamageInflictorJuggernautOmniSlashKey) as? Int
		self.crystalMaidenFreezingField = aDecoder.decodeObjectForKey(kDMDamageInflictorCrystalMaidenFreezingFieldKey) as? Int
		self.orchid = aDecoder.decodeObjectForKey(kDMDamageInflictorOrchidKey) as? Int
		self.emberSpiritSearingChains = aDecoder.decodeObjectForKey(kDMDamageInflictorEmberSpiritSearingChainsKey) as? Int
		self.kunkkaTorrent = aDecoder.decodeObjectForKey(kDMDamageInflictorKunkkaTorrentKey) as? Int
		self.kunkkaTidebringer = aDecoder.decodeObjectForKey(kDMDamageInflictorKunkkaTidebringerKey) as? Int
		self.viperViperStrike = aDecoder.decodeObjectForKey(kDMDamageInflictorViperViperStrikeKey) as? Int

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeObject(maelstrom, forKey: kDMDamageInflictorMaelstromKey)
		aCoder.encodeObject(bloodthorn, forKey: kDMDamageInflictorBloodthornKey)
		aCoder.encodeObject(abaddonAphoticShield, forKey: kDMDamageInflictorAbaddonAphoticShieldKey)
		aCoder.encodeObject(juggernautBladeFury, forKey: kDMDamageInflictorJuggernautBladeFuryKey)
		aCoder.encodeObject(vengefulspiritWaveOfTerror, forKey: kDMDamageInflictorVengefulspiritWaveOfTerrorKey)
		aCoder.encodeObject(viperCorrosiveSkin, forKey: kDMDamageInflictorViperCorrosiveSkinKey)
		aCoder.encodeObject(emberSpiritFlameGuard, forKey: kDMDamageInflictorEmberSpiritFlameGuardKey)
		aCoder.encodeObject(nevermoreShadowraze2, forKey: kDMDamageInflictorNevermoreShadowraze2Key)
		aCoder.encodeObject(nevermoreRequiem, forKey: kDMDamageInflictorNevermoreRequiemKey)
		aCoder.encodeObject(crystalMaidenCrystalNova, forKey: kDMDamageInflictorCrystalMaidenCrystalNovaKey)
		aCoder.encodeObject(null, forKey: kDMDamageInflictorNullKey)
		aCoder.encodeObject(vengefulspiritMagicMissile, forKey: kDMDamageInflictorVengefulspiritMagicMissileKey)
		aCoder.encodeObject(viperPoisonAttack, forKey: kDMDamageInflictorViperPoisonAttackKey)
		aCoder.encodeObject(emberSpiritActivateFireRemnant, forKey: kDMDamageInflictorEmberSpiritActivateFireRemnantKey)
		aCoder.encodeObject(nevermoreShadowraze3, forKey: kDMDamageInflictorNevermoreShadowraze3Key)
		aCoder.encodeObject(bfury, forKey: kDMDamageInflictorBfuryKey)
		aCoder.encodeObject(mjollnir, forKey: kDMDamageInflictorMjollnirKey)
		aCoder.encodeObject(bristlebackQuillSpray, forKey: kDMDamageInflictorBristlebackQuillSprayKey)
		aCoder.encodeObject(arcWardenFlux, forKey: kDMDamageInflictorArcWardenFluxKey)
		aCoder.encodeObject(abaddonDeathCoil, forKey: kDMDamageInflictorAbaddonDeathCoilKey)
		aCoder.encodeObject(crystalMaidenFrostbite, forKey: kDMDamageInflictorCrystalMaidenFrostbiteKey)
		aCoder.encodeObject(arcWardenSparkWraith, forKey: kDMDamageInflictorArcWardenSparkWraithKey)
		aCoder.encodeObject(nevermoreShadowraze1, forKey: kDMDamageInflictorNevermoreShadowraze1Key)
		aCoder.encodeObject(kunkkaGhostship, forKey: kDMDamageInflictorKunkkaGhostshipKey)
		aCoder.encodeObject(juggernautOmniSlash, forKey: kDMDamageInflictorJuggernautOmniSlashKey)
		aCoder.encodeObject(crystalMaidenFreezingField, forKey: kDMDamageInflictorCrystalMaidenFreezingFieldKey)
		aCoder.encodeObject(orchid, forKey: kDMDamageInflictorOrchidKey)
		aCoder.encodeObject(emberSpiritSearingChains, forKey: kDMDamageInflictorEmberSpiritSearingChainsKey)
		aCoder.encodeObject(kunkkaTorrent, forKey: kDMDamageInflictorKunkkaTorrentKey)
		aCoder.encodeObject(kunkkaTidebringer, forKey: kDMDamageInflictorKunkkaTidebringerKey)
		aCoder.encodeObject(viperViperStrike, forKey: kDMDamageInflictorViperViperStrikeKey)

    }

}
