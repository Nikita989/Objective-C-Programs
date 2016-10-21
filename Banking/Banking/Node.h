//
//  Node.h
//  Banking
//
//  Created by Nikita HN LLP on 20/10/16.
//  Copyright © 2016 BridgeLabz Solution LLP. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject

{
    NSString *data;
    int balance;
    Node *next;
}
@property(readwrite) NSString* data;
@property (retain) Node *next;
@property(readwrite) int balance;
-(id) initNodeWithValue:(NSString*)string balance:(int)amount;


@end
