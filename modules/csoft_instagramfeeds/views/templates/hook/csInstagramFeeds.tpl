{***
 * csoft_instagramfeeds front-end module version 1.3.4 for Prestashop 1.6, 1.7
 * Support contact : prestashop@comonsoft.com.
 *
 * NOTICE OF LICENSE
 *
 * This source file is the property of Com'onSoft
 * that is bundled with this package.
 * It is also available through the world-wide-web at this URL:
 * https://boutique.comonsoft.com/
 *
 * @category  front-end
 * @package   csoft_instagramfeeds
 * @author    Com'onSoft (http://www.comonsoft.com/)
 * @copyright 2016-2020 Com'onSoft and contributors
 * @version   1.3.4
*}
{if isset($instagram_pics) && $instagram_pics|count > 0}
	<section class="csinstagramfeed__footer col-xs-12" id="csinstagramfeed" style="padding: 20px 5px 40px">
		<div class="container-fluid">
			<div class="row">
				{foreach $instagram_pics as $pic}
					<div class="col-md-2 col-xs-4 mb-3">
						<a href="{$pic.link}" title="{$pic.caption|escape:'html':'UTF-8'}" target="_blank" rel="nofollow"><img src="{$pic.image}" alt="{$pic.caption|escape:'html':'UTF-8'}" class="img-fluid" /></a>
					</div>
				{/foreach}
			</div>
		</div>

	</section>
{/if}