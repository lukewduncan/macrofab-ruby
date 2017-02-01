
MacroFab Ruby
-------------
----------

![enter image description here](https://mxcdn.macrofab.com/wp-content/uploads/2016/05/logo-macrofab.png)

A simple wrapper to access the MacroFab API in Ruby

*Usage*

 From a REPL (irb, rails c)

 1. `load 'macrofab.rb'`

 2. `mf = Macrofab::Client.new(key: "your token from your account")`
 3. You can then run the following commands to pull data from your Macrofab account
   
   `mf.projects`
   `mf.list_parts`
   `mf.products`
   `mf.list_shipment_notifications`
     `mf.fulfillments`
     `mf.orders`
     `mf.order("order id here")`

This is just a first pass at getting something working, there are no error checks applied and no testing as of yet, so undesirable behavior will occur. Right now you can only `get` data. 