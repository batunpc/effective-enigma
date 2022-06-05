//
//  main.m
//  Calculator
//
//  Created by Batuhan Ipci on 2022-06-01.
//

#import <Foundation/Foundation.h>
#import "Calculator_Brain.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Calculator_Brain *myCalc = [[Calculator_Brain alloc]init];
        [myCalc pushItem:7];
        [myCalc pushItem:10];
        
        double result = [myCalc calculate:@"+"];
        //[myCalc calculate:@"*"];
        NSLog(@"%f",result);
        
    }
    return 0;
}
