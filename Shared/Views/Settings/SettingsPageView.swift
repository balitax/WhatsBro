//
//  SettingsPageView.swift
//  WhatsBro (iOS)
//
//  Created by Agus Cahyono on 11/08/20.
//

import SwiftUI

struct SettingsPageView: View {
    
    @State var presentQRCode = false
    
    var body: some View {
        NavigationView {
            
            List {
                
                Section {
                    ZStack {
                        HStack {
                            
                            ZStack(alignment: .bottomTrailing) {
                                Image("image")
                                    .resizable()
                                    .frame(width: 58, height: 58)
                                    .cornerRadius(58/2)
                            }
                            
                            VStack(alignment: .leading) {
                                Text("Agus Cahyono")
                                    .foregroundColor(.primary)
                                    .font(.system(size: 16, weight: .semibold)).padding(.bottom, 4)
                                Text("Digital goodies designer - Pixsellz")
                                    .foregroundColor(.secondary)
                                    .font(.system(size: 14, weight: .regular))
                            }.padding(.leading, 9)
                            
                            Spacer()
                            
                            HStack {
                                
                                Button(action: {
                                    self.presentQRCode.toggle()
                                }, label: {
                                    Image(systemName: "qrcode")
                                        .resizable()
                                        .frame(width: 18, height: 15)
                                        .foregroundColor(.blue)
                                        .padding()
                                        .frame(width: 36, height: 36)
                                        .background(Color(hex: 0xFFEDEDFF))
                                        .cornerRadius(36/2)
                                    
                                }).buttonStyle(PlainButtonStyle()).padding(.trailing, 5)
                                
                            }
                            
                        }.sheet(isPresented: $presentQRCode, content: {
                            SamplePageView()
                        })
                        
                        NavigationLink(
                            destination: Text("Destination"),
                            label: {
                                EmptyView()
                            })
                        
                    }.padding(.vertical, 9)
                }
                
                Section {
                    NavigationLink(
                        destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                        label: {
                            HStack {
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .frame(width: 19, height: 19, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.white)
                                    .padding(.all, 5)
                                    .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .background(Color(hex: 0xFFFBB500))
                                    .cornerRadius(6)
                                Text("Starred Message").fontWeight(.regular)
                                    .padding(.leading, 8)
                            }.padding(.vertical, 4)
                        })
                    
                    NavigationLink(
                        destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                        label: {
                            HStack {
                                Image(systemName: "desktopcomputer")
                                    .resizable()
                                    .frame(width: 18, height: 16, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.white)
                                    .padding(.all, 5)
                                    .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .background(Color(hex: 0xFF07AD9F))
                                    .cornerRadius(6)
                                Text("WhatsApp Web/Desktop").fontWeight(.regular)
                                    .padding(.leading, 8)
                            }.padding(.vertical, 4)
                        })
                    
                }
                
                Section {
                    NavigationLink(
                        destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                        label: {
                            HStack {
                                Image(systemName: "lock.fill")
                                    .resizable()
                                    .frame(width: 14, height: 18)
                                    .foregroundColor(.white)
                                    .padding(.all, 5)
                                    .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .background(Color(hex: 0xFF397AFE))
                                    .cornerRadius(6)
                                Text("Account").fontWeight(.regular)
                                    .padding(.leading, 8)
                            }.padding(.vertical, 4)
                        })
                    
                    NavigationLink(
                        destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                        label: {
                            HStack {
                                Image(systemName: "message.fill")
                                    .resizable()
                                    .frame(width: 18, height: 18, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.white)
                                    .padding(.all, 5)
                                    .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .background(Color(hex: 0xFF4BD763))
                                    .cornerRadius(6)
                                Text("Chats").fontWeight(.regular)
                                    .padding(.leading, 8)
                            }.padding(.vertical, 4)
                        })
                    
                    NavigationLink(
                        destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                        label: {
                            HStack {
                                Image(systemName: "envelope.badge")
                                    .resizable()
                                    .frame(width: 18, height: 14, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.white)
                                    .padding(.all, 5)
                                    .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .background(Color(hex: 0xFFFF3B2F))
                                    .cornerRadius(6)
                                Text("Notifications").fontWeight(.regular)
                                    .padding(.leading, 8)
                            }.padding(.vertical, 4)
                        })
                    
                    NavigationLink(
                        destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                        label: {
                            HStack {
                                Image(systemName: "wifi")
                                    .resizable()
                                    .frame(width: 18, height: 14, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.white)
                                    .padding(.all, 5)
                                    .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .background(Color(hex: 0xFF4BD763))
                                    .cornerRadius(6)
                                Text("Data and Storage Usage").fontWeight(.regular)
                                    .padding(.leading, 8)
                            }.padding(.vertical, 4)
                        })
                    
                }
                
                Section {
                    NavigationLink(
                        destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                        label: {
                            HStack {
                                Image(systemName: "info.circle")
                                    .resizable()
                                    .frame(width: 19, height: 19, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.white)
                                    .padding(.all, 5)
                                    .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .background(Color(hex: 0xFF4BA0FE))
                                    .cornerRadius(6)
                                Text("Help").fontWeight(.regular)
                                    .padding(.leading, 8)
                            }.padding(.vertical, 4)
                        })
                    
                    NavigationLink(
                        destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                        label: {
                            HStack {
                                Image(systemName: "heart.fill")
                                    .resizable()
                                    .frame(width: 18, height: 16, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.white)
                                    .padding(.all, 5)
                                    .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .background(Color(hex: 0xFFFF2C55))
                                    .cornerRadius(6)
                                Text("Tell a Friend").fontWeight(.regular)
                                    .padding(.leading, 8)
                            }.padding(.vertical, 4)
                        })
                    
                }
                
                
                
            }.listStyle(GroupedListStyle())
            
                .navigationTitle("Settings")
                .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct SettingsPageView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsPageView()
    }
}
