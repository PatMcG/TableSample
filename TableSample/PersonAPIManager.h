//
//  PersonAPIManager.h
//  TableSample
//
//  Created by Patrick McGarity on 12/3/15.
//  Copyright © 2015 Patrick McGarity. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"


typedef void (^PersonCompletionHandler)(NSDictionary *dictionary, NSError *error);

@interface PersonAPIManager : NSObject

//Class Method that fetches the JSON object
+ (void)getPeopleForBaseURL:(NSString *)baseURL
            completionHandler:(PersonCompletionHandler)completion;

@end
