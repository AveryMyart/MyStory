//
//  DetailViewController.swift
//  MyStory
//
//  Created by Avery Myart on 2/26/23.
//

import UIKit

class DetailViewController: UIViewController {
    var obj: ContextItem?
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var imageLabel: UIImageView!
    
    @IBOutlet weak var infoTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        titleLabel.text = obj?.title
        imageLabel.image = obj?.image
        infoTextView.text = obj?.description
    }
    

    /*
    // MARK: - Navigation
    */

}
