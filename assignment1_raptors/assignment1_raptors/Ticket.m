//
//  Ticket.m
//  assignment1_raptors
//
//  Created by Batuhan Ipci on 2022-06-18.
//

#import "Ticket.h"

@implementation Ticket



// Description Method
- (NSString *)ticketBanner {
    return [NSString stringWithFormat:@"%@ Ticket %d - %.2f$", self.ticketType, self.quantity, self.price];
}


- (void)restock:(int)numberOfTickets {
    self.quantity += numberOfTickets;
}

@end
