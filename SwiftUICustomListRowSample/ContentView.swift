//
//  ContentView.swift
//  SwiftUICustomListRowSample
//
//  Created by Daisuke TONOSAKI on 2019/11/20.
//  Copyright © 2019 Daisuke TONOSAKI. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var issues: [Issue] = [
        Issue(id: 0, label: .enhancement, priority: .low, title: "NEW FEATURE1"),
        Issue(id: 1, label: .enhancement, priority: .middle, title: "NEW FEATURE2"),
        Issue(id: 2, label: .bug, priority: .high, title: "THE APP HAS SOME PROBLEM"),
        Issue(id: 3, label: .question, priority: .low, title: "WHERE WE GO?"),
    ]
    
    var body: some View {
        
        NavigationView {
            VStack {
                VStack {
                    Spacer().frame(height: 10)
                    
                    Text("Issues").font(.largeTitle)
                    
                    Spacer().frame(height: 10)
                    Text("There are issues.")
                }
                
                Spacer().frame(height: 32)
                
                List {
                    ForEach(issues) { issue in
                        NavigationLink(destination: ContentView2()) {
                            IssueRowView(issue: issue)
                            .frame(height: 48)
                        }
                    }
                }
                
                Spacer()
            }
            .padding()
            .navigationBarTitle(Text("Index"))
            .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
