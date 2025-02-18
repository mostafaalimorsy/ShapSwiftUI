//
//  Shap.swift
//  ShapSwiftUI
//
//  Created by mostafa Morsy on 18/02/2025.
//

import SwiftUI
import Foundation

struct Shap: Shape {
    
    
    
    var present : Double
    var startAngle : Double
    
    typealias AnimatableData = Double
    var animatableData: Double{
        
        get {
            return present
        }
        set {
            present = newValue
        }
    }
    
    init(present : Double = 100, startAngle : Double = -90) {
        self.present = present
        self.startAngle = startAngle
    }
    
    func path(in rect: CGRect) -> Path {
        
        let width = rect.width
        let height = rect.height
        let radius : CGFloat = min(width, height) / 2
        let center = CGPoint(x: width / 2, y: height / 2)
        let endAngle = ( self.present / 100 * 360 ) + self.startAngle
        
        
        return Path{
        path in
            path.addArc(center: center, radius: radius, startAngle: Angle(degrees: startAngle), endAngle: Angle(degrees: endAngle), clockwise: false)
        }
    }
    
}

