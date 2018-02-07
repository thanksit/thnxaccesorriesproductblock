{if isset($thnxaccesorriesproductblock) && !empty($thnxaccesorriesproductblock) && !empty($thnxaccesorriesproductblock.products)}
	{if isset($thnxaccesorriesproductblock.device)}
		{assign var=device_data value=$thnxaccesorriesproductblock.device|json_decode:true}
	{/if}
	<div class="thnx_product_home_small col-sm-4">
		<div class="thnxaccesorriesproductblock block carousel">
			<h4 class="title_block">
		    	{$thnxaccesorriesproductblock.title}
		    </h4>
		    <div class="block_content products-block">
		        {if isset($thnxaccesorriesproductblock) && $thnxaccesorriesproductblock}
					{if isset($thnxaccesorriesproductblock.products) && !empty($thnxaccesorriesproductblock.products)}
						{foreach from=$thnxaccesorriesproductblock.products item="product"}
							  {include file="catalog/_partials/miniatures/product.tpl" product=$product}
						{/foreach}
					{/if}
		        {else}
	        		<p class="alert alert-info">{l s='No products at this time.' mod='thnxaccesorriesproductblock'}</p>
		        {/if}
		    </div>
		</div>
	</div>
{/if}