//  Highlight current part
function setPart(part,currentcall)   {
  var nodes = document.getElementsByTagName('span');
  for (var i=0; i<nodes.length; i++) {
    var elem = nodes.item(i);
    var classstr = ' '+elem.className+' ';
    //  Remove any previous highlight
    classstr = classstr.replace('definition-highlight','');
    //  Highlight based on either class or id
    var teststr = ' '+classstr+' '+elem.id+' ';
    //  Highlight either 'Part'nn or Callnn
    if (teststr.indexOf(' '+currentcall+part+' ') > 0 ||
        teststr.indexOf('Part'+part+' ') > 0)
      classstr += 'definition-highlight';
    //  Make sure we don't constantly grow spaces in the class
    classstr = classstr.replace(/^\\s+|\\s+$/g,'');
    elem.className = classstr;
  }
}

function changeStyleByClass(theClass,theStyle,theValue) {
  var found = false;
  var nodes = document.getElementsByTagName('*');
  for (var i=0; i<nodes.length; i++) {
    var elem = nodes.item(i);
    if (elem.className.indexOf(theClass) >= 0) {
      elem.style[theStyle] = theValue;
      found = true;
    }
  }
  return found;
}

//  Function to show either full or abbrev
function setAbbrev(isAbbrev) {
  if (isAbbrev) {
    var b1 = changeStyleByClass('abbrev','display','');
    var b2 = changeStyleByClass('full','display','none');
    return b1 || b2;
  }
  else {
    var b1 = changeStyleByClass('abbrev','display','none');
    var b2 = changeStyleByClass('full','display','');
    return b1 || b2;
  }

}
setAbbrev(false)

//  Show platform-specific text
function showPlatformElements(platform) {
  var nodes = document.getElementsByClassName(platform)
  for (var i=0; i<nodes.length; i++) {
    var elem = nodes.item(i);
    elem.style.display = 'initial';
  }
}

function isFirefox() {
  return navigator.userAgent.toLowerCase().indexOf('firefox') > -1;
}


function checkServiceWorker() {
  changeStyleByClass('service-worker-not-supported','display','none');
  changeStyleByClass('service-worker-installing','display','none');
  changeStyleByClass('outdated-files','display','none');
  changeStyleByClass('before-load','display','none');
  changeStyleByClass('after-load','display','none');
  changeStyleByClass('during-load','display','none');
  if (isFirefox())
    changeStyleByClass('firefox-only','display','');

  // Init port
  const messageChannel = new MessageChannel();
  if ('serviceWorker' in navigator) {
    console.log('Service worker available');
    if (navigator.serviceWorker.controller != null) {
      console.log('Service worker state: '+navigator.serviceWorker.controller.state);
      navigator.serviceWorker.controller.postMessage({type: 'PORT_INITIALIZATION'}, [
        messageChannel.port2,
      ]);
      changeStyleByClass('before-load','display','');

      // Listen to messages
      messageChannel.port1.onmessage = (event) => {
        var msg = event.data.toString();
        if (msg.startsWith('Downloading')) {
          var elem = document.getElementById('during-load');
          elem.innerHTML = msg;
        }
        else if (msg == 'All files downloaded') {
          changeStyleByClass('during-load','display','none');
          changeStyleByClass('after-load','display','');
        }
        else if (msg.startsWith('Cache size')) {
          var cacheSize = parseInt(msg.substr(12));
          console.log("The cache has "+cacheSize+' entries.');
          if (cacheSize > 2000) {
            //  User has already downloaded
          changeStyleByClass('before-load','display','none');
          changeStyleByClass('during-load','display','none');
          changeStyleByClass('after-load','display','');
          }
        }
      };
      navigator.serviceWorker.controller.postMessage('query cache count');
    } else
      //  Service worker installing but not running yet
      changeStyleByClass('service-worker-installing','display','');
  } else
    //  No service worker available
    changeStyleByClass('service-worker-not-supported','display','');
}

function downloadFiles() {
  //  Download everything
  navigator.serviceWorker.controller.postMessage('downloadOffline');
  changeStyleByClass('before-load','display','none');
  changeStyleByClass('during-load','display','');
}