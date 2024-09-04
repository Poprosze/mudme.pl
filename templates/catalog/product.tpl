{**
 * Copyright since 2007 PrestaShop SA and Contributors
 * PrestaShop is an International Registered Trademark & Property of PrestaShop SA
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.md.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to https://devdocs.prestashop.com/ for more information.
 *
 * @author    PrestaShop SA and Contributors <contact@prestashop.com>
 * @copyright Since 2007 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 *}
{extends file=$layout}

{block name='head' append}
    {if $product.show_price}
        <meta property="product:pretax_price:amount" content="{$product.price_tax_exc}">
        <meta property="product:pretax_price:currency" content="{$currency.iso_code}">
        <meta property="product:price:amount" content="{$product.price_amount}">
        <meta property="product:price:currency" content="{$currency.iso_code}">
    {/if}
    {if isset($product.weight) && ($product.weight != 0)}
        <meta property="product:weight:value" content="{$product.weight}">
        <meta property="product:weight:units" content="{$product.weight_unit}">
    {/if}
{/block}

{block name='head' prepend}
    {if $product.default_image}
        <link rel="preload" href="{$product.default_image.bySize.large_default.url}" as="image">
    {/if}
{/block}

{block name='content'}
    <section id="main">

        <div class="row product-container js-product-container">
            <div class="col-md-4 offset-md-1 mb-4 mr-3">
                {block name='page_content_container'}
                    {block name='page_content'}
                        <div class="position-relative">


                            {block name='product_cover_thumbnails'}
                                {include file='catalog/_partials/product-cover-thumbnails.tpl'}
                            {/block}
                        </div>
                    {/block}
                {/block}
            </div>
            <div class="col-md-5 mb-4">
                {block name='page_header_container'}
                    {block name='page_header'}
                        <h1 class="h1">{block name='page_title'}{$product.name}{/block}</h1>
                    {/block}
                {/block}


                <div class="product-information ">
                    <div class="product-information__top">
                        {block name='product_availability'}
                            <span id="product-availability" class="js-product-availability product-info">
                            {l s='Availibility:' d='Shop.Theme.Catalog'}
                                {if $product.show_availability && $product.availability_message}
                                    <span>
      {if $product.availability == 'available'}
          <span class="dot dot-success"></span>


{elseif $product.availability == 'last_remaining_items'}


          <span class="dot dot-warning"></span>


{else}


          <span class="dot dot-danger"></span>
      {/if}
                                        {$product.availability_message}
          </span>
                                {/if}
      </span>
                        {/block}

                        {block name='product_shipping_info'}
                            <div class="product-shipping-time product-info">
                                <span>{l s='Shipping in:' d='Shop.Theme.Catalog'}</span>
                                <span>{if $product.is_virtual    == 0}
        {if $product.additional_delivery_times == 1}
                                        {if $product.delivery_information}
                                            <span class="delivery-information">{$product.delivery_information}</span>
                                        {/if}
        {elseif $product.additional_delivery_times == 2}
          {if $product.quantity > 0}
                                            <span class="delivery-information">{$product.delivery_in_stock}</span>

{* Out of stock message should not be displayed if customer can't order the product. *}
          {elseif $product.quantity <= 0 && $product.add_to_cart_url}

                                            <span class="delivery-information">{$product.delivery_out_stock}</span>
                                        {/if}
                                    {/if}
      {/if}</span>
                            </div>
                            <div class="product-shipping-info product-info">
                                <span>{l s='Shipping:' d='Shop.Theme.Catalog'}</span>
                                <span>{l s='check shipping forms' d='Shop.Theme.Catalog'}</span>
                            </div>
                        {/block}
                        {block name='product_out_of_stock'}
                            <div class="product-out-of-stock">
                                {hook h='actionProductOutOfStock' product=$product}
                            </div>
                        {/block}

                        {block name='product_description_short'}
                            <div id="product-description-short-{$product.id}"
                                 class="product-description cms-content">{$product.description_short nofilter}</div>
                        {/block}
                    </div>


                    {*                    {block name='product_availability_date'}*}
                    {*                        {if $product.availability_date}*}
                    {*                            <div class="product-availability-date">*}
                    {*                                <label>{l s='Availability date:' d='Shop.Theme.Catalog'} </label>*}
                    {*                                <span>{$product.availability_date}</span>*}
                    {*                            </div>*}
                    {*                        {/if}*}
                    {*                    {/block}*}



                    {if $product.is_customizable && count($product.customizations.fields)}
                        {block name='product_customization'}
                            {include file="catalog/_partials/product-customization.tpl" customizations=$product.customizations}
                        {/block}
                    {/if}

                    <div class="product-actions js-product-actions">
                        {block name='product_buy'}
                            <form action="{$urls.pages.cart}" method="post" id="add-to-cart-or-refresh">
                                {block name='product_variants'}
                                    {include file='catalog/_partials/product-variants.tpl'}
                                {/block}


                                <input type="hidden" name="token" value="{$static_token}">
                                <input type="hidden" name="id_product" value="{$product.id}"
                                       id="product_page_product_id">
                                <input type="hidden" name="id_customization" value="{$product.id_customization}"
                                       id="product_customization_id" class="js-product-customization-id">


                                {block name='product_pack'}
                                    {if $packItems}
                                        <section class="product-pack">
                                            <p class="h4">{l s='This pack contains' d='Shop.Theme.Catalog'}</p>
                                            <div class="card-group-vertical mb-4">
                                                {foreach from=$packItems item="product_pack"}
                                                    {block name='product_miniature'}
                                                        {include file='catalog/_partials/miniatures/pack-product.tpl' product=$product_pack showPackProductsPrice=$product.show_price}
                                                    {/block}
                                                {/foreach}
                                            </div>
                                        </section>
                                    {/if}
                                {/block}

                                {block name='product_discounts'}
                                    {include file='catalog/_partials/product-discounts.tpl'}
                                {/block}

                                {block name='product_prices'}
                                    {include file='catalog/_partials/product-prices.tpl'}
                                {/block}

                                {block name='product_add_to_cart'}
                                    {include file='catalog/_partials/product-add-to-cart.tpl'}
                                {/block}



                                {block name='product_additional_info'}
                                    {include file='catalog/_partials/product-additional-info.tpl'}
                                {/block}

                                {* Input to refresh product HTML removed, block kept for compatibility with themes *}
                                {block name='product_refresh'}{/block}
                            </form>
                        {/block}

                    </div>

                    {block name='hook_display_reassurance'}
                        {hook h='displayReassurance'}
                    {/block}

                </div>
            </div>
        </div>
        {*    {include file="catalog/_partials/product-tabs.tpl"}*}

        <div class="row">
            <div class="col-md-9">
                {block name='product_description'}
                    <div class="brand-heading brand-heading--left  mb-4">
                        <h3 class="h3">{l s='Description' d='Shop.Theme.Catalog'}</h3>
                    </div>
                    <div class="product-description cms-content">{$product.description nofilter}</div>
                {/block}
            </div>

            {if count($product.grouped_features) > 0 || !empty($product.specific_references)}
                <div class="col-md-3">
                    {block name='product_features'}
                        <div class="brand-heading brand-heading--left mb-4">
                            <h3 class="h3">{l s='Features' d='Shop.Theme.Catalog'}</h3>
                        </div>
                        {if $product.grouped_features}
                            <section class="product-features">
                                <ul>
                                    {foreach from=$product.grouped_features item=feature}
                                        <li>{$feature.name}:
                                            <span> {$feature.value|escape:'htmlall'|nl2br nofilter}</span>
                                        </li>
                                    {/foreach}
                                </ul>
                            </section>
                        {/if}
                    {/block}

                    {* if product have specific references, a table will be added to product details section *}
                    {block name='product_specific_references'}
                        {if !empty($product.specific_references)}
                            <section class="product-features my-3">
                                <dl class="row">
                                    {foreach from=$product.specific_references item=reference key=key}
                                        <dt class="col-4 pr-3 {if !$reference@last}pb-2 mb-2 border-bottom{/if}">{$key}</dt>
                                        <dd class="col-8 {if !$reference@last}pb-2 mb-2 border-bottom{/if}">{$reference}</dd>
                                    {/foreach}
                                </dl>
                            </section>
                        {/if}
                    {/block}
                </div>
            {/if}
        </div>
        {block name='product_accessories'}
            {if $accessories}
                {include file='catalog/_partials/product-accessories.tpl' products=$accessories}
            {/if}
        {/block}

        {if Module::isEnabled('jashwellington') && ($product.id_category_default == 3 || $product.id_category_default == 6)}
            {hook h="displayConfiguratorBanner"}
        {/if}


        {block name='product_footer'}
            {hook h='displayFooterProduct' product=$product category=$category}
        {/block}



        {block name='product_images_modal'}
            {include file='catalog/_partials/product-images-modal.tpl'}
        {/block}

        {block name='page_footer_container'}
            <footer class="page-footer">
                {block name='page_footer'}
                    <!-- Footer content -->
                {/block}
            </footer>
        {/block}
    </section>
{/block}
