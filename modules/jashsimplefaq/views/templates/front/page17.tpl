
{extends file='page.tpl'}

{block name='page_content'}
    <div class="container mb-4">
        {$jashsimplefaq_intro nofilter}


        {if $jashsimplefaq && count($jashsimplefaq) > 0}
            <div class="accordion" id="faq-accordion">
                {foreach from=$jashsimplefaq item=faq key=key}
                    <div class="card">
                        <div class="card-header" id="faq_{$key}">
                            <span class="mb-0">
                                <button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse" data-target="#collapse_faq_{$key}" aria-expanded="true" aria-controls="collapse_faq_{$key}">
                                    {$faq.question}
                                </button>
                            </span>
                        </div>

                        <div id="collapse_faq_{$key}" class="collapse" aria-labelledby="faq_{$key}" data-parent="#faq-accordion">
                            <div class="card-body">
                                {$faq.answer nofilter}
                            </div>

                        </div>
                    </div>

                {/foreach}

            </div>
        {/if}
    </div>

{/block}
