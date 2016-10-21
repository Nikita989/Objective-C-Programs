//
//  Checker.h
//  Palindrome
//
//  Created by Nikita HN LLP on 21/10/16.
//  Copyright © 2016 BridgeLabz Solution LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"
@interface Checker : NSObject
{
    Node *head;
    
}
@property(strong) Node *head;
-(void)addFront:(char)data;
-(void)addRear:(char)data;
-(char)remove;
-(void)display;
@end
