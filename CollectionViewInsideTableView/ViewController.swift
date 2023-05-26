//
//  ViewController.swift
//  CollectionViewInsideTableView
//
//  Created by cumulations on 26/05/23.
//

import UIKit



var singerList = [
  SingerData(sectionType: "Bollywood Singers", imageGallary: ["arijit","arrehman","sonunigam","kumarsanu"]),
  SingerData(sectionType: "Punjabi Singers", imageGallary: ["badshah","diljit","gurur","sidhum"]),
  SingerData(sectionType: "Hollywood Singers", imageGallary: ["edsheeran","justinb","katyp","shakira"])
]

class ViewController: UIViewController {
    
    @IBOutlet weak var myTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
        // Do any additional setup after loading the view.
    }


}


extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyTableViewCell
        cell.myCollectionView.tag = indexPath.section
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return singerList.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return singerList[section].sectionType
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = .orange
    }
    
}
