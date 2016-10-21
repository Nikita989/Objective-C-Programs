//
//  main.m
//  binary
//
//  Created by Nikita HN LLP on 15/10/16.
//  Copyright © 2016 BridgeLabz Solution LLP. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "search.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        search *a = [[search alloc]init];
        int p=1;
        int n,i;
        
        NSLog(@"enter number number of trials");
        scanf("%d",&n);
//        finding nth power of 2;
        for (i=1; i<=n; i++) {
            p=p*2;
        }
        
        
    
        [a binsearch:p steps:n];
        
        
    }
    return 0;
}
