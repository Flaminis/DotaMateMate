//
//  DMAbilityUses.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class DMAbilityUses: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMAbilityUsesVengefulspiritNetherSwapKey: String = "vengefulspirit_nether_swap"
	internal let kDMAbilityUsesAbaddonAphoticShieldKey: String = "abaddon_aphotic_shield"
	internal let kDMAbilityUsesJuggernautBladeFuryKey: String = "juggernaut_blade_fury"
	internal let kDMAbilityUsesVengefulspiritWaveOfTerrorKey: String = "vengefulspirit_wave_of_terror"
	internal let kDMAbilityUsesEmberSpiritFlameGuardKey: String = "ember_spirit_flame_guard"
	internal let kDMAbilityUsesNevermoreShadowraze2Key: String = "nevermore_shadowraze2"
	internal let kDMAbilityUsesNevermoreRequiemKey: String = "nevermore_requiem"
	internal let kDMAbilityUsesCrystalMaidenCrystalNovaKey: String = "crystal_maiden_crystal_nova"
	internal let kDMAbilityUsesAbaddonBorrowedTimeKey: String = "abaddon_borrowed_time"
	internal let kDMAbilityUsesVengefulspiritMagicMissileKey: String = "vengefulspirit_magic_missile"
	internal let kDMAbilityUsesArcWardenMagneticFieldKey: String = "arc_warden_magnetic_field"
	internal let kDMAbilityUsesEmberSpiritActivateFireRemnantKey: String = "ember_spirit_activate_fire_remnant"
	internal let kDMAbilityUsesArcWardenTempestDoubleKey: String = "arc_warden_tempest_double"
	internal let kDMAbilityUsesNevermoreShadowraze3Key: String = "nevermore_shadowraze3"
	internal let kDMAbilityUsesBristlebackQuillSprayKey: String = "bristleback_quill_spray"
	internal let kDMAbilityUsesArcWardenFluxKey: String = "arc_warden_flux"
	internal let kDMAbilityUsesAbaddonDeathCoilKey: String = "abaddon_death_coil"
	internal let kDMAbilityUsesCrystalMaidenFrostbiteKey: String = "crystal_maiden_frostbite"
	internal let kDMAbilityUsesKunkkaGhostshipKey: String = "kunkka_ghostship"
	internal let kDMAbilityUsesArcWardenSparkWraithKey: String = "arc_warden_spark_wraith"
	internal let kDMAbilityUsesKunkkaReturnKey: String = "kunkka_return"
	internal let kDMAbilityUsesNevermoreShadowraze1Key: String = "nevermore_shadowraze1"
	internal let kDMAbilityUsesKunkkaXMarksTheSpotKey: String = "kunkka_x_marks_the_spot"
	internal let kDMAbilityUsesJuggernautHealingWardKey: String = "juggernaut_healing_ward"
	internal let kDMAbilityUsesJuggernautOmniSlashKey: String = "juggernaut_omni_slash"
	internal let kDMAbilityUsesBristlebackViscousNasalGooKey: String = "bristleback_viscous_nasal_goo"
	internal let kDMAbilityUsesCrystalMaidenFreezingFieldKey: String = "crystal_maiden_freezing_field"
	internal let kDMAbilityUsesEmberSpiritSleightOfFistKey: String = "ember_spirit_sleight_of_fist"
	internal let kDMAbilityUsesEmberSpiritSearingChainsKey: String = "ember_spirit_searing_chains"
	internal let kDMAbilityUsesKunkkaTorrentKey: String = "kunkka_torrent"
	internal let kDMAbilityUsesEmberSpiritFireRemnantKey: String = "ember_spirit_fire_remnant"
	internal let kDMAbilityUsesViperViperStrikeKey: String = "viper_viper_strike"


    // MARK: Properties
	public var vengefulspiritNetherSwap: Int?
	public var abaddonAphoticShield: Int?
	public var juggernautBladeFury: Int?
	public var vengefulspiritWaveOfTerror: Int?
	public var emberSpiritFlameGuard: Int?
	public var nevermoreShadowraze2: Int?
	public var nevermoreRequiem: Int?
	public var crystalMaidenCrystalNova: Int?
	public var abaddonBorrowedTime: Int?
	public var vengefulspiritMagicMissile: Int?
	public var arcWardenMagneticField: Int?
	public var emberSpiritActivateFireRemnant: Int?
	public var arcWardenTempestDouble: Int?
	public var nevermoreShadowraze3: Int?
	public var bristlebackQuillSpray: Int?
	public var arcWardenFlux: Int?
	public var abaddonDeathCoil: Int?
	public var crystalMaidenFrostbite: Int?
	public var kunkkaGhostship: Int?
	public var arcWardenSparkWraith: Int?
	public var kunkkaReturn: Int?
	public var nevermoreShadowraze1: Int?
	public var kunkkaXMarksTheSpot: Int?
	public var juggernautHealingWard: Int?
	public var juggernautOmniSlash: Int?
	public var bristlebackViscousNasalGoo: Int?
	public var crystalMaidenFreezingField: Int?
	public var emberSpiritSleightOfFist: Int?
	public var emberSpiritSearingChains: Int?
	public var kunkkaTorrent: Int?
	public var emberSpiritFireRemnant: Int?
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
		vengefulspiritNetherSwap = json[kDMAbilityUsesVengefulspiritNetherSwapKey].int
		abaddonAphoticShield = json[kDMAbilityUsesAbaddonAphoticShieldKey].int
		juggernautBladeFury = json[kDMAbilityUsesJuggernautBladeFuryKey].int
		vengefulspiritWaveOfTerror = json[kDMAbilityUsesVengefulspiritWaveOfTerrorKey].int
		emberSpiritFlameGuard = json[kDMAbilityUsesEmberSpiritFlameGuardKey].int
		nevermoreShadowraze2 = json[kDMAbilityUsesNevermoreShadowraze2Key].int
		nevermoreRequiem = json[kDMAbilityUsesNevermoreRequiemKey].int
		crystalMaidenCrystalNova = json[kDMAbilityUsesCrystalMaidenCrystalNovaKey].int
		abaddonBorrowedTime = json[kDMAbilityUsesAbaddonBorrowedTimeKey].int
		vengefulspiritMagicMissile = json[kDMAbilityUsesVengefulspiritMagicMissileKey].int
		arcWardenMagneticField = json[kDMAbilityUsesArcWardenMagneticFieldKey].int
		emberSpiritActivateFireRemnant = json[kDMAbilityUsesEmberSpiritActivateFireRemnantKey].int
		arcWardenTempestDouble = json[kDMAbilityUsesArcWardenTempestDoubleKey].int
		nevermoreShadowraze3 = json[kDMAbilityUsesNevermoreShadowraze3Key].int
		bristlebackQuillSpray = json[kDMAbilityUsesBristlebackQuillSprayKey].int
		arcWardenFlux = json[kDMAbilityUsesArcWardenFluxKey].int
		abaddonDeathCoil = json[kDMAbilityUsesAbaddonDeathCoilKey].int
		crystalMaidenFrostbite = json[kDMAbilityUsesCrystalMaidenFrostbiteKey].int
		kunkkaGhostship = json[kDMAbilityUsesKunkkaGhostshipKey].int
		arcWardenSparkWraith = json[kDMAbilityUsesArcWardenSparkWraithKey].int
		kunkkaReturn = json[kDMAbilityUsesKunkkaReturnKey].int
		nevermoreShadowraze1 = json[kDMAbilityUsesNevermoreShadowraze1Key].int
		kunkkaXMarksTheSpot = json[kDMAbilityUsesKunkkaXMarksTheSpotKey].int
		juggernautHealingWard = json[kDMAbilityUsesJuggernautHealingWardKey].int
		juggernautOmniSlash = json[kDMAbilityUsesJuggernautOmniSlashKey].int
		bristlebackViscousNasalGoo = json[kDMAbilityUsesBristlebackViscousNasalGooKey].int
		crystalMaidenFreezingField = json[kDMAbilityUsesCrystalMaidenFreezingFieldKey].int
		emberSpiritSleightOfFist = json[kDMAbilityUsesEmberSpiritSleightOfFistKey].int
		emberSpiritSearingChains = json[kDMAbilityUsesEmberSpiritSearingChainsKey].int
		kunkkaTorrent = json[kDMAbilityUsesKunkkaTorrentKey].int
		emberSpiritFireRemnant = json[kDMAbilityUsesEmberSpiritFireRemnantKey].int
		viperViperStrike = json[kDMAbilityUsesViperViperStrikeKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if vengefulspiritNetherSwap != nil {
			dictionary.updateValue(vengefulspiritNetherSwap!, forKey: kDMAbilityUsesVengefulspiritNetherSwapKey)
		}
		if abaddonAphoticShield != nil {
			dictionary.updateValue(abaddonAphoticShield!, forKey: kDMAbilityUsesAbaddonAphoticShieldKey)
		}
		if juggernautBladeFury != nil {
			dictionary.updateValue(juggernautBladeFury!, forKey: kDMAbilityUsesJuggernautBladeFuryKey)
		}
		if vengefulspiritWaveOfTerror != nil {
			dictionary.updateValue(vengefulspiritWaveOfTerror!, forKey: kDMAbilityUsesVengefulspiritWaveOfTerrorKey)
		}
		if emberSpiritFlameGuard != nil {
			dictionary.updateValue(emberSpiritFlameGuard!, forKey: kDMAbilityUsesEmberSpiritFlameGuardKey)
		}
		if nevermoreShadowraze2 != nil {
			dictionary.updateValue(nevermoreShadowraze2!, forKey: kDMAbilityUsesNevermoreShadowraze2Key)
		}
		if nevermoreRequiem != nil {
			dictionary.updateValue(nevermoreRequiem!, forKey: kDMAbilityUsesNevermoreRequiemKey)
		}
		if crystalMaidenCrystalNova != nil {
			dictionary.updateValue(crystalMaidenCrystalNova!, forKey: kDMAbilityUsesCrystalMaidenCrystalNovaKey)
		}
		if abaddonBorrowedTime != nil {
			dictionary.updateValue(abaddonBorrowedTime!, forKey: kDMAbilityUsesAbaddonBorrowedTimeKey)
		}
		if vengefulspiritMagicMissile != nil {
			dictionary.updateValue(vengefulspiritMagicMissile!, forKey: kDMAbilityUsesVengefulspiritMagicMissileKey)
		}
		if arcWardenMagneticField != nil {
			dictionary.updateValue(arcWardenMagneticField!, forKey: kDMAbilityUsesArcWardenMagneticFieldKey)
		}
		if emberSpiritActivateFireRemnant != nil {
			dictionary.updateValue(emberSpiritActivateFireRemnant!, forKey: kDMAbilityUsesEmberSpiritActivateFireRemnantKey)
		}
		if arcWardenTempestDouble != nil {
			dictionary.updateValue(arcWardenTempestDouble!, forKey: kDMAbilityUsesArcWardenTempestDoubleKey)
		}
		if nevermoreShadowraze3 != nil {
			dictionary.updateValue(nevermoreShadowraze3!, forKey: kDMAbilityUsesNevermoreShadowraze3Key)
		}
		if bristlebackQuillSpray != nil {
			dictionary.updateValue(bristlebackQuillSpray!, forKey: kDMAbilityUsesBristlebackQuillSprayKey)
		}
		if arcWardenFlux != nil {
			dictionary.updateValue(arcWardenFlux!, forKey: kDMAbilityUsesArcWardenFluxKey)
		}
		if abaddonDeathCoil != nil {
			dictionary.updateValue(abaddonDeathCoil!, forKey: kDMAbilityUsesAbaddonDeathCoilKey)
		}
		if crystalMaidenFrostbite != nil {
			dictionary.updateValue(crystalMaidenFrostbite!, forKey: kDMAbilityUsesCrystalMaidenFrostbiteKey)
		}
		if kunkkaGhostship != nil {
			dictionary.updateValue(kunkkaGhostship!, forKey: kDMAbilityUsesKunkkaGhostshipKey)
		}
		if arcWardenSparkWraith != nil {
			dictionary.updateValue(arcWardenSparkWraith!, forKey: kDMAbilityUsesArcWardenSparkWraithKey)
		}
		if kunkkaReturn != nil {
			dictionary.updateValue(kunkkaReturn!, forKey: kDMAbilityUsesKunkkaReturnKey)
		}
		if nevermoreShadowraze1 != nil {
			dictionary.updateValue(nevermoreShadowraze1!, forKey: kDMAbilityUsesNevermoreShadowraze1Key)
		}
		if kunkkaXMarksTheSpot != nil {
			dictionary.updateValue(kunkkaXMarksTheSpot!, forKey: kDMAbilityUsesKunkkaXMarksTheSpotKey)
		}
		if juggernautHealingWard != nil {
			dictionary.updateValue(juggernautHealingWard!, forKey: kDMAbilityUsesJuggernautHealingWardKey)
		}
		if juggernautOmniSlash != nil {
			dictionary.updateValue(juggernautOmniSlash!, forKey: kDMAbilityUsesJuggernautOmniSlashKey)
		}
		if bristlebackViscousNasalGoo != nil {
			dictionary.updateValue(bristlebackViscousNasalGoo!, forKey: kDMAbilityUsesBristlebackViscousNasalGooKey)
		}
		if crystalMaidenFreezingField != nil {
			dictionary.updateValue(crystalMaidenFreezingField!, forKey: kDMAbilityUsesCrystalMaidenFreezingFieldKey)
		}
		if emberSpiritSleightOfFist != nil {
			dictionary.updateValue(emberSpiritSleightOfFist!, forKey: kDMAbilityUsesEmberSpiritSleightOfFistKey)
		}
		if emberSpiritSearingChains != nil {
			dictionary.updateValue(emberSpiritSearingChains!, forKey: kDMAbilityUsesEmberSpiritSearingChainsKey)
		}
		if kunkkaTorrent != nil {
			dictionary.updateValue(kunkkaTorrent!, forKey: kDMAbilityUsesKunkkaTorrentKey)
		}
		if emberSpiritFireRemnant != nil {
			dictionary.updateValue(emberSpiritFireRemnant!, forKey: kDMAbilityUsesEmberSpiritFireRemnantKey)
		}
		if viperViperStrike != nil {
			dictionary.updateValue(viperViperStrike!, forKey: kDMAbilityUsesViperViperStrikeKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.vengefulspiritNetherSwap = aDecoder.decodeObjectForKey(kDMAbilityUsesVengefulspiritNetherSwapKey) as? Int
		self.abaddonAphoticShield = aDecoder.decodeObjectForKey(kDMAbilityUsesAbaddonAphoticShieldKey) as? Int
		self.juggernautBladeFury = aDecoder.decodeObjectForKey(kDMAbilityUsesJuggernautBladeFuryKey) as? Int
		self.vengefulspiritWaveOfTerror = aDecoder.decodeObjectForKey(kDMAbilityUsesVengefulspiritWaveOfTerrorKey) as? Int
		self.emberSpiritFlameGuard = aDecoder.decodeObjectForKey(kDMAbilityUsesEmberSpiritFlameGuardKey) as? Int
		self.nevermoreShadowraze2 = aDecoder.decodeObjectForKey(kDMAbilityUsesNevermoreShadowraze2Key) as? Int
		self.nevermoreRequiem = aDecoder.decodeObjectForKey(kDMAbilityUsesNevermoreRequiemKey) as? Int
		self.crystalMaidenCrystalNova = aDecoder.decodeObjectForKey(kDMAbilityUsesCrystalMaidenCrystalNovaKey) as? Int
		self.abaddonBorrowedTime = aDecoder.decodeObjectForKey(kDMAbilityUsesAbaddonBorrowedTimeKey) as? Int
		self.vengefulspiritMagicMissile = aDecoder.decodeObjectForKey(kDMAbilityUsesVengefulspiritMagicMissileKey) as? Int
		self.arcWardenMagneticField = aDecoder.decodeObjectForKey(kDMAbilityUsesArcWardenMagneticFieldKey) as? Int
		self.emberSpiritActivateFireRemnant = aDecoder.decodeObjectForKey(kDMAbilityUsesEmberSpiritActivateFireRemnantKey) as? Int
		self.arcWardenTempestDouble = aDecoder.decodeObjectForKey(kDMAbilityUsesArcWardenTempestDoubleKey) as? Int
		self.nevermoreShadowraze3 = aDecoder.decodeObjectForKey(kDMAbilityUsesNevermoreShadowraze3Key) as? Int
		self.bristlebackQuillSpray = aDecoder.decodeObjectForKey(kDMAbilityUsesBristlebackQuillSprayKey) as? Int
		self.arcWardenFlux = aDecoder.decodeObjectForKey(kDMAbilityUsesArcWardenFluxKey) as? Int
		self.abaddonDeathCoil = aDecoder.decodeObjectForKey(kDMAbilityUsesAbaddonDeathCoilKey) as? Int
		self.crystalMaidenFrostbite = aDecoder.decodeObjectForKey(kDMAbilityUsesCrystalMaidenFrostbiteKey) as? Int
		self.kunkkaGhostship = aDecoder.decodeObjectForKey(kDMAbilityUsesKunkkaGhostshipKey) as? Int
		self.arcWardenSparkWraith = aDecoder.decodeObjectForKey(kDMAbilityUsesArcWardenSparkWraithKey) as? Int
		self.kunkkaReturn = aDecoder.decodeObjectForKey(kDMAbilityUsesKunkkaReturnKey) as? Int
		self.nevermoreShadowraze1 = aDecoder.decodeObjectForKey(kDMAbilityUsesNevermoreShadowraze1Key) as? Int
		self.kunkkaXMarksTheSpot = aDecoder.decodeObjectForKey(kDMAbilityUsesKunkkaXMarksTheSpotKey) as? Int
		self.juggernautHealingWard = aDecoder.decodeObjectForKey(kDMAbilityUsesJuggernautHealingWardKey) as? Int
		self.juggernautOmniSlash = aDecoder.decodeObjectForKey(kDMAbilityUsesJuggernautOmniSlashKey) as? Int
		self.bristlebackViscousNasalGoo = aDecoder.decodeObjectForKey(kDMAbilityUsesBristlebackViscousNasalGooKey) as? Int
		self.crystalMaidenFreezingField = aDecoder.decodeObjectForKey(kDMAbilityUsesCrystalMaidenFreezingFieldKey) as? Int
		self.emberSpiritSleightOfFist = aDecoder.decodeObjectForKey(kDMAbilityUsesEmberSpiritSleightOfFistKey) as? Int
		self.emberSpiritSearingChains = aDecoder.decodeObjectForKey(kDMAbilityUsesEmberSpiritSearingChainsKey) as? Int
		self.kunkkaTorrent = aDecoder.decodeObjectForKey(kDMAbilityUsesKunkkaTorrentKey) as? Int
		self.emberSpiritFireRemnant = aDecoder.decodeObjectForKey(kDMAbilityUsesEmberSpiritFireRemnantKey) as? Int
		self.viperViperStrike = aDecoder.decodeObjectForKey(kDMAbilityUsesViperViperStrikeKey) as? Int

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeObject(vengefulspiritNetherSwap, forKey: kDMAbilityUsesVengefulspiritNetherSwapKey)
		aCoder.encodeObject(abaddonAphoticShield, forKey: kDMAbilityUsesAbaddonAphoticShieldKey)
		aCoder.encodeObject(juggernautBladeFury, forKey: kDMAbilityUsesJuggernautBladeFuryKey)
		aCoder.encodeObject(vengefulspiritWaveOfTerror, forKey: kDMAbilityUsesVengefulspiritWaveOfTerrorKey)
		aCoder.encodeObject(emberSpiritFlameGuard, forKey: kDMAbilityUsesEmberSpiritFlameGuardKey)
		aCoder.encodeObject(nevermoreShadowraze2, forKey: kDMAbilityUsesNevermoreShadowraze2Key)
		aCoder.encodeObject(nevermoreRequiem, forKey: kDMAbilityUsesNevermoreRequiemKey)
		aCoder.encodeObject(crystalMaidenCrystalNova, forKey: kDMAbilityUsesCrystalMaidenCrystalNovaKey)
		aCoder.encodeObject(abaddonBorrowedTime, forKey: kDMAbilityUsesAbaddonBorrowedTimeKey)
		aCoder.encodeObject(vengefulspiritMagicMissile, forKey: kDMAbilityUsesVengefulspiritMagicMissileKey)
		aCoder.encodeObject(arcWardenMagneticField, forKey: kDMAbilityUsesArcWardenMagneticFieldKey)
		aCoder.encodeObject(emberSpiritActivateFireRemnant, forKey: kDMAbilityUsesEmberSpiritActivateFireRemnantKey)
		aCoder.encodeObject(arcWardenTempestDouble, forKey: kDMAbilityUsesArcWardenTempestDoubleKey)
		aCoder.encodeObject(nevermoreShadowraze3, forKey: kDMAbilityUsesNevermoreShadowraze3Key)
		aCoder.encodeObject(bristlebackQuillSpray, forKey: kDMAbilityUsesBristlebackQuillSprayKey)
		aCoder.encodeObject(arcWardenFlux, forKey: kDMAbilityUsesArcWardenFluxKey)
		aCoder.encodeObject(abaddonDeathCoil, forKey: kDMAbilityUsesAbaddonDeathCoilKey)
		aCoder.encodeObject(crystalMaidenFrostbite, forKey: kDMAbilityUsesCrystalMaidenFrostbiteKey)
		aCoder.encodeObject(kunkkaGhostship, forKey: kDMAbilityUsesKunkkaGhostshipKey)
		aCoder.encodeObject(arcWardenSparkWraith, forKey: kDMAbilityUsesArcWardenSparkWraithKey)
		aCoder.encodeObject(kunkkaReturn, forKey: kDMAbilityUsesKunkkaReturnKey)
		aCoder.encodeObject(nevermoreShadowraze1, forKey: kDMAbilityUsesNevermoreShadowraze1Key)
		aCoder.encodeObject(kunkkaXMarksTheSpot, forKey: kDMAbilityUsesKunkkaXMarksTheSpotKey)
		aCoder.encodeObject(juggernautHealingWard, forKey: kDMAbilityUsesJuggernautHealingWardKey)
		aCoder.encodeObject(juggernautOmniSlash, forKey: kDMAbilityUsesJuggernautOmniSlashKey)
		aCoder.encodeObject(bristlebackViscousNasalGoo, forKey: kDMAbilityUsesBristlebackViscousNasalGooKey)
		aCoder.encodeObject(crystalMaidenFreezingField, forKey: kDMAbilityUsesCrystalMaidenFreezingFieldKey)
		aCoder.encodeObject(emberSpiritSleightOfFist, forKey: kDMAbilityUsesEmberSpiritSleightOfFistKey)
		aCoder.encodeObject(emberSpiritSearingChains, forKey: kDMAbilityUsesEmberSpiritSearingChainsKey)
		aCoder.encodeObject(kunkkaTorrent, forKey: kDMAbilityUsesKunkkaTorrentKey)
		aCoder.encodeObject(emberSpiritFireRemnant, forKey: kDMAbilityUsesEmberSpiritFireRemnantKey)
		aCoder.encodeObject(viperViperStrike, forKey: kDMAbilityUsesViperViperStrikeKey)

    }

}
