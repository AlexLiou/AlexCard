//
//  ContentView.swift
//  AlexCard
//
//  Created by Alex Liou on 8/26/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(uiColor: UIColor(red: 0.56, green: 0.27, blue: 0.68, alpha: 1.00))
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("Alex")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5))
                Text("Alex Liou")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .padding()
                    .foregroundColor(.white)
                Text("Computer Scientist")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+1 321-352-2711", imageName: "phone.fill")
                InfoView(text: "alexliou0@gmail.com", imageName: "email.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
