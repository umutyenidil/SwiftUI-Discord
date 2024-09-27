//
//  AgeView.swift
//  SwiftUI-Discord
//
//  Created by Umut Yenidil on 27.09.2024.
//

import SwiftUI

struct AgeView: View {
    @Environment(\.authViewModel) var viewModel
    @State private var showDatePicker = false
    
    var body: some View {
        @Bindable var viewModel = viewModel
        VStack {
            Text("And, how old are you?")
                .font(.title)
                .bold()
                .padding(.bottom, 24)
            
            DiscordForm(title: "Date of Birth") {
                Button {
                    showDatePicker.toggle()
                } label: {
                    Text(viewModel.registerDOB != nil ? viewModel.registerDOB!.formatted() : "Select a date")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .foregroundStyle(.white)
                        .background(.ultraThinMaterial)
                }
            }
            
            Button {
                viewModel.register()
            } label: {
                Text("Create an acount")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .foregroundStyle(.white)
                    .background(viewModel.registerDOB == nil ? .gray : .discord)
            }
            .disabled(viewModel.registerDOB == nil)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(Color(.background))
        .preferredColorScheme(.dark)
        .sheet(isPresented: $showDatePicker) {
            VStack(spacing: 16) {
                        Text("Select a Date")
                            .font(.headline)
                            .padding()
                        
                        // DatePicker inside the sheet
                        DatePicker(
                            "",
                            selection: Binding($viewModel.registerDOB, default: Date()),
                            displayedComponents: [.date]
                        )
                        .datePickerStyle(WheelDatePickerStyle()) // Choose your preferred style
                        
                        // Done button to dismiss the sheet
                        Button {
                            showDatePicker = false
                        } label: {
                            Text("Done")
                                .padding()
                                .frame(maxWidth: .infinity)
                                .foregroundStyle(.white)
                                .background(.gray)
                        }
                    }
                    .padding() // Padding to fit content nicely
                    .presentationDetents([.medium, .fraction(0.6)])
                }
    }
}

extension Binding {
    /// Custom initializer for optional Binding with default value
    init(_ source: Binding<Value?>, default defaultValue: Value) {
        self.init(
            get: { source.wrappedValue ?? defaultValue },
            set: { newValue in source.wrappedValue = newValue }
        )
    }
}

#Preview {
    NavigationStack {
        AgeView()
            .environment(AuthViewModel())
    }
}
