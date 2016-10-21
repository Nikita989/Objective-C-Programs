//
//  main.m
//  leapyear
//
//  Created by Nikita HN LLP on 10/10/16.
//  Copyright © 2016 BridgeLabz Solution LLP. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int year;
        
       
        int count=0;
        NSLog(@"Enter the year");
        scanf("%d",&year);
         int t=year;
        while (t>0)
        {
            t= t/10;
            count++;
            
        }
        //ensure it is a 4 digit year
        if (count==4) {
    
            if ((year%4)==0) {
               
            NSLog(@"This is a leap year");
            }
        else
            NSLog(@"Not a leap year");
        }
        
        else
            NSLog(@"enter 4 digit year");
       
    }
    return 0;
}
