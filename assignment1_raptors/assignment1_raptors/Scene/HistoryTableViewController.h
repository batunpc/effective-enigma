//
//  HistoryTableViewController.h
//  assignment1_raptors
//
//  Created by Batuhan Ipci on 2022-06-20.
//

#import <UIKit/UIKit.h>
#import "HistoryTableViewController.h"
#import "TicketStore.h"
#import "TicketHistory.h"


NS_ASSUME_NONNULL_BEGIN

@interface HistoryTableViewController : UITableViewController

@property (nonatomic) NSMutableArray *ticketHistory;

@end

NS_ASSUME_NONNULL_END
