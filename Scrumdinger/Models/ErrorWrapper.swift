//
//  ErrorWrapper.swift
//  Scrumdinger
//
//  Created by USM Admin on 19/6/2023.
//

import Foundation

struct ErrorWrapper: Identifiable {
    let id: UUID
    let error: Error
    let guidence: String
    
    init(id: UUID = UUID(), error: Error, guidance: String) {
        self.id = id
        self.error = error
        self.guidence = guidance
    }
}
