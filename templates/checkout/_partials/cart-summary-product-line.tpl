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
{block name='cart_summary_product_line'}
  <div class="cart-products align-items-center">
    <div class="cart-products__thumb">
      <img
        {if $product.default_image}
          {generateImagesSources image=$product.default_image size='cart_default' lazyload=false}
        {else}
          src="{$urls.no_picture_image.bySize.cart_default.url}"
        {/if}
        alt="{$product.name|escape:'quotes'}"
        class="img-fluid"
        width="{$product.default_image.bySize.cart_default.width}"
        height="{$product.default_image.bySize.cart_default.height}">
    </div>
    <div class="cart-products__desc">
      <p class="mb-0">
        {$product.name|truncate:20:' (...)'}
      </p>

      <ul class="mb-2">
{*        <li class="text-muted small">*}
{*          <span>{l s='Quantity' d='Shop.Theme.Catalog'}:</span>*}
{*          <span>{$product.quantity}</span>*}
{*        </li>*}
        {foreach from=$product.attributes key="attribute" item="value"}
          <li class="small">
            <span>{$attribute}:</span>
            <span>{$value}</span>
          </li>
        {/foreach}
      </ul>


    </div>
    <span class="cart-products__price price--sm">
        {$product.price}
      </span>
  </div>
{/block}
