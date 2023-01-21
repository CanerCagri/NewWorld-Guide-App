//
//  Constants.swift
//  NewWorld-Guide-App
//
//  Created by Caner Çağrı on 26.09.2022.
//

import UIKit

enum Constants {
    static let heightForDevice: CGFloat = DeviceTypes.isiPhoneSE || DeviceTypes.isiPhone8PlusZoomed || DeviceTypes.isiPhone8Standard || DeviceTypes.isiPhone8Zoomed || DeviceTypes.isiPhone8PlusStandard ? 150 : -100
    static let perkPlaceHolder = "Search with Perk name"
    static let gemPlaceHolder = "Search with Gem name"
    static let dungeonPlaceHolder = "Search with Dungeon name"
    static let weaponPlaceHolder = "Search with Weapon name"
    static let mainRightTopButtonImageName = "questionmark.bubble.fill"
    static let mainRightTopButtonUrl = "https://www.newworld.com/en-us/"
}

enum titles {
    static let guide = "New World Guide"
    static let weapons = "Weapons"
    static let dungeons = "Dungeons"
    static let perks = "Perks"
    static let gems = "Gems"
}

enum reuseID {
    static let weaponCollectionViewCell = "WeaponsCell"
    static let dungeonsTableViewCell = "DungeonsCell"
    static let perksTableViewCell = "PerksCell"
    static let gemsCollectionViewCell = "GemsCell"
}

enum ScreenSize {
    static let width        = UIScreen.main.bounds.size.width
    static let height       = UIScreen.main.bounds.size.height
    static let maxLength    = max(ScreenSize.width, ScreenSize.height)
    static let minLength    = min(ScreenSize.width, ScreenSize.height)
}

enum DeviceTypes {
    static let idiom                    = UIDevice.current.userInterfaceIdiom
    static let nativeScale              = UIScreen.main.nativeScale
    static let scale                    = UIScreen.main.scale
    
    static let isiPhoneSE               = idiom == .phone && ScreenSize.maxLength == 568.0
    static let isiPhone8Standard        = idiom == .phone && ScreenSize.maxLength == 667.0 && nativeScale == scale
    static let isiPhone8Zoomed          = idiom == .phone && ScreenSize.maxLength == 667.0 && nativeScale > scale
    static let isiPhone8PlusStandard    = idiom == .phone && ScreenSize.maxLength == 736.0
    static let isiPhone8PlusZoomed      = idiom == .phone && ScreenSize.maxLength == 736.0 && nativeScale < scale
    static let isiPhoneX                = idiom == .phone && ScreenSize.maxLength == 812.0
    static let isiPhoneXsMaxAndXr       = idiom == .phone && ScreenSize.maxLength == 896.0
    static let isiPad                   = idiom == .pad && ScreenSize.maxLength >= 1024.0
    
    static func isiPhoneXAspectRatio() -> Bool {
        return isiPhoneX || isiPhoneXsMaxAndXr
    }
}
