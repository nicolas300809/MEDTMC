//
//  PomodoroViewModel.swift
//  sue01
//
//  Created by Nicolas Lehner on 24.11.26.
//

import SwiftUI
import Foundation


@Observable
class PomodoroViewModel{
    var pomodoroManager: PomodoroManager
    var progress: Double
    var progressColor: Color
    var isProgressVisible: Bool
    
    init(pomodoroManager: PomodoroManager){
        progress = 0
        progressColor = .pomodoroRed
        isProgressVisible = true
        self.pomodoroManager = pomodoroManager
    }
}
