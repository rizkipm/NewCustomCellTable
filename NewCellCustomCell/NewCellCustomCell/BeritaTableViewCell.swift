//
//  BeritaTableViewCell.swift
//  NewCellCustomCell
//
//  Created by Rizki Syaputra on 10/19/17.
//  Copyright © 2017 Rizki Syaputra. All rights reserved.
//

import UIKit

class BeritaTableViewCell: UITableViewCell {

    @IBOutlet weak var isiBerita: UILabel!
    @IBOutlet weak var tanggalBerita: UILabel!
    @IBOutlet weak var judulBerita: UILabel!
    @IBOutlet weak var labelKategori: UILabel!
    @IBOutlet weak var imgGambar: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
