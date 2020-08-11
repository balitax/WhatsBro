//
//  Country.swift
//  WhatsBro (iOS)
//
//  Created by Agus Cahyono on 11/08/20.
//

import Foundation

public class Country: Identifiable {
    
    
    public var id = UUID()
    public var countryCode: String
    public var phoneExtension: String
    
    public var name: String {
        let current = Locale(identifier: "en_US")
        return current.localizedString(forRegionCode: countryCode) ?? ""
    }
    
    public var flag: String? {
        return flag(country: countryCode)
    }
    
    init(countryCode: String, phoneExtension: String) {
        self.countryCode = countryCode
        self.phoneExtension = phoneExtension
    }
    
    private func flag(country:String) -> String {
        let base : UInt32 = 127397
        var s = ""
        for v in country.unicodeScalars {
            s.unicodeScalars.append(UnicodeScalar(base + v.value)!)
        }
        return String(s)
    }
    
}
