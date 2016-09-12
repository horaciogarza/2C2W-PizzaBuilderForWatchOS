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
    
    var sizeActivate = false, breadActivate = false, cheeseActivate = false, ingredientsActivate = false
    
    var tamaño:String?
    var masa:String?
    var queso:String?
    var ingredientes:NSMutableDictionary = ["jamon": false, "pepperoni": false, "pavo": false, "salchicha": false, "aceituna": false, "cebolla": false, "pimiento": false, "piña": false,   "anchoa": false]
    var horaDeLlegada:NSDate!
    
    
    
    init(){
        
        self.tamaño = ""
        self.masa = ""
        self.queso = ""
        self.horaDeLlegada = NSDate()
    }
    
}
