#Little Printer Payload Inspector

The [Little Printer](http://bergcloud.com/littleprinter/) from [BERG Cloud](http://bergcloud.com/) is fantastic. It brings joy to me every day. I'm also trying to reverse engineer the protocol it uses.

This Ruby script takes a raw binary payload that the bridge sends to the printer over [Zigbee](http://www.zigbee.org) and renders it as a PNG.

##Usage

Run the script like so:

`ruby inspect.rb ./payload.raw`

This will create a file `blah.png`, which will look something like this:

![Example blah.png](http://pics.evilgeek.co.uk/0e6cb9)

The extra black pixels at the very bottom of the image are the header of the payload (the script reverses the data bit-wise so it renders the right way up, hence the header being at the bottom). I've not yet managed to decode the header.

###Apology

The script is horrible. It represents the image as a textual string of 0s and 1s. Viewing it may make you (rightly) question my coding ability.