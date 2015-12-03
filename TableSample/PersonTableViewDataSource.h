//
//  PersonTableViewDataSource.h
//  TableSample
//
//  Created by Patrick McGarity on 12/3/15.
//  Copyright © 2015 Patrick McGarity. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Person.h"

@interface PersonTableViewDataSource : NSObject <UITableViewDataSource>

- (instancetype)initWithItems:(NSArray*)items;
- (Person *)personAtIndexPath:(NSIndexPath*)indexPath;

@end
