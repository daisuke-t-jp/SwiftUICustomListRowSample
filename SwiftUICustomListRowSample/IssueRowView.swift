//
//  IssueRowView.swift
//  SwiftUICustomListRowSample
//
//  Created by Daisuke TONOSAKI on 2019/11/20.
//  Copyright © 2019 Daisuke TONOSAKI. All rights reserved.
//

import SwiftUI

struct IssueRowView: View {
    
    var issue: Issue
    
    var body: some View {
        Group {
            HStack {
                // Label
                ZStack {
                    Text(Issue.labelMarkMap[issue.label]!)
                        .foregroundColor(.white)
                        .font(.caption)
                }.frame(width: 64, height: 36)
                    .background(Issue.labelColorMap[issue.label])
                    .clipShape(Circle())
                
                Spacer().frame(width: 10)
                
                // Title
                Text(issue.title)
                    .font(.headline)
                
                Spacer().frame(width: 10)
            }
            .frame(width: 280, alignment: .leading)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(Issue.priorityColorMap[issue.priority])
    }
}

struct IssueRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            IssueRowView(issue: Issue(id: 0, label: .enhancement, priority: .low, title: "low / enhancement"))
            IssueRowView(issue: Issue(id: 1, label: .bug, priority: .middle, title: "middle / bug"))
            IssueRowView(issue: Issue(id: 2, label: .question, priority: .high, title: "high / question"))
        }
        .previewLayout(.fixed(width: 300, height: 48))
    }
}
