//
//  CountryPickerView.swift
//  WhatsBro (iOS)
//
//  Created by Agus Cahyono on 10/08/20.
//

import SwiftUI

struct CountryPickerView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    
    @State private var searchText = ""
    @State private var showCancelButton: Bool = false
    
    
    
    var body: some View {
        NavigationView {
            VStack {
                // Search view
                HStack {
                    
                    HStack {
                        Image(systemName: "magnifyingglass")
                        
                        TextField("Search Country", text: $searchText, onEditingChanged: { isEditing in
                            self.showCancelButton = true
                        }, onCommit: {
                            print("onCommit")
                        }).foregroundColor(.primary)
                        
                        Button(action: {
                            self.searchText = ""
                        }) {
                            Image(systemName: "xmark.circle.fill").opacity(searchText == "" ? 0 : 1)
                        }
                    }
                    .padding(EdgeInsets(top: 8, leading: 6, bottom: 8, trailing: 6))
                    .foregroundColor(.secondary)
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(10.0)
                    .padding(.top, 16)
                    
                    if showCancelButton  {
                        Button("Cancel") {
                            UIApplication.shared.endEditing(true) // this must be placed before the other commands here
                            self.searchText = ""
                            self.showCancelButton = false
                        }
                        .foregroundColor(Color(.systemBlue))
                    }
                }
                .padding(.horizontal)
                .navigationBarHidden(showCancelButton)
                
                List {
                    // Filtered list of names
                    
                    ForEach(Countries.countries.filter { $0.name.hasPrefix(searchText) || searchText == "" } ) { country in
                        
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }, label: {
                            SearchRows(
                                countryName: country.name,
                                countryCode: country.phoneExtension)
                        })
                        
                    }
                }
                .listStyle(PlainListStyle())
                .resignKeyboardOnDragGesture()
            }
            .navigationTitle("Choose Country")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing:doneButton())
        }
    }
    
    fileprivate func doneButton() -> Button<Text> {
        return Button(action: {
            presentationMode.wrappedValue.dismiss()
        }, label: {
            Text("Done")
        })
    }
    
}

struct CountryPickerView_Previews: PreviewProvider {
    static var previews: some View {
        CountryPickerView()
    }
}

struct SearchRows: View {
    
    @State var countryName: String
    @State var countryCode: String
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text(countryName)
                    Text(" +\(countryCode)")
                }
                
                Spacer()
                
                Image(systemName: "chevron.right")
                
            }.padding(.vertical, 8)
        }
    }
}
