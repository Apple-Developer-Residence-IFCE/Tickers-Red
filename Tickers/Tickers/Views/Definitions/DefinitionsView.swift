//
//  DefinitionsView.swift
//  Tickers
//
//  Created by Ian Pacini on 23/06/23.
//

import SwiftUI

struct DefinitionsView: View {
    @Binding var isPresentingDefinitions: Bool
    @State var focusTime: Float = 0
    @State var rest: Float = 0
    @Environment(\.dismiss) var dismiss
    
    var body: some View{
        if #available(iOS 16.0, *) {
            bottomSheetContent
                .presentationDetents([.height(300)])
        } else {
            bottomSheetContent
        }
    }

    var bottomSheetContent: some View {
            VStack(alignment: .leading, spacing: 16){
                HStack{
                    Image("hourglassWPencil")
                    Text("Definições")
                        .tickerFont(size: 18, weight: .bold)
                        .foregroundColor(Color("Blue2"))
                    Spacer()
                    Image("exitGray")
                        .onTapGesture {
                            dismiss()
                        }.padding(.trailing, 30)
                }.padding(.leading, 30)
                Divider()
                SliderComponent(valorAtual: $focusTime, title: "Tempo de foco", minValue: 15, maxValue: 50, valueType: "min")
                SliderComponent(valorAtual: $rest, title: "Descanso", minValue: 4, maxValue: 10, valueType: "min")
            }
            .interactiveDismissDisabled()
    }
}

fileprivate struct DefinitionsBinding: View {
    @State var isPresentingDefinitions: Bool = true
    var body: some View {
        DefinitionsView(isPresentingDefinitions: $isPresentingDefinitions)
    }
}


struct DefinitionsView_Previews: PreviewProvider {
    static var previews: some View {
        DefinitionsBinding()
    }
}
