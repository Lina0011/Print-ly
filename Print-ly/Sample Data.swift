//
//  Sample Data.swift
//  Print-ly
//
//  Created by Maryam Aloudah on 19/09/2022.
//

import Foundation
import SwiftUI

// sample sizes to size (details)

var sizes = ["٤","٦.٥","١٢","١٦"]
//the choices names
var types = ["كرتون","بلاستيك","ورق"]
//this will display as list of packages
var package = [
    
    
    type(id: 0,rows: [row(id:0,name: "كوب ورق", price: 250, image: "cup1", PackNo: "٣٠٠ قطعة"),row(id:1,name: "كوب بلاستيك", price: 250, image: "plastic-cup", PackNo: "٣٠٠ قطعة")]),
    
    type(id: 2,rows: [row(id:0,name: "بوكس حلى", price: 250, image: "box-2", PackNo: "٣٠٠ قطعة"),row(id:1,name: "بوكس شحن", price: 250, image: "black-box-1" , PackNo: "٣٠٠ قطعة")]) ,
    
    type(id: 4,rows: [row(id:0,name: "بوكس برقر", price: 250, image: "boxbir", PackNo: "٣٠٠ قطعة"),row(id:1,name: "بوكس كيك", price: 250, image: "sweetbox", PackNo: "٣٠٠ قطعة")])
   
]


struct rounded : Shape {
    
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft,.topRight], cornerRadii: CGSize(width: 35, height: 35))
        
        return Path(path.cgPath)
    }
}
struct type : Identifiable{
    
    var id : Int
    var rows : [row]
}

struct row : Identifiable {
    
    var id : Int
    var name : String
    var price : Int
    var image : String
    var PackNo : String
    
}
