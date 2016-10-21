//
//  main.m
//  Palindrome
//
//  Created by Nikita HN LLP on 21/10/16.
//  Copyright © 2016 BridgeLabz Solution LLP. All rights reserved.


#import <Foundation/Foundation.h>
#import "Checker.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Checker *obj1=[[Checker alloc]init];
        Checker *obj2=[[Checker alloc]init];
        
        char string[20];
       
        NSLog(@"enter string");
        scanf("%s",string);
        NSString *str=[NSString stringWithUTF8String:string];
       
        int len1=[str length];
        
        
        int flag=0;
        //coverting string to array
        for(int i=0; i<len1; i++){
            char temp = [str characterAtIndex:i];
            [obj1 addRear:temp];
            [obj2 addFront:temp];
        }
        for (int i=0; i<len1; i++) {
            
            char val1=[obj1 remove];
            char val2=[obj2 remove];
            if (val1==val2) {
                
                flag=flag+1;
            }
            
        }
        
        if (flag==len1) {
            NSLog(@"it is a palindrome");
        }
        
        else
            NSLog(@"not a palindrome");
    }
    return 0;
}
