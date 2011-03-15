//
//  SuoniAppDelegate.h
//  Suoni
//
//  Created by Antonio Malara on 7/30/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface SuoniAppDelegate : NSObject <UIApplicationDelegate>
{
  UIWindow      * window;
  AVAudioPlayer * rimshot;
  AVAudioPlayer * trombone;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

- (IBAction)instantRimshot;
- (IBAction)sadTrombone;

@end

