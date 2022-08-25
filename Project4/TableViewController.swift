//
//  TableViewController.swift
//  Project4
//
//  Created by Anna Shark on 25/8/22.
//

import UIKit

class TableViewController: UITableViewController {
    
   static var websites = ["www.apple.com", "www.hackingwithswift.com", "www.producthunt.com", "news.ycombinator.com", "www.computerworld.com"]

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Choose a website to start your day!"

    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("call to tableView numberOfRowsInSection func")
        return TableViewController.websites.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "website", for: indexPath)
        cell.textLabel?.text = TableViewController.websites[indexPath.row]
        print("call to tableView cellForRowAt func")
        return cell

    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? ViewController {
            vc.selectedSite = TableViewController.websites[indexPath.row]
            vc.websites = TableViewController.websites
            
            navigationController?.pushViewController(vc, animated: true)
            print("call to tableView didSelectRowAt func")
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
