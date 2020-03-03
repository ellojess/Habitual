//
//  MainViewController.swift
//  Habitual
//
//  Created by Bo on 2/20/20.
//  Copyright © 2020 Jessica Trinh. All rights reserved.
//

import UIKit

class HabitsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view.
    }

    class HabitsTableViewController: UITableViewController {
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 5
        }
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            var cell: UITableViewCell
            if let dequeueCell = tableView.dequeueReusableCell(withIdentifier: "cell") {
                cell = dequeueCell
            } else {
                cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
            }
            cell.textLabel?.text = "Hello, world!"
            return cell
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
