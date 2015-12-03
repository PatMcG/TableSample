//
//  PersonTableViewCell+LayoutPersonCell.m
//  TableSample
//
//  Created by Patrick McGarity on 12/3/15.
//  Copyright © 2015 Patrick McGarity. All rights reserved.
//

#import "PersonTableViewCell+LayoutPersonCell.h"

@implementation PersonTableViewCell (LayoutPersonCell)

- (void)configureCellWithPerson:(Person *)person
{
    self.nameLabel.text = person.name;
    self.phoneLabel.text = person.phoneNumber;
}


@end
