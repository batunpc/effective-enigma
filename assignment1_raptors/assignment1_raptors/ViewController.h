//
//  ViewController.h
//  assignment1_raptors
//
//  Created by Batuhan Ipci on 2022-06-17.
//

#import <UIKit/UIKit.h>
#import "Ticket.h"
#import "TicketStore.h"

@interface ViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

@property (weak, nonatomic) IBOutlet UILabel *ticketQntLbl;
@property (weak, nonatomic) IBOutlet UILabel *ticketTypeLbl;
@property (weak, nonatomic) IBOutlet UILabel *totalTicketPriceLbl;
@property (weak, nonatomic) IBOutlet UIPickerView *ticketPickerView;

// public property
@property(nonatomic,strong) TicketStore *tickets;

// quantity and purchase
- (IBAction)buyTicket:(id)sender;
- (IBAction)ticketQntEntered:(id)sender;

@end

