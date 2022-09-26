//
//  Circular.swift
//  SwiftUIShapeAnimation
//
//  Created by Bedirhan Altun on 26.09.2022.
//

import SwiftUI

struct Circular: View {
    let lineWidth: CGFloat
    let backgroundColor: Color
    let foregroundColor: Color
    let percentage: Double
    
    var body: some View {
        GeometryReader{ geometry in
            ZStack{
                CircularShape()
                    .stroke(style: StrokeStyle(lineWidth: lineWidth))
                    .fill(backgroundColor)
                
                CircularShape(percent: percentage)
                    .stroke(style: StrokeStyle(lineWidth: lineWidth))
                    .fill(foregroundColor)
            }
            .animation(.easeIn(duration: 1.0), value: percentage)
            .padding(lineWidth / 1.5)
            
            
        }
        
    }
}

struct Circular_Previews: PreviewProvider {
    static var previews: some View {
        Circular(lineWidth: 10, backgroundColor: .blue, foregroundColor: .red, percentage: 50)
    }
}
