//
//  MainTabView.swift
//  WhatsBro (iOS)
//
//  Created by Agus Cahyono on 10/08/20.
//

import SwiftUI

struct MainTabView: View {
    
    @State var selectedIndexTab = 4
    
    var body: some View {
        AllTabView
    }
    
    var AllTabView: some View {
        return VStack {
            TabView(selection: $selectedIndexTab) {
                
                StatusPageView()
                    .tabItem {
                        Image("ic_status")
                            .renderingMode(.template)
                            .foregroundColor(.blue)
                        Text("Status")
                    }.tag(0)
                
                Text("Calls")
                    .tabItem {
                        Image("ic_calls").renderingMode(.template)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        Text("Calls")
                    }.tag(1)
                
                Text("Camera")
                    .tabItem {
                        Image("ic_camera").renderingMode(.template)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        Text("Camera")
                    }.tag(2)
                
                Text("Chats")
                    .tabItem {
                        Image("ic_chats").renderingMode(.template)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        Text("Chats")
                    }.tag(3)
                
                SettingsPageView()
                    .tabItem {
                        Image("ic_settings").renderingMode(.template)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        Text("Settings")
                    }.tag(4)
                
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
