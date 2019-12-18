//
//  ViewController.swift
//  PracticeAutoLayout
//
//  Created by 小谷松　海 on 2019/12/16.
//  Copyright © 2019 Kai Koyamatsu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let test: [Int] = {
        var arr: [Int] = []
        for i in 1...10 {
            arr.append(i)
        }

        return arr
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return test.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel!.text = String(test[indexPath.row])
        return cell
    }
}

