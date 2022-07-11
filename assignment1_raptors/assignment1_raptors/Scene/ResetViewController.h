//
//  ResetViewController.h
//  assignment1_raptors
//
//  Created by Batuhan Ipci on 2022-06-21.
//

#import <UIKit/UIKit.h>
#import "Ticket.h"
#import "TicketStore.h"



NS_ASSUME_NONNULL_BEGIN
@protocol ResetDelegate <NSObject>
-(void)updatePickerView:(NSMutableArray *)ticketList;
@end

@interface ResetViewController : UIViewController<UIPickerViewDelegate, UIPickerViewDataSource>
@property (nonatomic, strong) NSMutableArray *ticketList;
@property (nonatomic, weak) id <ResetDelegate> delegate;

@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;
@property (weak, nonatomic) IBOutlet UITextField *txtFld;

- (IBAction)okPressed;
- (IBAction)cancel;

@end

NS_ASSUME_NONNULL_END
