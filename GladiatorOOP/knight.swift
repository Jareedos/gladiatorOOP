//
//  knight.swift
//  GladiatorOOP
//
//  Created by Jared Sobol on 4/16/16.
//  Copyright © 2016 Appmaker. All rights reserved.
//

import Foundation


class Knight: Player {
    convenience init(name: String, hp: Int){
        self.init(startingHp: hp,name: name)
    }
    
}