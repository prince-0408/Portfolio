//
//  HeaderView.swift
//  Portfolio
//
//  Created by Anand on 12/04/22.
//

import SwiftUI

struct HeaderView: View {
    
    var appModel: PortfolioModel
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Image("self1")
                    .resizable()
                    .frame(width: 100,height: 100)
                    .padding(5)
                    .background(
                Circle()
                    .opacity(10)
                    .shadow(radius: 10)
                )
                Spacer()
            }
            Text(appModel.portfolio.name)
                .padding(.top, 8)
            
            Text(appModel.portfolio.role)
                .font(.title2)
                .opacity(0.85)
                .padding(.top, -2)
            HStack {
                Image(systemName: "location.fill")
                    .font(.system(size: 18, weight: .semibold))
                Text(appModel.portfolio.location)
            }
            .padding(.top, 10)
            .opacity(0.45)
            
            Text(appModel.portfolio.description)
                .font(.title3)
                .opacity(0.7)
                .padding(.top, 24)
                .lineSpacing(12.0)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(appModel: PortfolioModel())
            .padding(24)
    }
}
