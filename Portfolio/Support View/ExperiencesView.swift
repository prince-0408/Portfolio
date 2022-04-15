//
//  ExperiencesView.swift
//  Portfolio
//
//  Created by Anand on 15/04/22.
//

import SwiftUI

struct ExperiencesView: View {
    
    var experience: [Experience]
    @State var showExperience = true
    
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            HStack(spacing: 16) {
                Button(action: {
                    withAnimation(.easeInOut(duration: 0.35)) {
                        showExperience.toggle()
            }
                }) {
                    Label (
                        title: {
                        Text("Experience")
                        .font(.system(size: 20))
                    },icon: {
                        Image(systemName: "chevron.up")
                                .font(.system(size: 20))
                            .rotationEffect(self.showExperience ? .zero : .degrees(180))
                }
            )
                }.buttonStyle(PlainButtonStyle())
            }.padding(.bottom, 14)
            if (showExperience) {
                    ForEach(experience) { experience in
                        ExperienceView(experience: experience)
                }
            }
        }
    }
}

struct ExperiencesView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { proxy in
        ExperiencesView(experience: PortfolioModel().portfolio.experience)
            .padding(24)
        }
    }
}
