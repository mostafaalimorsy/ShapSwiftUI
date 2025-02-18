//
//  circule.swift
//  ShapSwiftUI
//
//  Created by mostafa Morsy on 18/02/2025.
//

import SwiftUI

struct circule: View {
    
    let lineWidth: CGFloat
    let backColor: Color
    let forgroundColor: Color
    let present : Double
    
    
    
    var body: some View {
        
        GeometryReader{ geometry in
            ZStack{
                Shap().stroke( style: StrokeStyle(lineWidth: lineWidth)).fill(backColor)
                
                Shap(present: present).stroke( style: StrokeStyle(lineWidth: lineWidth)).fill(forgroundColor)
                
           
            }.animation(.easeInOut(duration: 1.0), value: present).padding(lineWidth/1.5)
        }
        
      
    }
}

#Preview {
    circule(lineWidth: 10, backColor: .red, forgroundColor: .green, present: 50)
}
