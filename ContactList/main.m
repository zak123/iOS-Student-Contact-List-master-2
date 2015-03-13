//
//  main.m
//  ContactList
//
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSMutableArray *contacts = [[NSMutableArray alloc] init];
        
        BOOL isRunning = true;
        
        do {
            char str [100];
            
            NSLog(@"Welcome to the app. What's next?");
            NSLog(@" new      - Create a new contact");
            NSLog(@" list     - List all contacts");
            NSLog(@" quit     - Exit Application");
            NSLog(@"> ");
            scanf("%100s", str);
            // Need to convert input to a NSString
            NSString *nsInput = [[NSString alloc] initWithUTF8String: str];
            NSLog(@"%@", nsInput);
            
            if ([nsInput isEqualToString:@"quit"]) {
                isRunning = false;
                break;
            }
            else if ([nsInput isEqualToString:@"new"]) {
                NSString *email = @"lul@goatse.cx";
                NSString *name = @"harriet the spy";
                Contact *newContact = [Contact createWithName:name email:email];
                [contacts addObject:newContact];
            }
            else if ([nsInput isEqualToString:@"list"]) {
                for (Contact *contact in contacts) {
                    NSLog(@"contact name is %@, and email is %@", contact.name, contact.email);
                }
            }
            
        } while (isRunning);
        if (isRunning == false) {
            NSLog(@"wtf???");
        }
        
        
        return 0;
    }
}
