
# How to Put Taminations on Your Website

For website authors, class teachers, and callers,
you can put any animation or sequence on your website.
The basic concept is to set up an
[iframe](https://www.w3schools.com/html/html_iframe.asp"),
link it to a specific animation or sequence,
and add the parameter "embed".
That tells Taminations to strip away everything except the
animation and its controls.

## Embed an Animation

The quick and easy way is to view an animation in your browser
and copy the link.  Just click on the Share button and the link
is copied to the clipboard.  Paste it into your HTML page
as the source for your iframe, and append "&embed"
to the end.

## Embed a Definition

View the animation and copy the link, but this time append "&embed&definition" to the end.

## Embed a Sequence

Again, the method is much the same as an animation.  Write your calls in
the sequencer, then copy the link with the Share button.
The starting formation and all the
calls are in the link.  So then paste the link as the source
for your iframe, appending "&embed"
## Additional Settings

To automatically run an animation as soon as it's displayed,
add the "Play" parameter to the link.  In addition,
you can add any setting from the Settings page.
For checkbox settings, add  <name> or <name>=true
to turn it on, <name>=false to force it off.  Other
settings are set as <name>=<value>.
Separate all parameters including these settings
with ampersands.  Be sure to enter names and values exactly as on
the Settings page, case and spacing are important.


Here is an example.  The source link is (broken up and commented)  
```
     The Taminations link
https://www.tamtwirlers.org/taminations/#/
     Parameters for an animation
     These are from copying and pasting an animation link
     Don't worry about the details
?link=plus/fan_the_top
&animname=FantheTopfromRightHandWaves
&level=Plus
&animnum=7
&main=ANIMATIONS
     Here are the additional values
     First, the special "embed"
&embed
     Additional settings
&Play
&Loop
&Grid
&Numbers=1-8
&Couple 4=Black
```