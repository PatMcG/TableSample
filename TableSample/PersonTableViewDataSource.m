//
//  PersonTableViewDataSource.m
//  TableSample
//
//  Created by Patrick McGarity on 12/3/15.
//  Copyright © 2015 Patrick McGarity. All rights reserved.
//

#import "PersonTableViewDataSource.h"
#import "PersonTableViewCell+LayoutPersonCell.h"

@interface PersonTableViewDataSource ()

@property (nonatomic, strong) NSArray *people;

@end

NSString *const PersonCellIdentifier = @"personCell";


@implementation PersonTableViewDataSource

- (instancetype)initWithItems:(NSArray *)items
{
    self = [super init];
    
    if (self)
    {
        _people = items;
    }
    
    return self;
}

- (Person *)personAtIndexPath:(NSIndexPath *)indexPath
{
    return self.people[indexPath.row];
}

#pragma mark TableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.people.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    PersonTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:PersonCellIdentifier forIndexPath:indexPath];
    
    Person *person = [self personAtIndexPath:indexPath];
    [cell configureCellWithPerson:person];
    
    return cell;
}


@end
