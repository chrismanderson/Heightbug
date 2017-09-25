Using iOS 11, I can successfully get a self-sizing `UITableViewCellStyle.subtitle` cell to dynamically adjust its height by setting the `numberOfLines` property on the `detailTextLabel` to 0.

    public class SubtitleCell: UITableViewCell {
        public override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
            super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)

            self.textLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
            self.detailTextLabel?.numberOfLines = 0
        }
    }

I've also ensured auto-resizing is enabled on the tableView.

    tableView.estimatedRowHeight = UITableViewAutomaticDimension
    tableView.rowHeight = UITableViewAutomaticDimension

In iOS 11, with only these two changes, I get a resized cell. Great!

[![enter image description here][1]][1]

However, in iOS 10, with the same code, my table view cells do not resize.

[![enter image description here][2]][2]

I know that iOS 11 made autoresizing table views the default. However, I did not believe that Apple made any other functional changes to table views or table view cells. 

Why, even when enabling autoresizing table views, I cann't get the `subtitle` cell style to resize properly? When I use the live view inspector, I don't see any constraints in the table view cell on either the iOS 11 or iOS 10 cells. So, I feel like Apple made an underlying change to the default UITableViewCell styles, but I cannot find any reference to it.

[Sample Project][3]


  [1]: https://i.stack.imgur.com/CCjxL.png
  [2]: https://i.stack.imgur.com/W6PbZ.png
  [3]: https://github.com/chrismanderson/Heightbug "Sample Project"
