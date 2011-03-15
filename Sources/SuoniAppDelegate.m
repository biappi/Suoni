//
//  SuoniAppDelegate.m
//  Suoni
//
//  Created by Antonio Malara on 7/30/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "SuoniAppDelegate.h"

@implementation SuoniAppDelegate

@synthesize window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;
{
  rimshot  = [[AVAudioPlayer alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"rimshot.mp3"  withExtension:nil] error: nil];
  trombone = [[AVAudioPlayer alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"trombone.mp3" withExtension:nil] error: nil];

  [rimshot prepareToPlay];
  [trombone prepareToPlay];
  
  [window makeKeyAndVisible];
	
	return YES;
}

- (void)dealloc;
{
  [rimshot release];
  [trombone release];
  [window release];
  [super dealloc];
}

- (IBAction)instantRimshot;
{
  [rimshot play];
}

- (IBAction)sadTrombone;
{
  [trombone play];
}

@end
