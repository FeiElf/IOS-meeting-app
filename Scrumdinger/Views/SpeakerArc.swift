//
//  SpeakerArc.swift
//  Scrumdinger
//
//  Created by USM Admin on 19/6/2023.
//

import SwiftUI

struct SpeakerArc: Shape {
    let speakerIndex: Int
    let totalSpeakers: Int
    
    private var degreePerSpeaker: Double {
        360.0/Double(totalSpeakers)
    }
    
    private var startAngle: Angle {
        Angle(degrees: degreePerSpeaker * Double(speakerIndex) + 1.0)
    }
    
    private var endAngle: Angle {
        Angle(degrees: startAngle.degrees + degreePerSpeaker - 1.0)
    }
    
    func path(in rect: CGRect) -> Path {
        let diameter = min(rect.size.width, rect.size.height) - 24.0
        let radius = diameter / 2.0
        let center = CGPoint(x: rect.midX, y: rect.midY)
        return Path { path in
            path.addArc(center: center, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: false)
        }
    }
}

struct SpeakerArc_Previews: PreviewProvider {
    static var previews: some View {
        SpeakerArc(speakerIndex: 1, totalSpeakers: 2)
    }
}

