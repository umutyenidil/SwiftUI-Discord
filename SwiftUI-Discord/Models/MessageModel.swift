//
//  MessageModel.swift
//  SwiftUI-Discord
//
//  Created by Umut Yenidil on 25.09.2024.
//

import Foundation

struct MessageModel: Identifiable, Hashable, Codable {
    let id: String
    let content: String
    let imageUrl: String
    let createdAt: Date
    let username: String
}

extension MessageModel {
    static let mockData: [MessageModel] = [
          .init(id: NSUUID().uuidString, content: "naber", imageUrl: "https://picsum.photos/512", createdAt: Date(), username: "umut"),
          .init(id: NSUUID().uuidString, content: "Selam! Nasılsın?", imageUrl: "https://picsum.photos/513", createdAt: Date().addingTimeInterval(-3600), username: "ezgi"),
          .init(id: NSUUID().uuidString, content: "Bugün hava nasıl?", imageUrl: "https://picsum.photos/514", createdAt: Date().addingTimeInterval(-7200), username: "berke"),
          .init(id: NSUUID().uuidString, content: "Görüşmeyeli uzun zaman oldu.", imageUrl: "https://picsum.photos/515", createdAt: Date().addingTimeInterval(-10800), username: "aslı"),
          .init(id: NSUUID().uuidString, content: "Akşam yemeği için plan yapalım mı?", imageUrl: "https://picsum.photos/516", createdAt: Date().addingTimeInterval(-14400), username: "kuki"),
          .init(id: NSUUID().uuidString, content: "Yeni projede nasıl gidiyor işler?", imageUrl: "https://picsum.photos/517", createdAt: Date().addingTimeInterval(-18000), username: "baran"),
          .init(id: NSUUID().uuidString, content: "Hafta sonu tatili için harika bir fikir buldum.", imageUrl: "https://picsum.photos/518", createdAt: Date().addingTimeInterval(-21600), username: "melike"),
          .init(id: NSUUID().uuidString, content: "Bu resmi çok beğendim.", imageUrl: "https://picsum.photos/519", createdAt: Date().addingTimeInterval(-25200), username: "arda"),
          .init(id: NSUUID().uuidString, content: "Şu an çalışıyorum, sonra konuşuruz.", imageUrl: "https://picsum.photos/520", createdAt: Date().addingTimeInterval(-28800), username: "yusuf"),
          .init(id: NSUUID().uuidString, content: "Çok güzel bir film izledim dün gece.", imageUrl: "https://picsum.photos/521", createdAt: Date().addingTimeInterval(-32400), username: "ayşe")
      ]
}
