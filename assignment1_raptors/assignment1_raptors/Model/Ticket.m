//
//  Ticket.m
//  assignment1_raptors
//
//  Created by Batuhan Ipci on 2022-06-18.
//

#import "Ticket.h"

@implementation Ticket

-(instancetype)initWithName:(NSString*)name quantity:(int)quantity price:(double)price {
    self = [super init];
    
    if (self) {
        _ticketType = name;
        _quantity = quantity;
        _price = price;
    }
    return self;
}

- (NSString *)ticketBanner {
    return [NSString stringWithFormat:@"%@ Ticket %d - %.2f$", self.ticketType, self.quantity, self.price];
}


- (void)restock:(int)numberOfTickets {
    self.quantity += numberOfTickets;
}

@end
