//
//  ViewController.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/1/22.
//

import UIKit

class TracksViewController: UIViewController, UITableViewDataSource {
    
    var tracks : [Track] = []

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tracks = Track.mockTracks
        print(tracks)

        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let indexPath = tableView.indexPathForSelectedRow{
            tableView.deselectRow(at:indexPath, animated: true)
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let cell = sender as? UITableViewCell,
           let indexPath = tableView.indexPath(for: cell),
           let detailViewController = segue.destination as? DetailViewController{
            let track = tracks[indexPath.row]
            detailViewController.track = track
        }


    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tracks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TrackCell", for: indexPath) as! TrackCell
        let track = tracks[indexPath.row]
        cell.configure(with: track)
        return cell
    }
}
