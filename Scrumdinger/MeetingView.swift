//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Sebastiano Cassol on 20/03/22.
//  This file declares two structures: the View, that have a body property that returns a view,
//  and the Preview that display a canvas
//  First we'll rename the view, by control-clicking and selecting refactor we can refactor the structure
//  We can also rename the preview for name consistency

import SwiftUI

struct MeetingView: View {
    var body: some View {
        // change the content of the body
        ProgressView(value: 5, total: 15)
        // percentage of time elapsed during the scrum
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
