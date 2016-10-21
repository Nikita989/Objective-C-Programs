//
//  main.m
//  power
//
//  purpose:
//  To find the nth power of 2
//
//  Created by Nikita HN on 10/10/16.
//  Copyright © 2016 BridgeLabz Solution LLP. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int number;
        int i=0;
        NSLog(@"enter number"); //accepting a number till which the p
        scanf("%d",&number);
        int power=1;
       while (i<=number) {
            
            power=power*2;
            NSLog(@"power is %d",power);
           i++;
        }
       
    }
    return 0;
}
