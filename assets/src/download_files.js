
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



function checkServiceWorker() {
  changeStyleByClass('service-worker-not-supported','display','none');
  changeStyleByClass('service-worker-installing','display','none');
  changeStyleByClass('outdated-files','display','none');
  changeStyleByClass('before-load','display','none');
  changeStyleByClass('after-load','display','none');
  changeStyleByClass('during-load','display','none');

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

      //Listen to messages
      messageChannel.port1.onmessage = (event) => {
        var msg = event.data.toString();
        console.log('Message received: '+msg);
        if (msg.startsWith('Downloading')) {
          var elem = document.getElementById('during-load');
          elem.innerHTML = msg;
        }
      };
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