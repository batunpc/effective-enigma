//
//  TicketStore.m
//  assignment1_raptors
//
//  Created by Batuhan Ipci on 2022-06-18.
//

#import "TicketStore.h"

@implementation TicketStore

/// lazy load
- (NSMutableArray *)ticketList {
    if (_ticketList == nil) {
        _ticketList = [[NSMutableArray alloc]initWithObjects:self.balconyLvl, self.lowerLvl, self.courtside, nil];
    }
    return _ticketList;
}

- (TicketHistory *)ticketHistory {
    if (_ticketHistory == nil) {
        _ticketHistory = [[TicketHistory alloc]init];
    }
    return _ticketHistory;
}

- (Ticket *)balconyLvl {
    if (_balconyLvl == nil) {
        _balconyLvl = [[Ticket alloc]init];
        [_balconyLvl setTicketType:@"Balcony Level"];
        [_balconyLvl setQuantity:12];
        [_balconyLvl setPrice:1170];
    }
    return _balconyLvl;
}

-(Ticket *)lowerLvl {
    if (_lowerLvl == nil) {
        _lowerLvl = [[Ticket alloc]init];
        [_lowerLvl setTicketType:@"Lower Level"];
        [_lowerLvl setQuantity:20];
        [_lowerLvl setPrice:10434];
    }
    return _lowerLvl;
}

- (Ticket *)courtside {
    if (_courtside == nil) {
        _courtside = [[Ticket alloc]init];
        [_courtside setTicketType:@"Courtside"];
        [_courtside setQuantity:15];
        [_courtside setPrice:27777];
        
    }
    return _courtside;
}


@end
