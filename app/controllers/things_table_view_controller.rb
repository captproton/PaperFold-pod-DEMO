class ThingsTableViewController < UITableViewController

  def bind_with_thing(thing)
    @thing = thing
    view.reloadData
  end
  
  def viewDidLoad
    super
    # Uncomment the following line to preserve selection between presentations.

    # self.clearsSelectionOnViewWillAppear = false

    # Uncomment the following line to display an Edit button in the navigation
    # bar for this view controller.

    # self.navigationItem.rightBarButtonItem = self.editButtonItem
  end

  def viewDidUnload
    super

    # Release any retained subviews of the main view.
    # e.g. self.myOutlet = nil
  end

  def numberOfSectionsInTableView(tableView)
    0
  end

  def tableView(tableView, numberOfRowsInSection:section)
    @thing ? @thing.length : 0
  end

  def tableView(tableView, cellForRowAtIndexPath:indexPath)
    # id = "thing_detail"
    # cell = tableView.dequeueReusableCellWithIdentifier(id) || begin
    #   cell = UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier:id)
    #   cell
    # end

    # thing = @things[indexPath.row]
    # cell.textLabel.text = thing["name"]

    # cell
  end

end
