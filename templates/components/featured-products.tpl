{block name='featured_products'}
    <div class="row">
        <div class="featured-products my-4 {block name='featured_products_class'}{/block}">

            {block name='featured_products_header'}
                <div class="featured-products__header d-flex align-items-center mb-3">
                    {block name='featured_products_title' hide}
                        <div class="brand-heading">
                            <h2>
                                {$smarty.block.child}
                            </h2>
                            <svg>
                                <use xlink:href="#svg-icon-arrow"></use>
                            </svg>
                        </div>
                    {/block}
                </div>
            {/block}

            {block name='featured_products_products'}
                <div class="featured-products__{block name='featured_products_type'}grid{/block}">
                    {foreach from=$products item="product"}
                        {block name='product_miniature'}
                            {include file='catalog/_partials/miniatures/product.tpl' product=$product type='grid' }
                        {/block}
                    {/foreach}
                </div>
            {/block}

            {block name='featured_products_footer' hide}
                <div class="featured-products__footer mb-8 text-center">
                    {$smarty.block.child}
                </div>
            {/block}
            {block name='featured_products_footer_after'}

            {/block}

        </div>
        {block name='featured_products_right'}
        {/block}
    </div>
{/block}
