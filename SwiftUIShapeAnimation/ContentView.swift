//
//  ContentView.swift
//  SwiftUIShapeAnimation
//
//  Created by Bedirhan Altun on 26.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var firstCirclePercentage: Double = 0
    @State var secondCirclePercentage: Double = 0
    @State var thirdCirclePercentage: Double = 0
    @State var fourthCirclePercentage: Double = 0
    
    var body: some View {
        ZStack{
            
            Circular(lineWidth: 40, backgroundColor: Color.orange.opacity(0.3), foregroundColor: .orange, percentage: fourthCirclePercentage)
                .frame(width: 450, height: 450)
                .onTapGesture {
                    if self.fourthCirclePercentage == 0{
                        self.fourthCirclePercentage = 80
                    }
                    else{
                        self.fourthCirclePercentage = 0
                    }
                }.padding()
            
            
            Circular(lineWidth: 40, backgroundColor: Color.cyan.opacity(0.3), foregroundColor: .cyan, percentage: firstCirclePercentage)
                .frame(width: 350, height: 350)
                .onTapGesture {
                    if self.firstCirclePercentage == 0{
                        self.firstCirclePercentage = 70
                    }
                    else{
                        self.firstCirclePercentage = 0
                    }
                }
            
            Circular(lineWidth: 40, backgroundColor: Color.green.opacity(0.3), foregroundColor: .green, percentage: secondCirclePercentage)
                .frame(width: 250, height: 250)
                .onTapGesture {
                    if self.secondCirclePercentage == 0{
                        self.secondCirclePercentage = 60
                    }
                    else{
                        self.secondCirclePercentage = 0
                    }
                }
            
            Circular(lineWidth: 40, backgroundColor: Color.yellow.opacity(0.3), foregroundColor: .yellow, percentage: thirdCirclePercentage)
                .frame(width: 150, height: 150)
                .onTapGesture {
                    if self.thirdCirclePercentage == 0{
                        self.thirdCirclePercentage = 50
                    }
                    else{
                        self.thirdCirclePercentage = 0
                    }
                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
