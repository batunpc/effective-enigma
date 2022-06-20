//
//  ViewController.m
//  assignment1_raptors
//
//  Created by Batuhan Ipci on 2022-06-17.
//

#import "ViewController.h"
@interface ViewController ()
@property (nonatomic, strong)NSMutableArray *ticketList;
@property (nonatomic) NSMutableArray *ticketHistory;
@property BOOL isEntered;
@end


@implementation ViewController
//Lazy loading
- (TicketStore *)tickets {
    if (_tickets == nil) {
        _tickets = [[TicketStore alloc]init];
    }
    return _tickets;
}

- (NSMutableArray *)ticketList {
    if (_ticketList == nil) {
        _ticketList = [[NSMutableArray alloc]init];
    }
    return _ticketList;
}

- (NSMutableArray *)ticketHistory {
    if (ticketHistory == nil) {
        ticketHistory = [[NSMutableArray alloc]init];
    }
    return ticketHistory;
}

@synthesize ticketHistory;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.ticketList = [NSMutableArray arrayWithArray:self.tickets.ticketList];
    self.isEntered = YES;
    // PickerView Delegate & DataSource
    _ticketPickerView.delegate = self;
    _ticketPickerView.dataSource = self;
}


//MARK: ==== PirckerView Delegate & DataSource Methods ====
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return 3;
}
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    NSString *dataObject = [[self.ticketList objectAtIndex:row]ticketBanner];
    return dataObject;
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    self.ticketTypeLbl.text = [[self.ticketList objectAtIndex:row] ticketType];
}

//MARK: ==== Buttons ====
- (IBAction)ticketQntEntered:(UIButton*)sender {
    if (self.isEntered) {
        self.ticketQntLbl.text = [NSString stringWithFormat:@"%@", sender.titleLabel.text];
        
        self.isEntered = NO;
    } else {
        self.ticketQntLbl.text = [NSString stringWithFormat:@"%@%@", self.ticketQntLbl.text, sender.titleLabel.text];
    }
}

- (IBAction)buyTicket:(id)sender {
    
    // Calculate and update the total
    NSNumber *num = [self calculatePriceWithTicket:self.ticketTypeLbl.text number:[self.ticketQntLbl.text doubleValue]];
    self.totalTicketPriceLbl.text = [NSNumberFormatter localizedStringFromNumber:num numberStyle:NSNumberFormatterCurrencyStyle];
    
    // Subtract the remaining quantity and update the array
    if ([self.ticketTypeLbl.text isEqualToString:@"Balcony Level"]) {
        self.tickets.balconyLvl.quantity = [self.ticketQntLbl.text intValue];
        [self.ticketList replaceObjectAtIndex:0 withObject: self.tickets.balconyLvl];
        [self.ticketPickerView  reloadAllComponents];

    }
    else if ([self.ticketTypeLbl.text isEqualToString:@"Lower Level"]) {
        self.tickets.lowerLvl.quantity = [self.ticketQntLbl.text intValue];
        [self.ticketList replaceObjectAtIndex:1 withObject:self.tickets.lowerLvl];
        [self.ticketPickerView  reloadAllComponents];
    }
    else if ([self.ticketTypeLbl.text isEqualToString:@"Courtside"]) {
        self.tickets.courtside.quantity = [self.ticketQntLbl.text intValue];
        [self.ticketList replaceObjectAtIndex:2 withObject:self.tickets.courtside];
        [self.ticketPickerView  reloadAllComponents];
    }

    TicketHistory *purchasedTicket = [[TicketHistory alloc]initWithName:self.ticketTypeLbl.text quantity:[self.ticketQntLbl.text intValue] total:self.totalTicketPriceLbl.text ];
    
    [self.ticketHistory addObject:purchasedTicket];
    
    // Reload the PickerView
    [self.ticketPickerView  reloadAllComponents];
    // Reset the boolean value for numbers entered
    self.isEntered = YES;
}



// MARK: Helper Method

-(NSNumber*)calculatePriceWithTicket:(NSString*)ticket number:(int)number {

    double totalDouble;
    if ([ticket isEqualToString:@"Balcony Level"]) {
        totalDouble = 1170 * number;
    } else if ([ticket isEqualToString:@"Lower Level"]) {
        totalDouble = 10434 * number;
    } else {
        totalDouble = 27777 * number;
    }
    NSNumber *total = [NSNumber numberWithDouble:totalDouble];
    return total;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"manager"]) {
        ManagerViewController *managerVC = [segue destinationViewController];
        // Set next view controller's delegate to self
        managerVC.delegate = self;
        // Pass list of tickets and purchased history
        managerVC.ticketHistory = self.ticketHistory;
        managerVC.ticketList = self.ticketList;
    }
}

-(void)updateTicketList:(NSMutableArray *)ticketList {
    self.ticketList = ticketList;
}
@end
