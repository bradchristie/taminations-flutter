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

//  Function to show either full or abbrev
function setAbbrev(isAbbrev) {
  var found = 'false';
  var nodes = document.getElementsByTagName('*');
  for (var i=0; i<nodes.length; i++) {
    var elem = nodes.item(i);
    if (elem.className.indexOf('abbrev') >= 0) {
      elem.style.display = isAbbrev ? '' : 'none';
      found = 'true';
    }
    if (elem.className.indexOf('full') >= 0) {
      elem.style.display = isAbbrev ? 'none' : '';
      found = 'true';
    }
  }
  //  Return value used to hide/show buttons
  return found;
}


//  Show platform-specific text
function showPlatformElements(platform) {
  var nodes = document.getElementsByClassName(platform)
  for (var i=0; i<nodes.length; i++) {
    var elem = nodes.item(i);
    elem.style.display = 'initial';
  }
}

setAbbrev(false)