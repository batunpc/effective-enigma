//
//  ResetViewController.m
//  assignment1_raptors
//
//  Created by Batuhan Ipci on 2022-06-21.
//

#import "ResetViewController.h"

@interface ResetViewController ()
@property NSInteger objectIndex;

@end

@implementation ResetViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return self.ticketList.count;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return [[self.ticketList objectAtIndex:row]ticketBanner];
}


-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    self.objectIndex = row;
}


- (IBAction)cancel {
    self.txtFld.text = @"0";
}


- (IBAction)okPressed {
    Ticket *selectedTicket = [self.ticketList objectAtIndex:self.objectIndex];
    [selectedTicket restock:[self.txtFld.text intValue]];
    [self.ticketList replaceObjectAtIndex:self.objectIndex withObject:selectedTicket];
    [self.pickerView reloadAllComponents];
}
@end
