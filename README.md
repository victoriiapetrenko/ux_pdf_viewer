UX PDF Viewer Plugin
============================

The UX PDF Viewer Framework for iOS is a fully open-source iOS PDF Framework based on the open-source PDFium library.

### Features

* Document searching (with options).
* Single page horizontal and vertical scrolling.
* Double page horizontal and vertical scrolling.
* Right to Left and Left to Right UI and document presentation.
* Table of Contents (aka PDF outline or bookmark) extraction.
* Page text extraction (by co-ordinates or character index).
* Page links (goto page and URL).
* Page labels ("Cover", "i", "ii", etc).
* Document metadata extraction (Creator, etc).
* Local NSURL, NSData and custom document data sources.
* Experimental remote NSURL document data source.
* Custom overlay rendering object support (watermarking).
* Opening password protected documents.
* Device rotation and all orientations.

## Overview
1. [Supported Platforms](#supported-platforms)
2. [Installation](#installation)
3. [Using the plugin](#using-the-plugin)
4. [Known issues](#known-issues)

## Supported Platforms ##

* Cordova >=4.4.0
  * iOS 11+

## Installation ##

The plugin can either be installed from git repository, from local file system
through the [Command-line Interface][CLI],
or cloud based through [PhoneGap Build][PGB].

The plugin is published at the [npm plugin registry][CDV_plugin].

An [ionic native wrapper][ionic] for the plugin is available.

### Local development environment
From master:
```bash
# ~~ from master branch ~~
cordova plugin add https://github.com/victoriiapetrenko/victoriiapetrenko/ux_pdf_viewer.git
```
from a local folder:
```bash
# ~~ local folder ~~
cordova plugin add cordova.plugins.uxpdfviewer --searchpath path/to/plugin
```
or to use the last stable version:
```bash
# ~~ stable version ~~
cordova plugin add cordova.plugins.uxpdfviewer
```
or to use a specific version:
```bash
# ~~ stable version ~~
cordova plugin add cordova.plugins.uxpdfviewer@[VERSION]
```

For available versions and additional information visit the [npm plugin registry][CDV_plugin].


## Using the plugin ##

The plugin creates the object ```cordova.plugins.uxpdfviewer```.

The UX PDF Viewer has one method: 

1) openPDF: function (url, onSuccess, onError)


Example:

UXPDFViewerPlugin.openPDF(url, function () {
    return resolve();
}, function (errMsg) {
    return reject(new Error(errMsg));
});

### Common Arguments ###

#### url ####
String pointing to a device local file (e.g. 'file:///...')


### Open pdf ###

```js
cordova.plugins.UXPDFViewerPlugin.openPDF(
    url, onSuccess, onError);
```

## iOS ##

The plugin uses the PDFKit framework.

UX PDF Viewer Plugin includes the UXPDFViewerPlugin h, m files.
Native Mthods:

- (void)openPDF:(CDVInvokedUrlCommand*)command;

## Android ##

Not available


[cordova]: https://cordova.apache.org
[CLI]: http://cordova.apache.org/docs/en/edge/guide_cli_index.md.html#The%20Command-line%20Interface
[winjs]: http://try.buildwinjs.com/
[ionic]: https://github.com/victoriiapetrenko/ux_pdf_viewer


