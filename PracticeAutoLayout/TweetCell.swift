//
//  TweetCell.swift
//  PracticeAutoLayout
//
//  Created by 小谷松　海 on 2019/12/19.
//  Copyright © 2019 Kai Koyamatsu. All rights reserved.
//

import UIKit

class TweetCell: UITableViewCell {

    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var idLabel: UILabel!
    @IBOutlet private weak var dateLabel: UILabel!
    @IBOutlet private weak var bodyTextView: UITextView!

    static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd"
        return formatter
    }()

    func setTweet(_ tweet: Tweet) {
        nameLabel.text = tweet.name
        idLabel.text = "@" + tweet.id
        dateLabel.text = TweetCell.dateFormatter.string(from: tweet.publishDate)
        bodyTextView.text = tweet.body
    }
}
