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
        VStack {
            ProgressView(value: 5, total: 15) // percentage of time elapsed during the scrum
            HStack {
                // leading (left) and trailing (right) alignemnt override default (center)
                VStack(alignment: .leading) {
                    Text("Seconds Elapsed")
                        .font(.caption) // modifier, reduce the font size
                    Label("300", systemImage: "hourglass.bottomhalf.fill") // use embedded SF Symbols, treated like font
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Second Remaining")
                        .font(.caption) // we can use multiple modifier, stacked vertically
                    Label("600", systemImage: "hourglass.tophalf.fill")
                }
            }
            .accessibilityElement(children: .ignore) // ignore the inferred accessibility labes and values for the child views of the header
            .accessibilityLabel("Time remaining") // added an acessibility label, pass a meaningful name to the label
            .accessibilityValue("10 minutes") // added an acessibility value, cause we ignored the values in the child views
            Circle() // add a cricle
                .strokeBorder(lineWidth: 24)
            HStack {
                Text("Speaker 1 of 3")
                Spacer()
                Button(action: {}) {
                    Image(systemName: "forward.fill") // added a button with forward image
                }
            }
            .accessibilityLabel("Next speaker") // added accessibility label to describe the forward button
        }
        .padding() // bring the views in from the edges
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
