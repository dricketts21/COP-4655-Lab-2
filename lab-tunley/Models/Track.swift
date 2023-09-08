//
//  Track.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/2/22.
//

import Foundation

// TODO: Pt 1 - Create a Track model struct
struct Track{
    let trackName: String
    let artistName: String
    let artworkUrl100: URL
    
}


// TODO: Pt 1 - Create an extension with a mock tracks static var
extension Track{
    static var mockTracks: [Track]=[
        Track(trackName: "Out thë way",
              artistName: "Yeat",
              artworkUrl100:URL(string:"https://is1-ssl.mzstatic.com/image/thumb/Music112/v4/39/2a/bf/392abf53-be83-0f20-ed75-98f97353738d/22UMGIM91368.rgb.jpg/100x100bb.jpg")!),
        Track(trackName: "On tha linë",
              artistName: "Yeat",
              artworkUrl100: URL(string:"https://is1-ssl.mzstatic.com/image/thumb/Music116/v4/56/87/45/568745a7-0691-708c-62da-71447fefb544/22UMGIM15568.rgb.jpg/100x100bb.jpg")!),
        Track(trackName: "Systëm",
              artistName: "Yeat",
              artworkUrl100:URL(string:"https://is1-ssl.mzstatic.com/image/thumb/Music112/v4/39/2a/bf/392abf53-be83-0f20-ed75-98f97353738d/22UMGIM91368.rgb.jpg/100x100bb.jpg")!)
              ]
}


// MARK: Helper Methods
/// Converts milliseconds to mm:ss format
///  ex:  208643 -> "3:28"
///  ex:
func formattedTrackDuration(with milliseconds: Int) -> String {
    let (minutes, seconds) = milliseconds.quotientAndRemainder(dividingBy: 60 * 1000)
    let truncatedSeconds = seconds / 1000
    if truncatedSeconds >= 10 {
        return "\(minutes):\(truncatedSeconds)"
    } else {
        return "\(minutes):0\(truncatedSeconds)"
    }
}
