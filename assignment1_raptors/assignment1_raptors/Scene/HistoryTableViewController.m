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
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"historyCell" forIndexPath:indexPath];
    
    TicketHistory *dataObject = [self.ticketHistory objectAtIndex:indexPath.row];
    // cell
    cell.textLabel.text = dataObject.ticketName;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%d", dataObject.purchasedQty];
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    DetailViewController *detailVC = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailViewController"];
    
    detailVC.clickedCell = [self.ticketHistory objectAtIndex:indexPath.row];
    [self presentViewController:detailVC animated:YES completion:nil];
}

@end
