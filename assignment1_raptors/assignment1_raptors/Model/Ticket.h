//
//  Ticket.h
//  assignment1_raptors
//
//  Created by Batuhan Ipci on 2022-06-18.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Ticket : NSObject

@property (nonatomic) NSString *ticketType;
@property (nonatomic) int quantity;
@property (nonatomic) double price;

- (NSString *)ticketBanner;

- (void)restock:(int)numberOfTickets;

@end

NS_ASSUME_NONNULL_END
