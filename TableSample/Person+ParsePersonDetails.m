//
//  Person+ParsePersonDetails.m
//  TableSample
//
//  Created by Patrick McGarity on 12/3/15.
//  Copyright © 2015 Patrick McGarity. All rights reserved.
//

#import "Person+ParsePersonDetails.h"

@implementation Person (ParsePersonDetails)

+ (NSArray *)parsePersonData:(NSDictionary *)data
{
    NSMutableArray *peopleArray = [[NSMutableArray alloc] init];
    //Parse person objects and add them to an array
    for(NSDictionary *personDict in data)
    {
        Person *person = [Person returnPersonForDictionary:personDict];
        [peopleArray addObject:person];
    }
    
    return [peopleArray copy];
}

+ (Person *)returnPersonForDictionary:(NSDictionary *)dictionary
{
    Person *person = [[Person alloc] init];
    person.name = dictionary[@"name"];
    person.company = dictionary[@"company"];
    person.smallImageURL = dictionary[@"picture"];
    person.age = dictionary[@"age"];
    person.email = dictionary[@"email"];
    person.phoneNumber = dictionary[@"phone"];
    person.about = dictionary[@"about"];
    person.address = dictionary[@"address"];
    person.isActive = [dictionary[@"isActive"] boolValue];
    
    return person;
}

@end
