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

{block name='block_social'}
{strip}
<svg xmlns="http://www.w3.org/2000/svg" style="display: none; height: 0; visibility: hidden">
  <symbol id="social-facebook" fill="none" viewBox="0 0 20 20" ><clipPath id="social-facebook-a"><path d="m0 0h20v20h-20z"/></clipPath><g clip-path="url(#social-facebook-a)"><path d="m13.3309 3.32083h1.8258v-3.179997c-.315-.043333-1.3983-.140833-2.66-.140833-5.77665 0-4.20498 6.54167-4.43498 7.5h-2.90584v3.555h2.905v8.945h3.56172v-8.9442h2.7875l.4425-3.55497h-3.2309c.1567-2.35333-.6341-4.18 1.7092-4.18z" fill="#3b5999"/></g></symbol>
  <symbol id="social-tiktok" fill="none" viewBox="0 0 20 20"><g fill="#f00044"><path d="m7.11323 10.3672c-1.58594 0-2.86719 1.2812-2.84375 2.8515.01563 1.0079.57031 1.8829 1.38672 2.3711-.27734-.4257-.44141-.9296-.44922-1.4726-.02344-1.5703 1.25781-2.8516 2.84375-2.8516.3125 0 .61328.0508.89453.1406v-3.14448c-.29297-.04297-.59375-.06641-.89453-.06641-.01562 0-.02734 0-.04297 0v2.31249c-.28125-.0898-.58203-.1406-.89453-.1406z"/><path d="m13.9687.9375h-.0234-.8125c.2344 1.17578.8945 2.19922 1.8164 2.89453-.6054-.80078-.9726-1.80078-.9805-2.89453z"/><path d="m18.75 5.72266c-.3086 0-.6055-.03125-.8984-.08594l-4.8047.61719-5.03909 12.73829c-.29297.043-.59375.0664-.89453.0664-1.33594 0-2.60937-.4336-3.64453-1.2344.11719.1407.24219.2774.37891.4102 1.125 1.1094 2.61718 1.7226 4.20702 1.7226.30079 0 .60157-.0234.89454-.0664 1.24998-.1836 2.40238-.7578 3.31248-1.6562 1.1172-1.1055 1.7344-2.5703 1.7422-4.1328l-.0586-6.94925c.5313.41015 1.1133.7539 1.7422 1.01562.9726.41016 2.0039.62109 3.0625.62109"/></g><path d="m3.83595 9.92578c1.11329-1.10547 2.59375-1.71875 4.17188-1.73047v-.83203c-.29297-.04297-.59375-.0664-.89453-.0664-1.59375 0-3.08985.61328-4.21485 1.73047-1.10546 1.09765-1.73828 2.59765-1.73437 4.15625 0 1.5703.62109 3.043 1.74219 4.1563.17968.1757.36328.3398.55859.4882-.88281-1.0507-1.36328-2.3632-1.36719-3.7461.00391-1.5586.63282-3.0586 1.73828-4.15622z" fill="#08fff9"/><path d="m17.8516 5.63672v-.83594h-.0079c-1.0859 0-2.0859-.35937-2.8906-.96875.6992.92188 1.7227 1.57813 2.8985 1.80469z" fill="#08fff9"/><path d="m7.89062 16.8828c.3711.0195.72657-.0312 1.05469-.1367 1.13279-.3711 1.94919-1.4258 1.94919-2.668l.0039-4.64841v-8.49219h2.2344c-.0586-.292969-.0898-.589844-.0937-.8984375h-3.07816v8.4882775l-.00391 4.64846c0 1.2422-.8164 2.2969-1.94922 2.668-.32812.1093-.68359.1601-1.05469.1367-.47265-.0274-.91406-.168-1.29687-.3946.48047.7422 1.30078 1.2461 2.23437 1.2969z" fill="#08fff9"/><path d="m8.00783 18.9922c1.25-.1836 2.40237-.7578 3.31247-1.6563 1.1172-1.1054 1.7344-2.5703 1.7422-4.1328l-.0156-6.94919c.5312.41015 1.1133.7539 1.7422 1.01562.9726.41016 2.0039.6211 3.0625.6211v-2.25391c-1.1758-.22656-2.1992-.88281-2.8985-1.80469-.9218-.69531-1.5859-1.71875-1.8164-2.89453h-2.2382v8.48828l-.0039 4.64842c0 1.2422-.8165 2.2969-1.94927 2.668-.32812.1094-.68359.1601-1.05469.1367-.9375-.0508-1.7539-.5547-2.23437-1.293-.81641-.4843-1.3711-1.3632-1.38672-2.3711-.02344-1.5703 1.25781-2.8515 2.84375-2.8515.3125 0 .61328.0508.89453.1406v-2.31249c-1.57812.01172-3.05859.625-4.17187 1.73047-1.10547 1.09762-1.73829 2.59762-1.73438 4.15232 0 1.3828.48047 2.6953 1.36719 3.7461 1.03906.8008 2.30859 1.2344 3.64453 1.2344.30078.0039.60156-.0195.89453-.0625z" fill="#5d5f63"/></symbol>
  <symbol fill="none" id="social-pinterest" viewBox="0 0 20 20"><path d="m10.2719 0c-5.48152 0-8.39666 3.51266-8.39666 7.34283 0 1.77633.99255 3.99147 2.58137 4.69397.24126.1087.37252.0625.42627-.1613.0475-.17.25626-.9888.35752-1.375.03125-.1238.015-.2313-.08501-.3475-.52752-.61007-.94629-1.72137-.94629-2.76392 0-2.67137 2.12385-5.26523 5.73776-5.26523 3.12514 0 5.31144 2.03009 5.31144 4.93397 0 3.28138-1.7363 5.55148-3.9926 5.55148-1.2488 0-2.17888-.98-1.88387-2.1926.35627-1.4438 1.05507-2.99637 1.05507-4.03766 0-.9338-.52754-1.70633-1.60509-1.70633-1.27131 0-2.30261 1.25881-2.30261 2.94888 0 1.0738.38002 1.79883.38002 1.79883s-1.25756 5.08028-1.49132 6.02898c-.39501 1.6064.05376 4.2077.09251 4.4315.02375.1237.16251.1625.24001.0612.12375-.1625 1.64382-2.3313 2.07009-3.8989.15501-.5713.79129-2.8876.79129-2.8876.41877.7563 1.6276 1.3901 2.9151 1.3901 3.8302 0 6.5978-3.3664 6.5978-7.54414-.0137-4.00518-3.4414-7.00156-7.8528-7.00156z" fill="#d32f2f"/></symbol>
</svg>
  {/strip}



  <div class="block-social">
    <ul class="">
      {foreach from=$social_links item='social_link'}
        <li class="">
          <a href="{$social_link.url}" rel="noopener noreferrer" title="{$social_link.label}" target="_blank">
{*            SVG ICON FOR INSTAGRAM DEOSNT WORK AS SYMBOL ON CHROME THATS WHY THIS CONDITION BELLOW*}
            {if $social_link.class =='instagram'}
                <svg id="social-instagram" fill="none" viewBox="0 0 20 20" width="20" height="20" xmlns="http://www.w3.org/2000/svg" >
                  <g>
                    <linearGradient id="firstgradient"><stop offset="0" stop-color="#ffc107"/><stop offset=".507" stop-color="#f44336"/><stop offset=".99" stop-color="#9c27b0"/></linearGradient><linearGradient id="secondgradient" gradientUnits="userSpaceOnUse" x1="1.83081" x2="18.1692" xlink:href="#firstgradient" y1="18.1693" y2="1.83069"/><linearGradient id="thirdgradient" gradientUnits="userSpaceOnUse" x1="6.46456" x2="13.5354" xlink:href="#firstgradient" y1="13.5354" y2="6.46456"/><linearGradient id="fourthgradient" gradientUnits="userSpaceOnUse" x1="14.9039" x2="15.8461" xlink:href="#firstgradient" y1="5.09618" y2="4.15393"/><path d="m13.75 0h-7.5c-3.45125 0-6.25 2.79875-6.25 6.25v7.5c0 3.4513 2.79875 6.25 6.25 6.25h7.5c3.4513 0 6.25-2.7987 6.25-6.25v-7.5c0-3.45125-2.7987-6.25-6.25-6.25zm4.375 13.75c0 2.4125-1.9625 4.375-4.375 4.375h-7.5c-2.4125 0-4.375-1.9625-4.375-4.375v-7.5c0-2.4125 1.9625-4.375 4.375-4.375h7.5c2.4125 0 4.375 1.9625 4.375 4.375z" fill="url(#secondgradient)"/><path d="m10 5c-2.76125 0-5 2.23875-5 5 0 2.7613 2.23875 5 5 5 2.7613 0 5-2.2387 5-5 0-2.76125-2.2387-5-5-5zm0 8.125c-1.7225 0-3.125-1.4025-3.125-3.125 0-1.72375 1.4025-3.125 3.125-3.125s3.125 1.40125 3.125 3.125c0 1.7225-1.4025 3.125-3.125 3.125z" fill="url(#thirdgradient)"/><path d="m15.375 5.29124c.3679 0 .6662-.29829.6662-.66625s-.2983-.66625-.6662-.66625c-.368 0-.6663.29829-.6663.66625s.2983.66625.6663.66625z" fill="url(#fourthgradient)"/>
                  </g></svg>

              {else}
              <svg aria-label="{$social_link.label}" aria-hidden="false">
                <use xlink:href="#social-{$social_link.class}"></use>
              </svg>
            {/if}

          </a>
        </li>
      {/foreach}
    </ul>
  </div>
{/block}
