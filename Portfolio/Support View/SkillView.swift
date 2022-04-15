//
//  SkillView.swift
//  Portfolio
//
//  Created by Anand on 13/04/22.
//

import SwiftUI

struct SkillView: View {
    
    var skill: Skill
    var width: CGFloat = 120
    
    var body: some View {
        VStack{
            
            Image(skill.image)
                .font(.system(size: 40, weight: .bold))
                .opacity(0.8)
            
            Text(skill.skillName)
                .font(.custom("Nunito", size: 15))
                .padding(.top, 1)
            
        }.padding()
        .frame(width: width, height: 109.7)
        .background(RoundedRectangle(cornerRadius: 12)
                        .opacity(0.075)
        )
    }
}

struct SkillView_Previews: PreviewProvider {
    static var previews: some View {
        SkillView(skill: PortfolioModel().portfolio.skills[0])
    }
}
