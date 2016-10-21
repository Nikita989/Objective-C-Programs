//
//  main.m
//  Flip Coin
//
//  Created by Nikita HN LLP on 10/10/16.
//  Copyright © 2016 BridgeLabz Solution LLP. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n;
        
        int i = 0;
        int head = 0;
        int tail = 0;
        NSLog(@"Enter number of times to flip");
        scanf("%d",&n);
        
        while (i<n)
        {
            //generating random number between 0 and 1
       double num=drand48();
            
            if (num< 0.5)
            {
                tail=tail+1;
            }
            else
            {
                head=head+1;
            }
            i++;
        }
        
        double perc = (double)head/n*100; //probability of head
        double perc1 = (double)tail/n*100;//probability of tail
        NSLog(@"Head: %d%c",(int)perc,'%');
        NSLog(@"Tail: %d%c",(int)perc1,'%');
        
    }
    return 0;
}
