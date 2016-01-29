//
//  RepoCell.swift
//  GithubDemo
//
//  Created by John Henning on 1/28/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit
import AFNetworking

class RepoCell: UITableViewCell {

    // Outlets
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var authorLabel: UILabel!
    @IBOutlet var starsLabel: UILabel!
    @IBOutlet var forksLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    
    @IBOutlet var avatarImageView: UIImageView!
    
    var repo: GithubRepo! {
        didSet {
            nameLabel.text = repo.name
            let imageURL = NSURL(string: repo.ownerAvatarURL!)
            avatarImageView.setImageWithURL(imageURL!)
            starsLabel.text = String(repo.stars!)
            forksLabel.text = String(repo.forks!)
            descriptionLabel.text = repo.repoDescription
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        descriptionLabel.sizeToFit()
        // Set cell outlet 
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
