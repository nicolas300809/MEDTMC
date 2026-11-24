//
//  AchievementList.swift
//  sue01
//
//  Created by Nicolas Lehner on 13.10.26.
//

import SwiftUI

struct AchievementList: View {
    var body: some View {
        NavigationView{
            ZStack {
                List(achievements) { achievement in
                    NavigationLink {
                        AchievementDetailView(achievement: achievement)
                    } label: {
                        AchievementRow(achievement: achievement)
                    }.listRowBackground(Color.clear)
                        .listRowSeparator(.hidden)
                    
                }
            }.scrollContentBackground(.hidden)
                .background(LinearGradient(gradient: .init(colors:
                                                            [Color(.pomodoroGreen), Color(.white)]),
                                           startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all))
        }
    }
}

#Preview {
    AchievementList()
}
