App.products = App.cable.subscriptions.create "ProductsChannel",
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->

     console.log('data: ', data.product.id)

     productEl = document.getElementById('product-' + data.product.id)
#
     productEl.getElementsByClassName('price')[0].innerHTML = data.product.price

     productEl = document.getElementById('cart-product-' + data.product.id)

     quantity = productEl.getElementsByClassName('quantity')[0].innerHTML

     productEl.getElementsByClassName('price')[0].innerHTML = data.product.price * quantity

#    $('#product-' + data.product.id).find('.price').html(data.product.price);
#    a = document.querySelector('main.store')
#    a.innerHTML = data.html
#
#    b = document.getElementById('cart')
#    b.innerHTML = data.html1

    # Called when there's incoming data on the websocket for this channel
