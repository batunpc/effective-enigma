//
//  DetailViewController.m
//  assignment1_raptors
//
//  Created by Batuhan Ipci on 2022-06-20.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:true];
    
    [self updateLabel];
}


- (void) updateLabel {
    self.ticketNameLbl.text = self.clickedCell.ticketName;
    self.ticketQntLbl.text = [NSString stringWithFormat:@"%d", self.clickedCell.purchasedQty];
    self.totalLbl.text = self.clickedCell.total;
    
}


@end
