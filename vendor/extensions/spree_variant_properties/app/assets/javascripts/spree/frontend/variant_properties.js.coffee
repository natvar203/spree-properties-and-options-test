$ ->
  radios = ($ '#product-variants input[type="radio"]')

  Spree.updateVariantProperties = (productPermalink, variantId, type_id) ->
    $.get '/products/' + productPermalink + '/variants/' + variantId + '/show_variant_properties'

  radios.click (event) ->
    #Spree.updateVariantProperties @value, @value2
