//
//  Node.h
//  Palindrome
//
//  Created by Nikita HN LLP on 21/10/16.
//  Copyright © 2016 BridgeLabz Solution LLP. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject
{
    char data;
    Node *next;
}
@property(readwrite) char data;
@property (retain) Node *next;
@property(readwrite) int balance;
-(id) initNodeWithValue:(char)string;


@end
