{if isset($jashattributenavigation_data) && isset($jashattributenavigation_data_instance)}
    {assign var="janGroup" value=$jashattributenavigation_data_instance->getGroupName($jashattributenavigation_data["pa_group"][$jashattributenavigation_id_product])}

        <ul class="product-miniature__variants">
        {foreach from=$jashattributenavigation_data["attr"][{$jashattributenavigation_id_product}] key=idpa item=ida}

            {assign var="janAttribute" value=$jashattributenavigation_data_instance->getAttributeName($ida)}
            {assign var="janActive" value=$jashattributenavigation_data["pa_active"][$jashattributenavigation_id_product][$idpa]}

            {if $janAttribute|@count_characters > 0}
                <li class="{if $janActive != 1}not-available{/if}">
                    <a href="{Context::getContext()->link->getProductLink($jashattributenavigation_id_product, null, null, null,Context::getContext()->language->id, null, $idpa)}">
                        <svg>
                            <use xlink:href="#svg-icon-cloud">
                            </use>
                        </svg>
                        <span>      {$janAttribute}</span>
                    </a>
                </li>
            {/if}
        {/foreach}
        </ul>
{/if}

