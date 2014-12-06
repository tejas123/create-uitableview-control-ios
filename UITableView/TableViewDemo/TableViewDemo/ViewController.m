//
//  ViewController.m
//  TableViewDemo
//
//  Created by TheAppGuruz-New-6 on 06/05/14.
//  Copyright (c) 2014 TheAppGuruz-New-6. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize colors;
- (void)viewDidLoad
{
    [super viewDidLoad];
    colors=[[NSArray alloc]initWithObjects:@"RED",@"YELLOW",@"GREEN",@"BLUE",@"BLACK",@"PURPLE",@"WHITE",nil];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [colors count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:CellIdentifier];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    [cell setBackgroundColor:[UIColor clearColor]];
    // Fetch Color
    NSString *color = [colors objectAtIndex:[indexPath row]];
    
    [cell.textLabel setText:color];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row==0)
    {
        [tableView setBackgroundColor:[UIColor redColor]];
    }
    else if (indexPath.row==1)
    {
        [tableView setBackgroundColor:[UIColor yellowColor]];
    }
    else if (indexPath.row==2)
    {
        [tableView setBackgroundColor:[UIColor greenColor]];
    }
    else if (indexPath.row==3)
    {
        [tableView setBackgroundColor:[UIColor blueColor]];
    }
    else if (indexPath.row==4)
    {
        [tableView setBackgroundColor:[UIColor blackColor]];
    }
    else if (indexPath.row==5)
    {
        [tableView setBackgroundColor:[UIColor purpleColor]];
    }
    else if (indexPath.row==6)
    {
        [tableView setBackgroundColor:[UIColor whiteColor]];
    }
}

@end
