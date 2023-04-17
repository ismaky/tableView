//
//  ViewController.swift
//  TableView
//
//  Created by Michelle on 17/04/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var tableViewPlaces = UITableView()
    
    var arrayPlaces = [Place(name: "Austrália", photo: #imageLiteral(resourceName: "australia")),
                       Place(name: "Canadá", photo: #imageLiteral(resourceName: "canada")),
                       Place(name: "Chile", photo: #imageLiteral(resourceName: "chile")),
                       Place(name: "Inglaterra", photo: #imageLiteral(resourceName: "madagascar")),
                       Place(name: "Islândia", photo: #imageLiteral(resourceName: "islandia")),
                       Place(name: "Japão", photo: #imageLiteral(resourceName: "japao")),
                       Place(name: "Madagascar", photo: #imageLiteral(resourceName: "madagascar"))]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Lugares"
        
        self.tableViewPlaces.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: view.frame.height)
        self.view.addSubview(tableViewPlaces)
        
        self .tableViewPlaces.dataSource = self
        self.tableViewPlaces.delegate = self
        
        self.tableViewPlaces.register(CellPalce.self, forCellReuseIdentifier: "cell")
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrayPlaces.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CellPalce
                
        cell.imagePhoto.image = self.arrayPlaces[indexPath.row].photo
        cell.labelName.text = self.arrayPlaces[indexPath.row].name
                
                return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
           return self.view.frame.height*0.2
       }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
	
	override var shouldAutorotate: Bool {
		return false
	}

	override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
		return .portrait
	}

}

