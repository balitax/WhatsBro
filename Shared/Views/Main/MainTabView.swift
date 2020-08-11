//
//  MainTabView.swift
//  WhatsBro (iOS)
//
//  Created by Agus Cahyono on 10/08/20.
//

import SwiftUI

struct MainTabView: View {
    
    
    var body: some View {
        AllTabView
    }
    
    var AllTabView: some View {
        return VStack {
            TabView {
                
                CountryPickerView()
                    .tabItem {
                        Image("ic_status")
                            .renderingMode(.template)
                            .foregroundColor(.blue)
                        Text("Status")
                    }
                
                Text("Calls")
                    .tabItem {
                        Image("ic_calls").renderingMode(.template)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        Text("Calls")
                    }
                
                Text("Camera")
                    .tabItem {
                        Image("ic_camera").renderingMode(.template)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        Text("Camera")
                    }
                
                Text("Chats")
                    .tabItem {
                        Image("ic_chats").renderingMode(.template)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        Text("Chats")
                    }
                
                Text("Settings")
                    .tabItem {
                        Image("ic_settings").renderingMode(.template)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        Text("Settings")
                    }
                
            }
            .accentColor(.blue)
            
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
