//
//  CCFactory.m
//  Pirate Adventure
//
//  Created by Mohit Jain on 30/08/14.
//  Copyright (c) 2014 CodeBeerStartups. All rights reserved.
//

#import "CCFactory.h"
#import "CCTile.h"

@implementation CCFactory

-(NSArray *)tiles
{
    CCTile *tile1 = [[CCTile alloc] init];
    tile1.story = @"Story 1";
    
    CCTile *tile2 = [[CCTile alloc] init];
    tile2.story = @"Story 2";
    
    CCTile *tile3 = [[CCTile alloc] init];
    tile3.story = @"Story 3";
    
    NSMutableArray *firstColumn = [[NSMutableArray alloc] init];
    [firstColumn addObject:tile1];
    [firstColumn addObject:tile2];
    [firstColumn addObject:tile3];
    
    CCTile *tile4 = [[CCTile alloc] init];
    tile4.story = @"Story 4";
    
    CCTile *tile5 = [[CCTile alloc] init];
    tile5.story = @"Story 5";
    
    CCTile *tile6 = [[CCTile alloc] init];
    tile6.story = @"Story 6";
    
    NSMutableArray *secondColumn = [[NSMutableArray alloc] init];
    [secondColumn addObject:tile4];
    [secondColumn addObject:tile5];
    [secondColumn addObject:tile6];
    
    
    CCTile *tile7 = [[CCTile alloc] init];
    tile7.story = @"Story 7";
    
    CCTile *tile8 = [[CCTile alloc] init];
    tile8.story = @"Story 8";
    
    CCTile *tile9 = [[CCTile alloc] init];
    tile9.story = @"Story 9";
    
    NSMutableArray *thirdColumn = [[NSMutableArray alloc] init];
    [thirdColumn addObject:tile7];
    [thirdColumn addObject:tile8];
    [thirdColumn addObject:tile9];
    
    
    CCTile *tile10 = [[CCTile alloc] init];
    tile10.story = @"Story 10";
    
    CCTile *tile11 = [[CCTile alloc] init];
    tile11.story = @"Story 11";
    
    CCTile *tile12 = [[CCTile alloc] init];
    tile12.story = @"Story 12";
    
    NSMutableArray *fourthColumn = [[NSMutableArray alloc] init];
    [fourthColumn addObject:tile10];
    [fourthColumn addObject:tile11];
    [fourthColumn addObject:tile12];
    
    
    NSArray *tiles = [[NSArray alloc] initWithObjects:firstColumn, secondColumn, thirdColumn, fourthColumn, nil];
    return tiles;
}

@end
