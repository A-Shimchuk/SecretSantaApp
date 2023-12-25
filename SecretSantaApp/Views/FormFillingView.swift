//
//  FormFillingView.swift
//  SecretSantaApp
//
//  Created by Alexey Shimchuk on 21.12.2023.
//

import SwiftUI

struct FormFillingView: View {
    
    @State private var userName = String()
    @State private var aboutYourself = String()
    
    @State private var isSaved = false
    
    private struct LocalConstants {
        static let userName = "Имя участника"
        static let chooseAvatar = "Выберите аватар"
        static let aboutYourself = "О себе"
    }
    
    var body: some View {
        VStack(spacing: 16.0) {
            TextField(LocalConstants.userName, text: $userName)
                .foregroundColor(.black)
                .font(.system(size: 30))
                .cornerRadius(10)
                .padding(.horizontal, 16)
                .background(Color.elementsBackgound)
            
            VStack {
                Text(LocalConstants.chooseAvatar)
                    .font(.system(size: 30))
                    .foregroundColor(Color.gray)
                
                ScrollView(.horizontal, showsIndicators: true) {
                }
            }
            .padding(.horizontal, 16)
            .background(Color.elementsBackgound)
            
            TextField(LocalConstants.aboutYourself, text: $aboutYourself)
                .foregroundColor(.black)
                .font(.system(size: 30))
                .cornerRadius(10)
                .padding(.horizontal, 16)
                .padding(.bottom, 200)
                .background(Color.elementsBackgound)
            
            Button {
                isSaved.toggle()
            } label: {
                Label("Сохранить", image: .emptiness)
            }
            .padding(.horizontal, 16.0)
            .frame(maxWidth: .infinity, maxHeight: 70)
            .background(Color.redElementsBackground)
            .foregroundColor(.white)
            .font(.system(size: 30))
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.backgroundColor)
    }
}

struct FormFillingView_Previews: PreviewProvider {
    static var previews: some View {
        FormFillingView()
    }
}
