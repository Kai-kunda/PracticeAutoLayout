//
//  ViewController.swift
//  PracticeAutoLayout
//
//  Created by 小谷松　海 on 2019/12/16.
//  Copyright © 2019 Kai Koyamatsu. All rights reserved.
//

import UIKit

struct Tweet {
    let id: String
    let name: String
    let body: String
    let publishDate: Date
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!

    let tweets = [
        Tweet(id: "kaikun", name: "カイくん", body: "うおおおおおおおおおおおおおおおおおお", publishDate: Date()),
        Tweet(id: "sim", name: "しむさんンンンンンンンンんんんんんんんんンンンンンンンンんん", body: "うおおおおおおおおおおおおおおおおおお", publishDate: Date()),
        Tweet(id: "yukimine", name: "ゆきみねさん", body: "うおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおお", publishDate: Date()),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "TweetCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "TweetCell")
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tweets.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TweetCell", for: indexPath) as! TweetCell
        cell.setTweet(tweets[indexPath.row])
        return cell
    }
}
