//
//  TrailerViewController.swift
//  flix
//
//  Created by Patrick Elisii on 2/25/21.
//

import UIKit
import WebKit

class TrailerViewController: UIViewController {

    @IBOutlet weak var trailer: WKWebView!
    var movie_id = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let trailerUrl = URL(string: "https://api.themoviedb.org/3/movie/"+self.movie_id+"/videos?api_key=<<api_key>>&language=en-US")
        
        let myRequest = URLRequest(url: trailerUrl!)
        trailer.load(myRequest)

        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
