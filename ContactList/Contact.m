//
//  Contact.m
//  ContactList
//
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Contact.h"

@interface Contact ()
@property (nonatomic, strong) NSMutableArray *contacts;
@end

@implementation Contact

+ (Contact *)createWithName:(NSString *)name email:(NSString *)email{
    Contact *contact = [[Contact alloc] init];
    contact.name = name;
    contact.email = email;
    return contact;
}

- (NSMutableArray *)contacts {
	if ( !_contacts ) {
		_contacts = [NSMutableArray array];
	}
	return _contacts;
}

- (id)init {
	self = [super init];
	if ( self ) {
		// Initalization Code
	}
	return self;
}

- (NSString *)description {
	return @"";
}

@end
