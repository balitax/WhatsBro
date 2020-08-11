//
//  PhoneLogin.swift
//  WhatsBro (iOS)
//
//  Created by Agus Cahyono on 10/08/20.
//

import SwiftUI

struct PhoneLogin: View {
    
    @State var presentCountryChoice = false
    @State var txPhoneNumber = ""
    
    var body: some View {
        NavigationView {
            
            VStack(alignment: .leading) {
                
                Text("Please confirm your country code and enter your phone number ")
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 19)
                    .padding(.horizontal, 42)
                
                Divider().offset(y: -10)
                
                VStack(alignment: .leading) {
                    
                    Button(action: {
                        self.presentCountryChoice.toggle()
                    }, label: {
                        HStack {
                            Text("Unites Stated")
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                                .padding(.trailing, 16)
                        }
                    })
                    Rectangle()
                        .frame(height: 1.0, alignment: .bottom)
                        .foregroundColor(Color.gray.opacity(0.35))
                        .padding(.top, 0)
                    
                    HStack {
                        Text("+1")
                            .font(Font.system(size: 27, weight: .light, design: .default)).padding(.trailing, 29)
                        
                        Rectangle()
                            .frame(width: 1.0, height: 46, alignment: .trailing)
                            .foregroundColor(Color.gray.opacity(0.35))
                        
                        TextField(
                            "Phone Number",
                            text: $txPhoneNumber)
                            .padding(.horizontal, 16).keyboardType(.phonePad)
                            .font(Font.system(size: 27, weight: .light, design: .default))
                        
                    }.offset(y: -10)
                    
                }
                .padding(.leading, 16)
                .padding(.top, -5)
                
                Divider().offset(y: -28)
                
                
                Spacer()
            }
            .fullScreenCover(isPresented: $presentCountryChoice, content: {
                CountryPickerView()
            })
            
            .navigationTitle("Phone Number")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: TrailingMenu(phoneNumber: $txPhoneNumber)
            )
        }
    }
}

struct PhoneLogin_Previews: PreviewProvider {
    static var previews: some View {
        PhoneLogin()
    }
}

struct TrailingMenu: View {
    
    @Binding var phoneNumber: String
    @State var presentDashboard: Bool = false
    
    var body: some View {
        Button("Done", action: {
            self.presentDashboard.toggle()
        }).disabled(self.phoneNumber.count <= 3)
        .fullScreenCover(isPresented: $presentDashboard, content: {
            MainTabView()
        })
    }
}
