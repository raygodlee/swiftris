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


class Block: Hashable, Printable {
    let color: BlockColor
    
    var column: Int
    var row: Int
    
    var sprite: SKSpriteNode?
    
    var spriteName: String {
        return color.spriteName
    }
    
    var hashValue: Int {
        return column ^ row
    }
    
    var description: String {
        return "\(color):[\(row), \(column)]"
    }
    
    init(row: Int, column: Int, color: BlockColor) {
        self.row = row
        self.column = column
        self.color = color
    }
    
}

func ==(lhs: Block, rhs: Block) -> Bool
{
    return lhs.row == rhs.row && lhs.column == rhs.column && lhs.color.rawValue == rhs.color.rawValue
}


















