/*
 * AppController.j
 * iTunesTabView-Example
 *
 * Created by You on November 1, 2010.
 * Copyright 2010, Your Company All rights reserved.
 */

@import <Foundation/CPObject.j>
@import <iTunesTabView/iTunesTabView.j>

@implementation AppController : CPObject
{
}

- (void)applicationDidFinishLaunching:(CPNotification)aNotification
{
    var theWindow = [[CPWindow alloc] initWithContentRect:CGRectMakeZero() styleMask:CPBorderlessBridgeWindowMask],
        contentView = [theWindow contentView];

    var view1 = [[CPView alloc] initWithFrame:CPRectMakeZero()],
        label1 = [CPTextField labelWithTitle:@"Hello from view 1"],
        item1 = [[TNiTunesTabViewItem alloc] initWithIdentifier:@"item1"];
    [label1 setFont:[CPFont boldSystemFontOfSize:24.0]];
    [label1 setFrameOrigin:CPPointMake(10, 10)];
    [label1 sizeToFit];    
    [view1 addSubview:label1];
    [item1 setView:view1];
    [item1 setLabel:@"label 1"];

    var view2 = [[CPView alloc] initWithFrame:CPRectMakeZero()],
        label2 = [CPTextField labelWithTitle:@"Hello from view 2"],
        item2 = [[TNiTunesTabViewItem alloc] initWithIdentifier:@"item2"];
    [label2 setFont:[CPFont boldSystemFontOfSize:24.0]];
    [label2 setFrameOrigin:CPPointMake(10, 10)];
    [label2 sizeToFit];        
    [view2 addSubview:label2];
    [item2 setView:view2];
    [item2 setLabel:@"label 2"];
    
    var view3 = [[CPView alloc] initWithFrame:CPRectMakeZero()],
        label3 = [CPTextField labelWithTitle:@"Hello from view 3"],
        item3 = [[TNiTunesTabViewItem alloc] initWithIdentifier:@"item3"];
    [label3 setFont:[CPFont boldSystemFontOfSize:24.0]];
    [label3 setFrameOrigin:CPPointMake(10, 10)];
    [label3 sizeToFit];    
    [view3 addSubview:label3];
    [item3 setView:view3];
    [item3 setLabel:@"label 3"];
    
    var iTunesTabView = [[TNiTunesTabView alloc] initWithFrame:[contentView frame]];
    [iTunesTabView setAutoresizingMask:CPViewWidthSizable | CPViewHeightSizable]
    [iTunesTabView addTabViewItem:item1];
    [iTunesTabView addTabViewItem:item2];
    [iTunesTabView addTabViewItem:item3];
    
    [contentView addSubview:iTunesTabView];
    [theWindow orderFront:self];

}

@end
