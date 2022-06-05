//
//  Calculator_Brain.m
//  Calculator
//
//  Created by Batuhan Ipci on 2022-06-01.
//

#import "Calculator_Brain.h"

@interface Calculator_Brain()//private method and props
@property (nonatomic, strong) NSMutableArray *items;
-(double)popItem;
@end

@implementation Calculator_Brain

-(NSMutableArray*)items{//lazy loading
    if (_items == nil)
        _items = [[NSMutableArray alloc]init];
    return _items;
}

-(void)pushItem:(double)number{
    [self.items addObject:[NSNumber numberWithDouble:number]];
}

-(double)calculate:(NSString *)operation{
    if ([operation isEqualToString:@"+"])
        return [self popItem] + [self popItem];
    else if([operation isEqualToString:@"*"])
        return [self popItem] * [self popItem];
    return -1;
}

-(double)popItem{
    NSNumber *lastObj=[self.items lastObject];
    if (lastObj)[self.items removeLastObject];
    return [lastObj doubleValue];
    
}
@end
