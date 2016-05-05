//
//  File.swift
//  PizzaWatchOS
//
//  Created by Horacio Garza on 04/05/16.
//  Copyright © 2016 Horacio Garza. All rights reserved.
//

import Foundation

class Pizza{
    
    static let sharedPizza = Pizza()
    
    var tamaño:String?
    var masa:String?
    var queso:String?
    var ingredientes:String?
    var horaDeLlegada:NSDate?
    
    init(){
        
        self.tamaño = ""
        self.masa = ""
        self.queso = ""
        self.ingredientes = ""
        self.horaDeLlegada = NSDate()
    }
    
}
