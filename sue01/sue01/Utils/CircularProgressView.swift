//
//  CircularProgressView.swift
//  sue01
//
//  Created by Nicolas Lehner on 24.11.26.
//

import SwiftUI

struct CircularProgressView: View {
    let progress: Double
    let color: Color
    var body: some View {
        ZStack{
            Circle()
                .stroke(color.opacity(0.5), lineWidth: 30)
            Circle()
                        
                            .trim(from: 0, to: progress)
                            .stroke(
                                color,
                                style: StrokeStyle(
                                    lineWidth: 30,
                                    
                                    lineCap: .round
                                )
                            )
                        
                            .rotationEffect(.degrees(-90))
                        
                            .animation(.easeOut, value: progress)
                    }
                }
            }
#Preview {
    CircularProgressView(progress: 0.25, color: .pomodoroGreen)
}
