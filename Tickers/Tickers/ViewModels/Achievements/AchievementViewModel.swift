//
//  AchievementViewModel.swift
//  Tickers
//
//  Created by Julia Morales on 29/06/23.
//

import SwiftUI

class AchievementViewModel: ObservableObject {
    @Published var achievements = [
                                    AchievementModel(isCompleted: true, isProgressive: false, taskTotal: 1, taskResolved: 2, title: "Hora do Foco", description: "Concluiu seu primeiro pomodoro."),
                                    AchievementModel(isCompleted: true, isProgressive: false, taskTotal: 1, taskResolved: 2, title: "Primeiros Passos", description: "Completou um total de 5 horas em foco."),
                                    AchievementModel(isCompleted: true, isProgressive: false, taskTotal: 1, taskResolved: 2, title: "Um dia de Cada Vez", description: "Entrou em foco por 5 dias seguidos"),
                                    AchievementModel(isCompleted: false, isProgressive: true, taskTotal: 20, taskResolved: 2, title: "Pegando o Ritmo", description: "Complete um total de 20 horas em foco."),
                                    AchievementModel(isCompleted: false, isProgressive: true, taskTotal: 50, taskResolved: 8, title: "Concentracao Total", description: "Completou um total de 50 horas em foco."),
                                    AchievementModel(isCompleted: false, isProgressive: true, taskTotal: 10, taskResolved: 7, title: "Virando Rotina", description: "Entre em foco por 10 dias seguidos.")]
}


