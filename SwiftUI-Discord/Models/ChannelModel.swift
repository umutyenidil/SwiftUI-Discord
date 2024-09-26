//
//  ChannelModel.swift
//  SwiftUI-Discord
//
//  Created by Umut Yenidil on 25.09.2024.
//

import Foundation

struct ChannelModel: Identifiable, Hashable, Codable {
    let id: String
    let createdAt: Date
    let name: String
}

extension ChannelModel {
    static let mockData: [ChannelModel] = [
        .init(id: NSUUID().uuidString, createdAt: Date(), name: "Channel Alpha"),
        .init(id: NSUUID().uuidString, createdAt: Date().addingTimeInterval(-1800), name: "Channel Beta"),
        .init(id: NSUUID().uuidString, createdAt: Date().addingTimeInterval(-5400), name: "Channel Gamma"),
        .init(id: NSUUID().uuidString, createdAt: Date().addingTimeInterval(-9000), name: "Channel Delta"),
        .init(id: NSUUID().uuidString, createdAt: Date().addingTimeInterval(-12600), name: "Channel Epsilon"),
        .init(id: NSUUID().uuidString, createdAt: Date().addingTimeInterval(-16200), name: "Channel Zeta"),
        .init(id: NSUUID().uuidString, createdAt: Date().addingTimeInterval(-19800), name: "Channel Eta"),
        .init(id: NSUUID().uuidString, createdAt: Date().addingTimeInterval(-23400), name: "Channel Theta"),
        .init(id: NSUUID().uuidString, createdAt: Date().addingTimeInterval(-27000), name: "Channel Iota"),
        .init(id: NSUUID().uuidString, createdAt: Date().addingTimeInterval(-30600), name: "Channel Kappa")
    ]
}
