//
//  BankVault.swift
//  Protocols
//
//  Created by Papa Roach on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//


class BankVault {
    
    let name: String
    let address: String
    var amount: Double = 0.0
    
    init(name: String, address: String) {
        self.name = name
        self.address = address
    }
    
}

protocol ProvideAccess {
    
    func allowEntryWithPassword(_ password: [Int]) -> Bool
}

extension BankVault: ProvideAccess {
    
    func allowEntryWithPassword(_ password: [Int]) -> Bool {
        var access: Bool = false
        if password.count <= 10 && password.count > 0 {
            let copyPassword = password
            if copyPassword[0] % 2 == 0 {
                for (index, item) in copyPassword.enumerated() {
                    if index % 2 == 0 && item % 2 == 0 {
                        access = true
                    }
                }
            }
        } else {
            access = false
        }
        return access
    }
    
}


