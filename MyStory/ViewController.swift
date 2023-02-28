
//  ViewController.swift
//  MyStory
//
//  Created by Avery Myart on 2/26/23.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTap(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 0 {
                detailViewController.obj = ContextItem(title: "SGA", image: UIImage(named: "SGA")!, description: "I was SGA President")
            }
            else if tappedView.tag == 1 {
                detailViewController.obj = ContextItem(title: "Donation Drive", image: UIImage(named: "Drive")!, description: "In keeping with my passion for empowering my communities, I Self-Organized a donation drive for 3 Women's and Children's shelters across Northern Virginia and Dc.")
            }
            else if tappedView.tag == 2 {
                detailViewController.obj = ContextItem(title: "Social Activism", image: UIImage(named: "BLM")!, description: "During the BLM and George Floyd Protests, I participating in the peaceful protest for over a week. In my time attending the protest i devilered over $1000 of supplies from peers across Northern Virginia")
            }
        }
    }
}




