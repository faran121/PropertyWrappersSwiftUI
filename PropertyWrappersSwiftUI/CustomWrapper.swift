//
//  CustomWrapper.swift
//  PropertyWrappersSwiftUI
//
//  Created by Maliks on 15/08/2023.
//

import Foundation

@propertyWrapper
struct UserDefault<Value> {
    let key: String
    let defualtValue: Value
    let container: UserDefaults = .standard
    
    var wrappedValue: Value {
        get {
            container.object(forKey: key) as? Value ?? defualtValue
        }
        set {
            container.set(newValue, forKey: key)
        }
    }
}

extension UserDefaults {
    public enum keys {
        static let hasOnboarded = "hasOnboarded"
    }
    
    @UserDefault(key: UserDefaults.keys.hasOnboarded, defualtValue: false)
    static var hasOnboarded: Bool
}

func shouldShowOnboardingUI() {
    if UserDefaults.hasOnboarded {
        
    }
}
