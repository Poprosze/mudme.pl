
{block name='list_group'}
  <div class="{block name='list_group_extra_class'}{/block}">
    {block name='list_group_header'}
      <div class="list_group_header">
        {block name='list_group_title' hide}
          <p class="h5">
            {$smarty.block.child}
          </p>
        {/block}
      </div>
    {/block}
    {block name='list_group_body' hide}
      {$smarty.block.child}
    {/block}
  </div>
{/block}
