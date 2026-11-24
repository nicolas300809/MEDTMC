//
//  InfoView.swift
//  sue01
//
//  Created by Nicolas Lehner on 29.09.26.
//

import SwiftUI

struct InfoView: View {
    
    let description = "The Pomodoro Technique, developed by Francesco Cirillo in the late 1980s, is a time management method. It breaks work into intervals, usually 25 minutes long, separated by short breaks. Each time interval is called a “Pomodoro” (Italian for “tomato”), named after the tomato-shaped kitchen timer Cirillo used in college. After completing 4 Pomodoros, take a longer break of around 15–30 minutes."
    
    var body: some View {
        ScrollView{
            VStack(spacing:0) {
                HStack {
                    Image("Logo")
                        .resizable()
                        .scaledToFit()
                        .padding([.leading, .trailing], 50)
                        .padding(.top, 60)
                }.padding(.bottom, 100)
                    .background(.pomodoroGreen.opacity(0.3))
                    .clipShape(Corners(corner: [.bottomRight], size: CGSize(width: 55, height: 55)))
                
                HStack{
                    VStack{
                        HStack{
                            VStack(alignment: .leading, spacing: 15){
                                Text("The Pomodoro Technique")
                                    .font(.title)
                                    .fontWeight(.bold)
                                Text("Your way \nto productivity")
                                    .font(.system(size: 20))
                            }.foregroundColor(.white)
                            Spacer()
                        }.padding(.leading, 40)
                            .padding(.top, 80)
                    }.padding(.bottom, 30)
                        .frame(width: UIScreen.main.bounds.width*0.8)
                        .background(.pomodoroRed)
                        .clipShape(Corners(corner: [.topLeft, .topRight, .bottomRight], size: CGSize(width: 70, height: 70)))
                    Spacer()
                }.padding(.top, -70)
                ZStack {
                    Color(.pomodoroRed)
                    VStack {
                        HStack {
                            Text("How it works")
                                .padding(.top, 30)
                                .padding(.leading, 40)
                                .fontWeight(.bold)
                            Spacer()
                        }
                        Text(description)
                            .padding(.top, 10)
                            .padding([.leading, .trailing], 40)
                        
                        CardView(description: "Choose a task, stay focused and work for 25 minutes", image: "PomodoroClock", type: .imageRight)
                        
                        CardView(description: "After completing 1 Pomodoro, take a 5 minute break", image: "PomodoroCafe", type: .imageLeft)

                        CardView(description: "Repeat these Steps until you have completed 4 Pomodoro", image: "PomodoroClock", type: .imageRight)

                        CardView(description: "Well done! Take a longer brake between 15-30 minutes. Restart the Process if needed", image: "PomodoroShake", type: .imageLeft)

                        
                    }.background(.white)
                }
                
                
            }.edgesIgnoringSafeArea(.top)
                .statusBar(hidden: true)
        }
    }
}

#Preview {
    InfoView()
}
