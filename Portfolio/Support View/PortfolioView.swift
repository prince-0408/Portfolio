//
//  ContentView.swift
//  Portfolio
//
//  Created by Anand on 05/04/22.
//

import SwiftUI

struct PortfolioView: View {
    
    // MARK: - VARIABLE
    
    var appModel: PortfolioModel = PortfolioModel()
    
    // MARK: - VIEW
    
    var body: some View {
        ZStack {
            Color(UIColor.systemBackground)
                .ignoresSafeArea()
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    
                    HeaderView(appModel: appModel)
                    
                    SkillsView(skills: PortfolioModel().portfolio.skills, width: UIScreen.main.bounds.width - 48)
                        .padding(.top, 32)
                    
                    ExperiencesView(experience: PortfolioModel().portfolio.experience)
                        .padding(.top, 42)
                }.padding(24)
            }
        }
    }
}

struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView()
            .colorScheme(.dark)
    }
}
