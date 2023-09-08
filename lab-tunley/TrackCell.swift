//
//  TrackCell.swift
//  lab-tunley
//
//  Created by Dante Ricketts on 9/8/23.
//
import Nuke
import UIKit

class TrackCell: UITableViewCell {

    func configure(with track: Track){
        trackNameLabel.text = track.trackName
        artistNameLabel.text = track.artistName
        
        //Load image async via Nuke Library image loading helper method
        Nuke.loadImage(with: track.artworkUrl100, into: trackImageView)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBOutlet weak var trackImageView: UIImageView!
    @IBOutlet weak var trackNameLabel: UILabel!
    @IBOutlet weak var artistNameLabel: UILabel!
}
