//
//  Calculator_Brain.h
//  Calculator
//
//  Created by Batuhan Ipci on 2022-06-01.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Calculator_Brain : NSObject
-(void)pushItem:(double)number;
-(double)calculate:(NSString*)operation;
@end

NS_ASSUME_NONNULL_END
