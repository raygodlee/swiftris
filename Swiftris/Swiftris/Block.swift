//
//  Block.swift
//  Swiftris
//
//  Created by vicxia on 7/21/15.
//  Copyright (c) 2015 com.tencent. All rights reserved.
//

import Foundation
import SpriteKit

let NumberOfColors: UInt32 = 6

enum BlockColor: Int, Printable {
    case Blue = 0, Orange, Purple, Red, Teal, Yellow
    
    var spriteName: String {
        switch self {
        case .Blue:
            return "blue"
        case .Orange:
            return "orange"
        case .Purple:
            return "purple"
        case .Red:
            return "red"
        case .Teal:
            return "teal"
        case .Yellow:
            return "yellow"
        }
    }
    
    var description: String {
        return self.spriteName
    }
    
    static func random() -> BlockColor {
        return BlockColor(rawValue: Int(arc4random_uniform(NumberOfColors)))!
    }
}