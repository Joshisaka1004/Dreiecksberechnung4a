//
//  myTableVC.swift
//  Dreiecksberechnung4a
//
//  Created by Joachim Vetter on 24.07.17.
//  Copyright © 2017 Joachim Vetter. All rights reserved.
//

import UIKit

class myTableVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
        //myTableView.contentInset = UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCurrent = myTableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        myCurrent.textLabel?.text = daten.myItems[indexPath.row]
        return myCurrent
    }
}
