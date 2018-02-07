{if isset($thnxaccesorriesproductblock) && !empty($thnxaccesorriesproductblock)}
	{if isset($thnxaccesorriesproductblock.device)}
		{assign var=device_data value=$thnxaccesorriesproductblock.device|json_decode:true}
	{/if}
	{if isset($thnxaccesorriesproductblock.products) && !empty($thnxaccesorriesproductblock.products)}
		<div id="thnx_accessoriesproductsblock_tab_{if isset($thnxaccesorriesproductblock.id_thnxaccesorriesproductblock)}{$thnxaccesorriesproductblock.id_thnxaccesorriesproductblock}{/if}" class="tab-pane fade">
				{if isset($thnxaccesorriesproductblock.products) && !empty($thnxaccesorriesproductblock.products)}
					{foreach from=$thnxaccesorriesproductblock.products item="product"}
						  {include file="catalog/_partials/miniatures/product.tpl" product=$product}
					{/foreach}
				{/if}
		</div>
	{else}
		<div id="thnx_accessoriesproductsblock_tab_{if isset($thnxaccesorriesproductblock.id_thnxaccesorriesproductblock)}{$thnxaccesorriesproductblock.id_thnxaccesorriesproductblock}{/if}" class="tab-pane fade">
			<p class="alert alert-info">{l s='No products at this time.' mod='thnxaccesorriesproductblock'}</p>
		</div>
	{/if}
{/if}