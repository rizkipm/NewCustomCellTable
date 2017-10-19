//
//  BeritaTableViewCell.swift
//  NewCellCustomCell
//
//  Created by Rizki Syaputra on 10/19/17.
//  Copyright © 2017 Rizki Syaputra. All rights reserved.
//

import UIKit

class BeritaTableViewCell: UITableViewCell {
    @IBOutlet weak var gambarBerita: UIImageView!
    @IBOutlet weak var labelIsi: UILabel!
    @IBOutlet weak var labelTanggal: UILabel!
    
    @IBOutlet weak var labelJudul: UILabel!
    @IBOutlet weak var labelKategori: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
