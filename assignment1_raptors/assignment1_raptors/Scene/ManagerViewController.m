//
//  ManagerViewController.m
//  assignment1_raptors
//
//  Created by Batuhan Ipci on 2022-06-19.
//

#import "ManagerViewController.h"
#import "ResetViewController.h"
@interface ManagerViewController ()

@end

@implementation ManagerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:YES];
    [self.delegate updateTicketList:self.ticketList];
}



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"history"]) {
        HistoryTableViewController *historyVC = [segue destinationViewController];
        //NSLog(@"Number of items in history: %lu",self.ticketHistory.count);
        //NSMutableArray *arr = [[NSMutableArray alloc]initWithObjects:historyVC, nil];
        historyVC.ticketHistory = self.ticketHistory;
    }
    if ([segue.identifier isEqualToString:@"reset"]) {
        ResetViewController *resetVC = [segue destinationViewController];        
        resetVC.ticketList = self.ticketList;
    }
}



-(void)updatePickerView:(NSMutableArray *)ticketList {
    self.ticketList = ticketList;
}


@end
