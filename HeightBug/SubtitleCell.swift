//
//  SubtitleCell.swift
//  HeightBug
//
//  Created by Chris Anderson on 9/25/17.
//  Copyright © 2017 Chris Anderson. All rights reserved.
//

import UIKit

public class SubtitleCell: UITableViewCell {
    public override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)

        self.textLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        self.detailTextLabel?.numberOfLines = 0
        self.detailTextLabel?.translatesAutoresizingMaskIntoConstraints = false

    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
