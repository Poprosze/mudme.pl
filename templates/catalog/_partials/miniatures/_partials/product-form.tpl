<div class="product-miniature__actions">

    {hook h='displayProductListReviews' product=$product}


{*    <ul class="product-miniature__variants">*}
{*        <li>*}
{*            <a href="">*}
{*                <svg>*}
{*                    <use xlink:href="#svg-icon-cloud-1">*}
{*                    </use>*}
{*                </svg>*}
{*                <span>     21/22-14.9 cm</span>*}
{*            </a>*}
{*        </li>*}
{*        <li>*}
{*            <a href="">*}
{*                <svg>*}
{*                    <use xlink:href="#svg-icon-cloud-2">*}
{*                    </use>*}
{*                </svg>*}
{*                <span>    S - 21/22 23/24</span>*}
{*            </a>*}
{*        </li>*}
{*        <li>*}
{*            <a href="">*}
{*                <svg>*}
{*                    <use xlink:href="#svg-icon-cloud-1">*}
{*                    </use>*}
{*                </svg>*}
{*                <span>     21/22-14.9 cm</span>*}
{*            </a>*}
{*        </li>*}
{*        <li>*}
{*            <a href="">*}
{*                <svg>*}
{*                    <use xlink:href="#svg-icon-cloud-2">*}
{*                    </use>*}
{*                </svg>*}
{*                <span>    S - 21/22 23/24</span>*}
{*            </a>*}
{*        </li>*}
{*        <li>*}
{*            <a href="">*}
{*                <svg>*}
{*                    <use xlink:href="#svg-icon-cloud-1">*}
{*                    </use>*}
{*                </svg>*}
{*                <span>     21/22-14.9 cm</span>*}
{*            </a>*}
{*        </li>*}
{*        <li>*}
{*            <a href="">*}
{*                <svg>*}
{*                    <use xlink:href="#svg-icon-cloud-2">*}
{*                    </use>*}
{*                </svg>*}
{*                <span>    S - 21/22 23/24</span>*}
{*            </a>*}
{*        </li>*}
{*        <li>*}
{*            <a href="">*}
{*                <svg>*}
{*                    <use xlink:href="#svg-icon-cloud-1">*}
{*                    </use>*}
{*                </svg>*}
{*                <span>     21/22-14.9 cm</span>*}
{*            </a>*}
{*        </li>*}
{*        <li>*}
{*            <a href="">*}
{*                <svg>*}
{*                    <use xlink:href="#svg-icon-cloud-2">*}
{*                    </use>*}
{*                </svg>*}
{*                <span>    S - 21/22 23/24</span>*}
{*            </a>*}
{*        </li>*}
{*    </ul>*}


    {if $product.add_to_cart_url && ($product.quantity > 0 || $product.allow_oosp) && !$configuration.is_catalog}
        <form class="product-miniature__form" action="{$product.add_to_cart_url}" method="post">
            <input type="hidden" name="id_product" value="{$product.id}">
            <input
                    type="hidden"
                    name="qty"
                    value="{if isset($product.product_attribute_minimal_quantity) && $product.product_attribute_minimal_quantity != ''}{$product.product_attribute_minimal_quantity}{else}{$product.minimal_quantity}{/if}"
                    class="form-control input-qty"
            >
            <button
                    class="btn btn-primary btn-block add-to-cart"
                    data-button-action="add-to-cart"
                    type="submit"
                    {if !$product.add_to_cart_url}
                        disabled
                    {/if}
            >
                {l s='Add to cart' d='Shop.Theme.Actions'}
            </button>
        </form>
    {else}
        <a href="{$product.canonical_url}"
           class="btn btn-secondary btn-block"
        > {l s='View' d='Shop.Theme.Actions'}
        </a>
    {/if}
</div>
