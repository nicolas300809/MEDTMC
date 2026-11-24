//
//  AchievementRow.swift
//  sue01
//
//  Created by Nicolas Lehner on 13.10.26.
//

import SwiftUI

struct AchievementRow: View {
    let achievement: Achievement
    
    var body: some View {
            ZStack {
                HStack{
                    Image(achievement.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width / 3)
                    Text(achievement.title)
                        .fontWeight(.bold)
                        .font(.title)
                    Spacer()
                }
            }.frame(width: UIScreen.main.bounds.width-50)
                .frame(height: 200)
                .background(Color.white.opacity(0.2).cornerRadius(25)
                    .rotation3DEffect(.init(degrees: 20), axis: (x:0, y:-1, z:0))
                    .padding(.vertical, 20)
                    .padding(.trailing, 25))
                .padding(.horizontal)
        }
    }

#Preview {
    AchievementRow(achievement: achievements[0])
}
