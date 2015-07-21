//
//  Array2D.swift
//  Swiftris
//
//  Created by vicxia on 7/21/15.
//  Copyright (c) 2015 com.tencent. All rights reserved.
//

import Foundation

class Array2D<T>
{
    let columns: Int
    let rows: Int
    
    var array: Array<T?>
    
    init(columns: Int, rows: Int){
        self.columns = columns
        self.rows = rows
        
        array = Array<T?>(count: rows * columns, repeatedValue: nil)
    }
    
    subscript(row: Int, column: Int) -> T? {
        get {
            return array[row * columns + column]
        }
        set {
            array[row * columns + column] = newValue
        }
    }
}