//
//  InfoView.swift
//  AlexCard
//
//  Created by Alex Liou on 8/26/22.
//

import SwiftUI


struct InfoView: View {
    let text: String
    let imageName: String
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(width: .infinity, height: 50)
            .overlay(
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(.green)
                    Text(text).foregroundColor(.black)
                })
            .padding()
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "111-111-1111", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
