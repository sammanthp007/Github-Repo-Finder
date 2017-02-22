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
    @IBOutlet weak var starImageView: UIImageView!
    @IBOutlet weak var forkImageView: UIImageView!
    @IBOutlet weak var numOfForksLabel: UILabel!
    @IBOutlet weak var repoDescription: UILabel!
    @IBOutlet weak var numOfStarsLabel: UILabel!
    @IBOutlet weak var repoAuthorLabel: UILabel!
    @IBOutlet weak var userImageView: UIImageView!
    
    var repo: GithubRepo! {
        didSet {
            repoNameLabel.text = repo.name!
            repoAuthorLabel.text = "by \(repo.ownerHandle!)"
            numOfForksLabel.text = "\(repo.forks!)"
            numOfStarsLabel.text = "\(repo.stars!)"
            repoDescription.text = repo.repoDescription!
            
            let userImageURL = URL(string: repo.ownerAvatarURL!)
            userImageView.setImageWith(userImageURL!)
            
            starImageView.image = UIImage(named: "fork")
            forkImageView.image = UIImage(named: "star")
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        // have rounded corner in image view
        userImageView.layer.cornerRadius = 3
        userImageView.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
