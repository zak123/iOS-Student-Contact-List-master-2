//
//  Contact.h
//  ContactList
//
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *email;

+ (Contact *)createWithName:(NSString *)name email:(NSString *)email;
+ (Contact *)findWithIndex:(int)index;
+ (NSArray *)allContacts;
@end
