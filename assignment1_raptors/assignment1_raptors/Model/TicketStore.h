//
//  TicketStore.h
//  assignment1_raptors
//
//  Created by Batuhan Ipci on 2022-06-18.
//

#import "Ticket.h"
#import "TicketHistory.h"
NS_ASSUME_NONNULL_BEGIN

@interface TicketStore : Ticket

@property (strong, nonatomic) NSMutableArray *ticketList;
@property (nonatomic) TicketHistory *ticketHistory;

@property (nonatomic, strong) Ticket *balconyLvl;
@property (nonatomic, strong) Ticket *lowerLvl;
@property (nonatomic, strong) Ticket *courtside;


@end

NS_ASSUME_NONNULL_END
