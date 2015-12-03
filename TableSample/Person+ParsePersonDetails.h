//
//  Person+ParsePersonDetails.h
//  TableSample
//
//  Created by Patrick McGarity on 12/3/15.
//  Copyright © 2015 Patrick McGarity. All rights reserved.
//

#import "Person.h"

@interface Person (ParsePersonDetails)

//This class method takes in a data response and will serialize to JSON and return an array of Person objects
+ (NSArray *)parsePersonData:(NSDictionary *)data;

@end
