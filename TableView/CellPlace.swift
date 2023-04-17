//
//  CellPlace.swift
//  TableView
//
//  Created by Michelle on 17/04/23.
//

import Foundation
import UIKit

class CellPalce: UITableViewCell {
    
    var labelName: UILabel!
    var imagePhoto: UIImageView!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let screenSize = UIScreen.main.bounds
        let cellWidth = screenSize.width
        let cellHeight = screenSize.height*0.2
        
        self.imagePhoto = UIImageView(frame: CGRect(x: cellWidth*0.05, y: cellHeight*0.05, width: cellWidth*0.6, height: cellHeight*0.9))
        
        self.labelName = UILabel(frame: CGRect(x: cellWidth*0.7, y: 0, width: cellWidth*0.3, height: cellHeight/2))
        self.labelName.center.y = cellHeight/2
        
        self.addSubview(labelName)
        self.addSubview(imagePhoto)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
