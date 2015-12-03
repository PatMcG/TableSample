//
//  PersonTableViewCell+LayoutPersonCell.h
//  TableSample
//
//  Created by Patrick McGarity on 12/3/15.
//  Copyright © 2015 Patrick McGarity. All rights reserved.
//

#import "PersonTableViewCell.h"
#import "Person.h"

@interface PersonTableViewCell (LayoutPersonCell)

- (void)configureCellWithPerson:(Person *)person;

@end
