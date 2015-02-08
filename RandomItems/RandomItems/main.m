//
//  main.m
//  RandomItems
//
//  Created by Lauren on 2/4/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        
        // Create a mutable array object, store its address in items variable
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        // Send the message addObject: to the NSMutableArray pointed to
        // by the variable items, passing a string each time
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        
        // Send another message, insertObject:atIndex:, to that same array object
        [items insertObject:@"Zero" atIndex:0];
        
        // For every item in the items array ...
        for (NSString *item in items) {
            // print a description of the item
            NSLog(@"%@", item);
        }
        
        BNRItem *item = [[BNRItem alloc] init];
        
        //This creates values in the NSString, "Red Sofa", A1B2C, 100 and gives it to the BNRitem
        //[item setItemName:@"Red Sofa"];
        //[item setSerialNumber:@"A1B2C"];
        //[item setVaueInDollars:100];
        
        item.itemName = @"Red Sofa";
        item.serialNumber = @"A1B2C";
        item.valueInDollars = 100;
        
        
        //NSLog(@"%@ %@ %@ %d", [item itemName], [item dateCreated],
              //[item serialNumber], [item valueInDollars]);
        //NSLog(@"%@ %@ %@ %d", item.itemName, item.dateCreated,
              //item.serialNumber, item.valueInDollars);
        
        //the %@ token is replaced with the result ofsending the description
        //message ti the corresponding argument
        NSLog(@"%@", item);
        
        // Destroy the mutable array object
        items = nil;
        
    }
    return 0;
}

