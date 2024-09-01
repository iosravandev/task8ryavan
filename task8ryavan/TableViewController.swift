//
//  TableViewController.swift
//  task8ryavan
//
//  Created by Ravan on 31.08.24.
//

import UIKit

class TableViewController: UIViewController {
    
    @IBOutlet weak var tableViewHome: UITableView! {
        didSet{
            tableViewHome.delegate = self
            tableViewHome.dataSource = self
            let nib = UINib(nibName: "CategoryTableViewCell", bundle: nil)
            tableViewHome.register(nib, forCellReuseIdentifier: "CategoryTableViewCell")
        }
    }
}


extension TableViewController: UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewHome.dequeueReusableCell(withIdentifier: "CategoryTableViewCell", for: indexPath)
        
        return cell
    }
    
}
