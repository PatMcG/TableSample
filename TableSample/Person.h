//
//  Person.h
//  TableSample
//
//  Created by Patrick McGarity on 12/3/15.
//  Copyright © 2015 Patrick McGarity. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *company;
@property (strong, nonatomic) NSString *age;
@property (strong, nonatomic) NSString *smallImageURL;
@property (strong, nonatomic) NSString *email;
@property (strong, nonatomic) NSString *about;
@property (strong, nonatomic) NSString *phoneNumber;
@property (strong, nonatomic) NSString *address;
@property (assign, nonatomic) BOOL isActive;

@end
