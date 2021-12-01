App.products = App.cable.subscriptions.create "ProductsChannel",
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    a = document.querySelector('main.store')
    a.innerHTML = data.html

    b = document.getElementById('cart')
    b.innerHTML = data.html1

    # Called when there's incoming data on the websocket for this channel
