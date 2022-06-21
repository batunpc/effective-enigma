//
//  ManagerViewController.m
//  assignment1_raptors
//
//  Created by Batuhan Ipci on 2022-06-19.
//

#import "ManagerViewController.h"

@interface ManagerViewController ()

@end

@implementation ManagerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:YES];
    // Pass data to the previous VC
    [self.delegate updateTicketList:self.ticketList];
}



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"history"]) {
        HistoryTableViewController *historyVC = [segue destinationViewController];
        //NSLog(@"Number of items in history: %lu",self.ticketHistory.count);
        //NSMutableArray *arr = [[NSMutableArray alloc]initWithObjects:historyVC, nil];
        
        
        historyVC.ticketHistory = self.ticketHistory;
    }
}


// Protocol Method
-(void)updatePickerView:(NSMutableArray *)ticketList {
    self.ticketList = ticketList;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
