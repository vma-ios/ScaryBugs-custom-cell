//
//  ScaryBugsTableViewController.swift
//  ScaryBugs
//
//  Created by Lubos Ilcik on 12/11/2017.
//  Copyright © 2017 Touch4It. All rights reserved.
//

import UIKit

class ScaryBugsTableViewController: UITableViewController {
    
    let bugs = ScaryBug.bugs()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // in order to let large navigation bar to shrink when scrolling, set Large Title = never in storyborad and set title behaviour programmatically
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .always
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bugs.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BugCell", for: indexPath) as! TableViewCell

        let bug = bugs[indexPath.row]
        cell.bugImage = bug.image
        cell.bugTitle = bug.name
        cell.bugSubtitle = bug.howScary.description

        return cell
    }

}
