//  UXPDFViewerPlugin
//
//  Created by Victoria Petrenko 2020/09/28
//
//  Copyright 2020 GmbH. All rights reserved.
//  MIT Licensed

/*  configuration   */

var JS_HANDLE = 'UXPDFViewerPlugin'
var CDV_HANDLE = 'UXPDFViewerPlugin'

var CDV_HANDLE_ACTIONS = {

  OPEN_PDF: 'openPDF'
}

var exec = require('cordova/exec')

/*  public plugin API */

var UXPDFViewerPlugin = {

  openPDF: function (url, onSuccess, onError) {
    var me = this
    var errorPrefix = 'Error in ' + JS_HANDLE + '.openPDF(): '
    try {
      exec(
        function (result) {
          var status = result ? result.status : null

          if (status == 1) {
            if (onSuccess) onSuccess()
          } else if (status == 0) {
            if (onError) onError()
          } else {
            var errorMsg = "unknown state '" + status + "'"
            window.console.log(errorPrefix + errorMsg)
          }
        },
        function (err) {
          window.console.log(errorPrefix + JSON.stringify(err))
          if (onError) onError(err)
        },
        CDV_HANDLE,
        CDV_HANDLE_ACTIONS.OPEN_PDF,
        [{ url: url }]
      )
    } catch (e) {
      window.console.log(errorPrefix + JSON.stringify(e))
      if (onError) onError(e)
    }
  }
}

module.exports = UXPDFViewerPlugin;
