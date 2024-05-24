//
//  ContentView.swift
//  poc_xdk_swiftui
//
//  Created by Siti Norathirah Yahya on 13/03/2024.
//

import SwiftUI

struct ContentView: View {
    @State var isPresented = false
    
    var body: some View {
        Button("MpViewController") {
            isPresented = true
        }
        .sheet(isPresented: $isPresented) {
            MpViewController()

        }
    }
}
