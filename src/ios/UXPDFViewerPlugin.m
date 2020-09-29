//
//  UXPDFViewerPlugin.m
//  cordova.plugins.uxpdfviewers
//
//  Created by Victoria Petrenko on 1/28/20.
//  Copyright © 2020 TestName. All rights reserved.
//

#import "UXPDFViewerPlugin.h"

#import "UXReaderDocument.h"
#import "UXReaderViewController.h"

@interface UXPDFViewerPlugin () <UXReaderViewControllerDelegate>

@property (nonatomic, strong) NSString *tempPath;

@end

@implementation UXPDFViewerPlugin
{
    NSString *tmpCommandCallbackID;
}

#pragma mark - UXPDFViewerPlugin Public Methods

- (void)openPDF:(CDVInvokedUrlCommand*)command {
    
    NSString *pdfFile = @"";
    NSMutableDictionary *options = [command.arguments objectAtIndex:0];
    // URL
    NSString *urlPath = [options objectForKey:@"url"];
    NSURL *URL = [NSURL fileURLWithPath:urlPath];
    UXReaderDocument *document = [[UXReaderDocument alloc] initWithURL:URL];
    UXReaderViewController *readerViewController = [[UXReaderViewController alloc] init]; [readerViewController setDelegate:self];
    [readerViewController setDocument:document]; [readerViewController setDisplayMode:UXReaderDisplayModeSinglePageScrollH];
    [self.viewController presentViewController:readerViewController animated:YES completion:NULL];
}

#pragma mark - UXReaderViewControllerDelegate

- (void)dismissReaderViewController:(nonnull UXReaderViewController *)viewController {
    
}

- (void)encodeWithCoder:(nonnull NSCoder *)coder {
    
}

- (void)traitCollectionDidChange:(nullable UITraitCollection *)previousTraitCollection {
    
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(nonnull id<UIContentContainer>)container {
    
}

- (CGSize)sizeForChildContentContainer:(nonnull id<UIContentContainer>)container withParentContainerSize:(CGSize)parentSize {
    return [UIScreen mainScreen].bounds.size;
}

- (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(nonnull id<UIContentContainer>)container {
    
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(nonnull id<UIViewControllerTransitionCoordinator>)coordinator {
    
}

- (void)willTransitionToTraitCollection:(nonnull UITraitCollection *)newCollection withTransitionCoordinator:(nonnull id<UIViewControllerTransitionCoordinator>)coordinator {
    
}

- (void)didUpdateFocusInContext:(nonnull UIFocusUpdateContext *)context withAnimationCoordinator:(nonnull UIFocusAnimationCoordinator *)coordinator {
    
}

- (void)setNeedsFocusUpdate {
    
}

- (BOOL)shouldUpdateFocusInContext:(nonnull UIFocusUpdateContext *)context {
    return YES;
}

- (void)updateFocusIfNeeded {
    
}

@end
