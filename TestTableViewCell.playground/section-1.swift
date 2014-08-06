// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class DataSource:NSObject, UITableViewDataSource{
    
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int{
        
        return 4;
    }
    
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!{
        
        let row = indexPath.row
        
        let style = UITableViewCellStyle.fromRaw(row)
        
        let cell = UITableViewCell(style:(style ?  style! : UITableViewCellStyle.Default), reuseIdentifier: nil)
        
        cell.textLabel.text = "Text"
        
        if let detailTextLabel = cell.detailTextLabel{
            
            detailTextLabel.text = "Detail Text"
        
        }
        return cell;
    }
}

let ds = DataSource()

let tableView = UITableView(frame: CGRectMake(0,0, 320, 320), style: UITableViewStyle.Plain)
tableView.dataSource = ds
tableView.reloadData()