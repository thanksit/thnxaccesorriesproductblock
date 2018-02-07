{if !empty($thnxaccesorriesproductblock)}
	{foreach from=$thnxaccesorriesproductblock item=thnx_products}
		{include file="./layout/{$thnx_products.layout}.tpl"}
	{/foreach}
{/if}