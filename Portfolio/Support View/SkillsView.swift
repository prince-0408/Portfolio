//
//  SkillsView.swift
//  Portfolio
//
//  Created by Anand on 14/04/22.
//

import SwiftUI


struct SkillsView: View {
    var skills: [Skill]
    var width: CGFloat
    
    @State var showSkills = true
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 10) {
                Button(action: {
                    withAnimation(.easeInOut(duration: 0.35)) {
                        showSkills.toggle()
            }
                }) {
                    Label (
                        title: {
                        Text("Skills")
                        .font(.system(size: 20))
                    },icon: {
                        Image(systemName: "chevron.up")
                                .font(.system(size: 20))
                            .rotationEffect(self.showSkills ? .zero : .degrees(180))
                    }
                )
                }.buttonStyle(PlainButtonStyle())
            }
            if (showSkills) {
                LazyVGrid(columns: [GridItem(),GridItem(), GridItem()], alignment: .leading, spacing: 12) {
                    ForEach(skills) { skill in
                        SkillView(skill: skill, width: width / 3 - 15)
                    }
                }.padding(.top, 4)
            }
        }
    }
}

struct SkillsView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { proxy in
        SkillsView(skills: PortfolioModel().portfolio.skills, width: 400)
            .padding(22)
        }
    }
}
