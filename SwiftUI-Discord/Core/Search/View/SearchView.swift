//
//  SearchView.swift
//  SwiftUI-Discord
//
//  Created by Umut Yenidil on 25.09.2024.
//

import SwiftUI

struct SearchView: View {
    var users = ["json", "levi", "elon", "timi"]
    @State var searchText = ""
    
    var body: some View {
        NavigationStack {
            List(users, id: \.self) { user in
                HStack {
                    Text(user.prefix(1))
                        .font(.largeTitle)
                        .frame(width: 32)
                        .padding()
                        .foregroundStyle(.white)
                        .background {
                            Circle()
                                .fill(Color(.discord))
                        }
                    
                    Text(user)
                        .font(.title)
                }
            }
            .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .background(Color(.background))
            .scrollContentBackground(.hidden)
            .searchable(text: $searchText)
            .navigationTitle("Users")
        }
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    SearchView()
}
