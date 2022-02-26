//
//  ContentView.swift
//  AppStroageDemo
//
//  Created by Thongchai Subsaidee on 26/2/22.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("name") var name = "Content view"
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(
                    destination: View1(), label: {
                        Text("Go to view1: \(name)")
                    })
                
                Button {
                    name = "add from Content view"
                } label: {
                    Text("Save")
                }
                .padding()
                
                Button {
                    name = ""
                } label: {
                    Text("Clear")
                }
                .padding()
            }
            .padding()
            .navigationTitle("Home")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct View1: View {
    @AppStorage("name") var name = ""
    var body: some View {
        NavigationLink (destination: View2()) {
            Text("Go to view2 name : \(name)")
        }
        
        Button {
            name = "add from view1"
        } label: {
            Text("Save")
        }
        .padding()
        
    }
}


struct View2: View {
    @AppStorage("name") var name = ""
    var body: some View {
        Text("View2 name: \(name)")
        
        Button {
            name = "add from view2"
        } label: {
            Text("Save")
        }
        .padding()

    }
}
