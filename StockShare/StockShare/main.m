//
//  main.m
//  StockShare
//
//  Created by Nikita HN LLP on 14/10/16.
//  Copyright © 2016 BridgeLabz Solution LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "share.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        share *obj=[[share alloc]init];
        int numStocks;
        NSLog(@"enter no. of stocks");
        scanf("%d",&numStocks);
       
        [obj entershares:numStocks];
        
        
    }
    return 0;
}
