//
//  PortfolioModel.swift
//  Portfolio
//
//  Created by Anand on 10/04/22.
//

import Foundation

class  PortfolioModel: ObservableObject {
    var portfolio: Portfolio = Portfolio(name: "Prince Yadav", role: "iOS Developer", description: "Passionate about iOS Development", location: "Jamshedpur", skills: [
        Skill(id: UUID().uuidString, skillName: "iOS Dev", image: "iphone"),
        Skill(id: UUID().uuidString, skillName: "Swift 5", image: "swift"),
        Skill(id: UUID().uuidString, skillName: "WatchOS", image: "watch"),
        Skill(id: UUID().uuidString, skillName: "UI / UX", image: "ui"),
        Skill(id: UUID().uuidString, skillName: "Graphic Designing", image: "graphic"),
    ], experience: [
        Experience(id: UUID().uuidString, companyName: "NinthSem", role: "Campus Ambassador (Intern)", duration: "May 2021 - July 2021"),
        Experience(id: UUID().uuidString, companyName: "Ardent", role: "ReactNative App Deelopment (Intern)", duration: "August 2021 - November 2021"),
        Experience(id: UUID().uuidString, companyName: "DigiLocker", role: "iOS App Development (Intern)", duration: "Feb 2022 - Present")
    ])
}
