//
//  ManagerViewController.h
//  assignment1_raptors
//
//  Created by Batuhan Ipci on 2022-06-19.
//

#import <UIKit/UIKit.h>
#import "HistoryTableViewController.h"
NS_ASSUME_NONNULL_BEGIN

@protocol UpdateDelegate <NSObject>

-(void)updateTicketList:(NSMutableArray*)ticketList;
@end

@interface ManagerViewController : UIViewController

@property (nonatomic) NSMutableArray *ticketHistory;
@property (nonatomic) NSMutableArray *ticketList;
@property (weak) id <UpdateDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
