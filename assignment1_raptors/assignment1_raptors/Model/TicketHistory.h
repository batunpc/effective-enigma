//
//  TicketHistory.h
//  assignment1_raptors
//
//  Created by Batuhan Ipci on 2022-06-19.
//
#import <Foundation/Foundation.h>

#import "Ticket.h"

NS_ASSUME_NONNULL_BEGIN

@interface TicketHistory : Ticket

@property (nonatomic) NSString *ticketName;
@property (nonatomic) int purchasedQty;
@property (nonatomic) NSString *total;

- (instancetype)initWithName:(NSString *)name quantity:(int)quantity total:(NSString *)total;

@end

NS_ASSUME_NONNULL_END
