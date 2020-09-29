//
//  UXPDFViewerPlugin.h
//  cordova.plugins.uxpdfviewers
//
//  Created by Victoria Petrenko on 09/28/20.
//  Copyright © 2020 TestName. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cordova/CDVPlugin.h>

@interface UXPDFViewerPlugin : CDVPlugin

- (void)openPDF:(CDVInvokedUrlCommand*)command;

@end
