//
//  FocusView.swift
//  Tickers
//
//  Created by Ian Pacini on 07/06/23.
//

import SwiftUI

struct FocusView: View {
    
    // MARK: - Properties
    let durationInSecond: TimeInterval
    
    @State private var isPresented: Bool = false
    
    init(durationInSecond: TimeInterval) {
        self.durationInSecond = durationInSecond
    }
    
    // MARK: - View
    var body: some View {
        NavigationView{
            ZStack {
                if isPresented {
                    FocusContentView(durationInSecond: durationInSecond)
                        .animation(.easeInOut(duration: 0.5), value: isPresented)
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    withAnimation {
                        self.isPresented = true
                    }
                }
            }
            .onDisappear {
                withAnimation {
                    self.isPresented = false
                }
            }
        }
        .navBarWithBackButton()
    }
}

// MARK: - Preview
struct FocusView_Previews: PreviewProvider {
    @State static var timer: TimeInterval = 15
    static var previews: some View {
        FocusView(durationInSecond: timer)
    }
}
