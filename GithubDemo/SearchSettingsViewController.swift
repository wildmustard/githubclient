//
//  SearchSettingsViewController.swift
//  GithubDemo
//
//  Created by John Henning on 2/11/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class SearchSettingsViewController: UIViewController {
    
    // Variables
    
    var settings: GithubRepoSearchSettings?
    weak var delegate: SettingsPresentingViewControllerDelegate?
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
        let settingsToSave = settings
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func onCancel(sender: AnyObject) {
        self.delegate?.didCancelSettings()
    }

    
    @IBAction func onSave(sender: AnyObject) {
        self.delegate?.didSaveSettings(settings!)
    }

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }

}

protocol SettingsPresentingViewControllerDelegate: class {
    func didSaveSettings(settings: GithubRepoSearchSettings)
    func didCancelSettings()
}

