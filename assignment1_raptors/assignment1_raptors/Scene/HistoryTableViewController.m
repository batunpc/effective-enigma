//
//  HistoryTableViewController.m
//  assignment1_raptors
//
//  Created by Batuhan Ipci on 2022-06-20.
//

#import "HistoryTableViewController.h"
#import "DetailViewController.h"
@interface HistoryTableViewController ()

@end

@implementation HistoryTableViewController

// ticketHistory Lazy Loading
- (NSMutableArray *)ticketHistory {
    if (_ticketHistory == nil) {
        _ticketHistory = [[NSMutableArray alloc]init];
    }
    return _ticketHistory;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.ticketHistory.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    // Configure cell
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"historyCell" forIndexPath:indexPath];
    
    TicketHistory *dataObject = [self.ticketHistory objectAtIndex:indexPath.row];
    
    cell.textLabel.text = dataObject.ticketName;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%d", dataObject.purchasedQty];
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Create a reference to the Detail VC using storyboard
    DetailViewController *detailVC = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailViewController"];
    // Pass selected ticket to the Detail VC
    detailVC.clickedCell = [self.ticketHistory objectAtIndex:indexPath.row];
    // Present the next VC
    [self presentViewController:detailVC animated:YES completion:nil];
}

@end
