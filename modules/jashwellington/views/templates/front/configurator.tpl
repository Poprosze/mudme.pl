{extends file='page.tpl'}

{block name='page_content'}
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tiny-slider/2.9.2/min/tiny-slider.js"></script>
    <!-- NOTE: prior to v2.2.1 tiny-slider.js need to be in <body> -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tiny-slider/2.9.4/tiny-slider.css">
    <div class="brand-heading mb-3 mt-4">
        <h3 class="h3">{l s='Configure your set' d='Modules.Jashwellington.Front'}</h3>
    </div>
    <p class="text-center mb-6">
        {l s='Choose the boosts and some warmers' d='Modules.Jashwellington.Front'}
    </p>
    <div class="configurator__products">
        {if $wellingtons|@count > 0}
            <div class="my-slider__wrapper">

                <div class="products row configurator-slider configurator-slider--first">
                    {foreach from=$wellingtons item=wellington}
                        <article class="product-miniature">
                            <div class="thumbnail-container">
                                <a href="{$wellington.product.url}" class="thumbnail product-thumbnail">
                                    <img class="img-fluid" src="{$wellington.product.image_wellington}" loading="lazy">
                                </a>
                                <div class="product-description" style="text-align: center;">
                                    <h3 class="h3 product-title">
                                        <a href="{$wellington.product.url}">{$wellington.product.name}</a></h3>

                                    <div class="product-price-and-shipping">
                                        <span class="price">{$wellington.product.price_formatted}</span>
                                    </div>
                                    <a class="btn btn-primary select-wellington"
                                       data-idp="{$wellington.product.id}"
                                       data-name="{$wellington.product.name}"
                                       data-price-text="{$wellington.product.price_formatted}"
                                       data-price="{$wellington.product.price}"
                                       style="color: white;">{l s='Go to select warmer' mod='jashwellington'}</a>
                                </div>
                        </article>
                    {/foreach}
                </div>
            </div>
        {/if}

        {if $warmers|@count > 0}
            <div class="my-slider-top__wrapper">

                <div class="products row configurator-slider configurator-slider--second">
                    {foreach from=$warmers item=warmer}
                        <article class="product-miniature">
                            <div class="thumbnail-container">
                                <a href="{$warmer.product.url}" class="thumbnail product-thumbnail">
                                    <img src="{$warmer.product.image_warmer}"
                                         loading="lazy" class="img-fluid warmer-img warmer-img--standard">
                                    <img src="{$warmer.product.image_warmer2}" alt=""
                                         class="img-fluid warmer-img warmer-img--second">
                                </a>
                                <div class="product-description" style="text-align: center;">
                                    <h3 class="h3 product-title">
                                        <a href="{$warmer.product.url}">{$warmer.product.name}</a></h3>

                                    <div class="product-price-and-shipping">
                                        <span class="price">{$warmer.product.price_formatted}</span>
                                    </div>

                                    <a class="btn btn-primary select-warmer" data-idp="{$warmer.product.id}"
                                       data-name="{$warmer.product.name}"
                                       data-price-text="{$warmer.product.price_formatted}"
                                       data-price="{$warmer.product.price}"
                                       style="color: white;">{l s='Select size' mod='jashwellington'}</a>
                                </div>
                        </article>
                    {/foreach}
                </div>
            </div>
        {/if}
        <div class="combined-info">
            <div class="selected-wellington">
                <strong class="selected-wellington__name"></strong>
                <span class="selected-wellington__price"></span>
            </div>
            <span class="combined-info__divider"> + </span>
            <div class="selected-warmer">
                <strong class="selected-warmer__name"></strong>
                <span class="selected-warmer__price"></span>
            </div>
        </div>

    </div>
    <div class="sizes-wrapper">
        {l s='Choose size' d='Modules.Jashwellington.Front'}
        <div class="sizes">

        </div>
    </div>
    <div class="combined-price">
        {l s='Together' d='Modules.Jashwellington.Front'}

        <strong>
            <span class="combined-price__value"></span> {$currency.sign}
        </strong>
    </div>
    <div class="add-to-cart-section">
        <a class="btn btn-primary configurator-add-to-cart px-5"> {l s='Add to cart' d='Modules.Jashwellington.Front'}</a>
    </div>


    <div class="modal fade configurator-cart-confirmation" id="configurator-cart-confirmation" tabindex="-1" role="dialog" aria-labelledby=configurator-cart-confirmation" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="pt-5 pb-3 text-center">
                    {l s='Products added successfully to cart' d='Modules.Jashwellington.Front'}
                </div>
                <div class="pb-5">
                    <div class="row flex-column align-items-center">
                        <a href="{$urls.pages.cart}" class="btn btn-primary ">{l s='go to cart' d='Modules.Jashwellington.Front'}</a>
                        <a href="{$urls.base_url}" class="pt-3">{l s='return to buy' d='Modules.Jashwellington.Front'}</a>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
    <div class="configurator__footer">
        <a class="" href="{$urls.page.base}">{l s='Back to shop' d='Modules.Jashwellington.Front'}</a>
    </div>
{/block}