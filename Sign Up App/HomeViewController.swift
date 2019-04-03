//
//  HomeViewController.swift
//  Sign Up App
//
//  Created by Moses Robinson on 2/11/19.
//  Copyright © 2019 Moses Robinson. All rights reserved.
//

import UIKit
import Firebase

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let userChangeRequest = Auth.auth().currentUser?.createProfileChangeRequest()
        userChangeRequest?.displayName = "Moses Robinson Two"
        fullNameLabel.text = userChangeRequest?.displayName
        
    }
    
    // ACTIONS
    
    @IBAction func signOut(_ sender: Any) {
        do {
            try Auth.auth().signOut()
        }
        catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
        }
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let initial = storyboard.instantiateInitialViewController()
        UIApplication.shared.keyWindow?.rootViewController = initial
    }
    
    @IBAction func showProfileTapped(_ sender: Any) {
        
    }
    
    // MARK: - Properties

    @IBOutlet var fullNameLabel: UILabel!
}
