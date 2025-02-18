//
//  ContentView.swift
//  ShapSwiftUI
//
//  Created by mostafa Morsy on 18/02/2025.
//

import SwiftUI

struct ContentView: View {
    @State var firstCirculePresentage : Double = 50
    @State var SecondCirculePresentage : Double = 50
    @State var thirdCirculePresentage : Double = 50
    
    var body: some View {
       ZStack{
           //1
           circule(lineWidth: 40, backColor: Color.blue.opacity(0.2), forgroundColor: Color.blue, present: firstCirculePresentage).frame(
            width: 350, height: 350
           ).onTapGesture {
               if self.firstCirculePresentage == 0 {
                   self.firstCirculePresentage = 50
               }else{
                   self.firstCirculePresentage = 0
               }
               
           }
           //2
           circule(lineWidth: 40, backColor: Color.red.opacity(0.2), forgroundColor: Color.red, present: SecondCirculePresentage).frame(
            width: 200, height: 200
           ).onTapGesture {
               if self.SecondCirculePresentage == 0 {
                   self.SecondCirculePresentage = 50
               }else{
                   self.SecondCirculePresentage = 0
               }
               
           }
           //3
          
           circule(lineWidth: 40, backColor: Color.green.opacity(0.2), forgroundColor: Color.green, present: thirdCirculePresentage).frame(
            width: 100, height: 100
           ).onTapGesture {
               if self.thirdCirculePresentage == 0 {
                   self.thirdCirculePresentage = 50
               }else{
                   self.thirdCirculePresentage = 0
               }
               
           }
           
        }
    }
}

#Preview {
    ContentView()
}
