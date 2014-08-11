eBayKit
===========

A simple iOS wrapper inspired by <a href='https://github.com/shyambhat/InstagramKit'>InstagramKit</a> for integrating your app with eBay platform.

This framework is built atop AFNetworking’s blocks-based architecture.
It’s neat, fast and works like a charm providing an easy interface to interacting with eBay’s model objects.

The only method which is implemented is the eBay method "findItemsAdvanced", which allows the user to get all product information. If I forgot something, just let me know and I will add it / fix it.

###Installation

First, you will need to create a developer account on eBay (https://developer.ebay.com).
Once you create your accout, grab the AppId eBay generates for you. You will need it.

Just copy the folder 'EbayKit' to your project.
In EbayKit.plist, paste your AppId instead of <Client id here>.

##Usage

