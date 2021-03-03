/*

This file gets the content and settings for IPMs from ipm-settings.js

*/

//--------------------------------------
// Execution
//--------------------------------------

window.onload = function() {

  var daysLeft  = getParam('daysleft');
  var totalDays = getParam('totaldays');
  var lang      = getParam('ln');
  var sname     = getParam('sname');
  var sdate     = returnFormattedDate(getParam('sdate'));
  var lang      = getParam('ln');
  var link      = 'https://www.ultraedit.com/store/solo/renew.php?l=' + getParam('licid') + '&k=f1d89h9h13hyHD3hS';
  var percent   = 0;


  /* ----------------------------------
      1) Set class for "days left" text
  ------------------------------------- */
  if (daysLeft == 1) {
    changeClassByID('daysLeftText', 'l_lastDayText')
  } else if (daysLeft < 1) {
    changeClassByID('daysLeftText', 'l_noDaysText')
  }


  /* ----------------------------------
      2) Localize strings
  ------------------------------------- */
  if (!lang || loc_supportedLangs.indexOf(lang) == -1) {
    lang = "en";
  }

  for (var str in loc_langs) {
    var uid = 'l_' + str;
    var els = document.querySelectorAll('.' + uid);
    for (var i = 0; i < els.length; i++) {
      els[i].innerHTML = loc_langs[str][lang];
    }
  }


  /* ----------------------------------
      2) Inject dynamic content
  ------------------------------------- */
  replaceInnerHTML('subscriptionName', sname);    // subscription name
  replaceInnerHTML('renewalDate', sdate);         // renewal date
  replaceInnerHTML('daysLeft', daysLeft);     // days left
  if (a = document.getElementById('renewLink')) { // renew link
    a.setAttribute('href', link);
  }


  /* ----------------------------------
      3) Build progress bar
  ------------------------------------- */
  // Set % of trial left if values are numbers
  if ((daysLeft && !isNaN(daysLeft)) && (totalDays && !isNaN(totalDays))) {
    var percent   = (daysLeft / totalDays) * 100;
  }

  // Set borders
  switch(percent) {
    case 0:
      progressBorder = ' border-width: 0;';
      break;
    case 100:
      progressBorder = ' border-left: 1px solid;';
      break;
    default:
      progressBorder = 'border-left: 0;';
  }

  var progressBarHTML = '<div id="trial-progress"><span style="float: right; width: ' + percent + '%;' + progressBorder + '"></span></div>';

  replaceInnerHTML('progress-bar', progressBarHTML);


  window.location.href = "#ONLOADCOMPLETE";
}


/* -----------------------------
Internally used functions
----------------------------- */


/* IE9 doesn't support indexOf so we have to create it ourselves */
if (!Array.prototype.indexOf) {
  Array.prototype.indexOf = function (searchElement /*, fromIndex */ ) {
    'use strict';
    if (this == null) {
      throw new TypeError();
    }
    var n, k, t = Object(this),
        len = t.length >>> 0;

    if (len === 0) {
      return -1;
    }
    n = 0;
    if (arguments.length > 1) {
      n = Number(arguments[1]);
      if (n != n) { // shortcut for verifying if it's NaN
        n = 0;
      } else if (n != 0 && n != Infinity && n != -Infinity) {
        n = (n > 0 || -1) * Math.floor(Math.abs(n));
      }
    }
    if (n >= len) {
      return -1;
    }
    for (k = n >= 0 ? n : Math.max(len - Math.abs(n), 0); k < len; k++) {
      if (k in t && t[k] === searchElement) {
        return k;
      }
    }
    return -1;
  };
}

// Gets URL parameters
function getParam(name) {
  return decodeURIComponent((new RegExp('[?|&]' + name + '=' + '([^&;]+?)(&|#|;|$)').exec(location.search)||[,""])[1].replace(/\+/g, '%20'))||null
}


// replace the innerHTML of an element (targeted by ID)
function replaceInnerHTML(replaceID, replaceWith) {
  var e = document.getElementById(replaceID);
  if (e) e.innerHTML = replaceWith;
}


// converts Unix epoch timestamp to date
function returnFormattedDate(timestamp) {
  var d = new Date(timestamp*1000);
  t = d.getFullYear() + '-' + ('0' + (d.getMonth()+1)).slice(-2) + '-' + ('0' + d.getDate()).slice(-2);
  return t;
};


// select element by class then change its ID
function changeClassByID(currentID, newClass) {
  var e = document.getElementById(currentID);
  e.className  = newClass;
}
