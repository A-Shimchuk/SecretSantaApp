//
//  ContentView.swift
//  SecretSantaApp
//
//  Created by Alexey Shimchuk on 21.12.2023.
//

import SwiftUI

struct MainView: View {
    
    private struct LocalConstants {
        static let join = "Присоединится"
    }
    
    @State var isShownFormView: Bool = false
    
    var body: some View {
        VStack() {
            Image.christmasTree
                .resizable()
                .frame(width: 250, height: 350)
                .padding(.bottom, 70)
                .shadow(color: .black,radius: 40, x: 40, y: 40)
            
            Button {
                isShownFormView.toggle()
            } label: {
                Label(LocalConstants.join, image: .emptiness)
            }
            .frame(width: 230, height: 230)
            .background(Color.redElementsBackground)
            .foregroundColor(.white)
            .cornerRadius(200)
            .font(.system(size: 26))
            .overlay(RoundedRectangle(cornerRadius: 200)
                .stroke(Color.white, lineWidth: 2))
            // TODO: Увеличить область обработки для hitTest()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.backgroundColor)
        .fullScreenCover(isPresented: $isShownFormView) {
            FormFillingView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
