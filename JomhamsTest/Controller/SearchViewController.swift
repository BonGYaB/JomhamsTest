//
//  SearchViewController.swift
//  JomhamsTest
//
//  Created by SEAN Sen on 6/4/19.
//  Copyright © 2019 SEAN Sen. All rights reserved.
//

import Foundation
import UIKit

class SearchViewController: UIViewController, NibIntializable{
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var labelResultSearch: UITextView!
    private var data = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelResultSearch.text = "\(data) restaurant found"
        initTableView()
    }
    
    private func initTableView() {
        self.tableView.register(UINib(nibName: "TableCell", bundle: nil), forCellReuseIdentifier: "tableViewCell")
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
    }
    
    @IBAction func buttonBack(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

}

extension SearchViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as! TableCell
        cell.selectionStyle = .none
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.present(RestaurantDetailViewController.initialNib(), animated: true, completion: nil)
    }
}
