//
//  TicketHistory.m
//  assignment1_raptors
//
//  Created by Batuhan Ipci on 2022-06-19.
//

#import "TicketHistory.h"

@implementation TicketHistory

- (instancetype)initWithName:(NSString *)name quantity:(int)quantity total:(NSString *)total {
    self = [super init];
    
    if (self) {
        _ticketName = name;
        _purchasedQty = quantity;
        _total = total;
        
    }
    return self;
}

@end
