{if $dirlist}
    <ul class="tabs" id="catalog-tabs">
        {foreach $dirlist as $node}
            {$dir = $node->getObject()}
            <li class="tab"><a href="#cakes" class="active">{$dir.name}</a></li>
        {/foreach}
    </ul>
{/if}
