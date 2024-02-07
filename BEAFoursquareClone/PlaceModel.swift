//
//  PlaceModel.swift
//  BEAFoursquareClone
//
//  Created by Berkay Emre Aslan on 4.02.2024.
//

import Foundation
import UIKit

class PlaceModel{
    
    static let sharedInstance = PlaceModel()
    
    var placeName = ""
    var placeType = ""
    var description = ""
    var placeImage = UIImage()
    var placeLatitude = ""
    var placeLongitude = ""
    
    private init(){}
}
