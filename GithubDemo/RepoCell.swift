//
//  RepoCell.swift
//  GithubDemo
//
//  Created by samman on 2/22/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class RepoCell: UITableViewCell {

    @IBOutlet weak var repoNameLabel: UILabel!
    @IBOutlet weak var repoAuthorLabel: UILabel!
    
    var repo: GithubRepo! {
        didSet {
            repoNameLabel.text = repo.name
            repoAuthorLabel.text = repo.ownerHandle
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
