//
//  ServerModel.swift
//  SwiftUI-Discord
//
//  Created by Umut Yenidil on 25.09.2024.
//

import Foundation

struct ServerModel: Identifiable, Hashable, Codable {
    let id: String
    let createdAt: Date
    let name: String
}

extension ServerModel {
    static let mockData: [ServerModel] = [
            .init(id: NSUUID().uuidString, createdAt: Date(), name: "Server Alpha"),
            .init(id: NSUUID().uuidString, createdAt: Date().addingTimeInterval(-3600), name: "Server Beta"),
            .init(id: NSUUID().uuidString, createdAt: Date().addingTimeInterval(-7200), name: "Server Gamma"),
            .init(id: NSUUID().uuidString, createdAt: Date().addingTimeInterval(-10800), name: "Server Delta"),
            .init(id: NSUUID().uuidString, createdAt: Date().addingTimeInterval(-14400), name: "Server Epsilon"),
            .init(id: NSUUID().uuidString, createdAt: Date().addingTimeInterval(-18000), name: "Server Zeta"),
            .init(id: NSUUID().uuidString, createdAt: Date().addingTimeInterval(-21600), name: "Server Eta"),
            .init(id: NSUUID().uuidString, createdAt: Date().addingTimeInterval(-25200), name: "Server Theta"),
            .init(id: NSUUID().uuidString, createdAt: Date().addingTimeInterval(-28800), name: "Server Iota"),
            .init(id: NSUUID().uuidString, createdAt: Date().addingTimeInterval(-32400), name: "Server Kappa")
        ]
}
