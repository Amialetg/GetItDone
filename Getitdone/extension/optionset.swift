//
//  optionset.swift
//  Getitdone
//
//  Created by Albert on 28/10/2018.
//  Copyright © 2018 Albert Mialet Gimenez. All rights reserved.
//

import Foundation

struct ButtonOptions: OptionSet {
    let rawValue: Int
    
    static let roundedText = ButtonOptions(rawValue: 1 << 0)
    static let squareIcon  = ButtonOptions(rawValue: 1 << 1)
}
