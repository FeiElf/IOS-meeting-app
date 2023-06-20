//
//  NewScrumSheet.swift
//  Scrumdinger
//
//  Created by USM Admin on 19/6/2023.
//

import SwiftUI

struct NewScrumSheet: View {
    @State private var newScrum = DailyScrum.emptyScrum
    @Binding var scrums: [DailyScrum]
    @Binding var isPresentingNewScrumView: Bool
    
    var body: some View {
        NavigationStack {
            DetailEditView(scrum: $newScrum)
                .toolbar {
                    ToolbarItem(placement: .cancellationAction) {
                        Button(action: {
                            isPresentingNewScrumView = false
                        }) {
                            Text("Dismiss")
                        }
                    }
                    ToolbarItem(placement: .confirmationAction) {
                        Button(action: {
                            scrums.append(newScrum)
                            isPresentingNewScrumView = false
                        }) {
                            Text("Add")
                        }
                    }
                }
        }
    }
}

struct NewScrumSheet_Previews: PreviewProvider {
    static var previews: some View {
        NewScrumSheet(scrums: .constant(DailyScrum.sampleData), isPresentingNewScrumView: .constant(true))
    }
}
