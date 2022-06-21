//
//  DetailViewController.h
//  assignment1_raptors
//
//  Created by Batuhan Ipci on 2022-06-20.
//

#import <UIKit/UIKit.h>
#import "TicketHistory.h"

NS_ASSUME_NONNULL_BEGIN

@interface DetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *ticketNameLbl;
@property (weak, nonatomic) IBOutlet UILabel *ticketQntLbl;
@property (weak, nonatomic) IBOutlet UILabel *totalLbl;


@property (nonatomic, strong) TicketHistory *clickedCell;

@end

NS_ASSUME_NONNULL_END
