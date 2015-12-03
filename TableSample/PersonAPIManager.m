//
//  PersonAPIManager.m
//  TableSample
//
//  Created by Patrick McGarity on 12/3/15.
//  Copyright © 2015 Patrick McGarity. All rights reserved.
//

#import "PersonAPIManager.h"

@implementation PersonAPIManager

+ (void)getPeopleForBaseURL:(NSString *)baseURL completionHandler:(PersonCompletionHandler)completion
{
    NSURL *url = [NSURL URLWithString:baseURL];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
    [self launchRequest:request withCompletionBlock:completion];
}

+ (void)launchRequest:(NSURLRequest *)request withCompletionBlock:(PersonCompletionHandler)completion
{
    if (request)
    {
        NSURLSessionDataTask *task = [[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error)
                                      {
                                          if(completion)
                                          {
                                              if(!error)
                                              {
                                                  NSDictionary *dictionary = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
                                                  completion(dictionary,nil);
                                              }
                                              else
                                              {
                                                  completion(nil,error);
                                              }
                                          }
                                      }];
        [task resume];
    }
}




@end
