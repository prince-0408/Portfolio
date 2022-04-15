//
//  ExperienceView.swift
//  Portfolio
//
//  Created by Anand on 14/04/22.
//

import SwiftUI

struct ExperienceView: View {
    var experience: Experience
    var body: some View {
        VStack(alignment: .leading) {
            Circle()
                .frame(width: 10, height: 10)
                .opacity(0.65)
            
            HStack {
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 3)
                    .padding(.leading, 3)
                VStack(alignment: .leading) {
                    Text(experience.role)
                        .font(.title2)
                    Text(experience.companyName)
                        .font(.title3)
                        .opacity(0.75)
                        .padding(.top, 4)
                    Text(experience.duration)
                        .font(.title3)
                        .opacity(0.45)
                        .padding(.top, 14)
                    
                }.padding(.leading, 16)
            }.padding(.top, 8)
        }.fixedSize()
    }
}

struct ExperienceView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { proxy in
        ExperienceView(experience: PortfolioModel().portfolio.experience[0])
        }
    }
}
