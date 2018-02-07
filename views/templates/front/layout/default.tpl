{if isset($thnxaccesorriesproductblock) && !empty($thnxaccesorriesproductblock) && !empty($thnxaccesorriesproductblock.products)}
	{if isset($thnxaccesorriesproductblock.device)}
		{assign var=device_data value=$thnxaccesorriesproductblock.device|json_decode:true}
	{/if}
	<div id="thnxaccesorriesproductblock_{$thnxaccesorriesproductblock.id_thnxaccesorriesproductblock}" class="thnxaccesorriesproductblock thnx_default_products_block" style="margin:{$thnxaccesorriesproductblock.section_margin};">
		<div class="page_title_area {$thnx.home_title_style}">
			{if isset($thnxaccesorriesproductblock.title)}
				<h3 class="page-heading">
					<em>{$thnxaccesorriesproductblock.title}</em>
					<span class="heading_carousel_arrow"></span>
				</h3>
			{/if}
			{if isset($thnxaccesorriesproductblock.sub_title)}
				<p class="page_subtitle d_none">{$thnxaccesorriesproductblock.sub_title}</p>
			{/if}
			<div class="heading-line d_none"><span></span></div>
		</div>
		{if isset($thnxaccesorriesproductblock) && $thnxaccesorriesproductblock}
			<div id="thnx_relatedproductsblock" class="thnx_default_products_block_content">
				{if isset($thnxaccesorriesproductblock.products) && !empty($thnxaccesorriesproductblock.products)}
					{foreach from=$thnxaccesorriesproductblock.products item="product"}
						  {include file="catalog/_partials/miniatures/product.tpl" product=$product}
					{/foreach}
				{/if}
			</div>
		{else}
			<div class="thnx_default_products_block_content">
				<p class="alert alert-info">{l s='No products at this time.' mod='thnxaccesorriesproductblock'}</p>
			</div>
		{/if}
	</div>
{thnxaccesorriesproductblock_js name="thnxaccesorriesproductblock_{$thnxaccesorriesproductblock.id_thnxaccesorriesproductblock}"}
<script type="text/javascript">
	var thnxaccesorriesproductblock = $("#thnxaccesorriesproductblock_{$thnxaccesorriesproductblock.id_thnxaccesorriesproductblock}");
	var sliderSelect = thnxaccesorriesproductblock.find('ul.product_list.carousel'); 
	var arrowSelect = thnxaccesorriesproductblock.find('.heading_carousel_arrow'); 

	{if isset($thnxaccesorriesproductblock.nav_arrow_style) && ($thnxaccesorriesproductblock.nav_arrow_style == 'arrow_top')}
		var appendArrows = arrowSelect;
	{else}
		var appendArrows = sliderSelect;
	{/if}
	
	if (!!$.prototype.slick)
	sliderSelect.slick( { 
		infinite: {if isset($thnxaccesorriesproductblock.play_again)}{$thnxaccesorriesproductblock.play_again|boolval|var_export:true}{else}false{/if},
		autoplay: {if isset($thnxaccesorriesproductblock.autoplay)}{$thnxaccesorriesproductblock.autoplay|boolval|var_export:true}{else}false{/if},
		pauseOnHover: {if isset($thnxaccesorriesproductblock.pause_on_hover)}{$thnxaccesorriesproductblock.pause_on_hover|boolval|var_export:true}{else}true{/if},
		dots: {if isset($thnxaccesorriesproductblock.navigation_dots)}{$thnxaccesorriesproductblock.navigation_dots|boolval|var_export:true}{else}false{/if},
		arrows: {if isset($thnxaccesorriesproductblock.navigation_arrow)}{$thnxaccesorriesproductblock.navigation_arrow|boolval|var_export:true}{else}false{/if},
		appendArrows: appendArrows,
		nextArrow : '<i class="slick-next icon-chevron-right"></i>',
		prevArrow : '<i class="slick-prev icon-chevron-left"></i>',
		rows: {if isset($thnxaccesorriesproductblock.product_rows)}{$thnxaccesorriesproductblock.product_rows|intval}{else}1{/if},
		// slidesPerRow: 3,
		slidesToShow : {if isset($device_data.device_lg)}{$device_data.device_lg|intval}{else}4{/if},
		slidesToScroll : {if isset($thnxaccesorriesproductblock.product_scroll) && ($thnxaccesorriesproductblock.product_scroll=='per_item')}1{else}{if isset($device_data.device_lg)}{$device_data.device_lg|intval}{else}4{/if}{/if},
		responsive:[
			 { 
				breakpoint: 1200,
				settings:  { 
					slidesToShow: {if isset($device_data.device_lg)}{$device_data.device_lg|intval}{else}4{/if},
					slidesToScroll : {if isset($thnxaccesorriesproductblock.product_scroll) && ($thnxaccesorriesproductblock.product_scroll=='per_item')}1{else}{if isset($device_data.device_lg)}{$device_data.device_lg|intval}{else}4{/if}{/if},
					// slidesToShow : prd_per_column,
				 } 
			 } ,
			 { 
				breakpoint: 993,
				settings:  { 
					slidesToShow: {if isset($device_data.device_md)}{$device_data.device_md|intval}{else}4{/if},
					slidesToScroll : {if isset($thnxaccesorriesproductblock.product_scroll) && ($thnxaccesorriesproductblock.product_scroll=='per_item')}1{else}{if isset($device_data.device_md)}{$device_data.device_md|intval}{else}4{/if}{/if},
					// slidesToShow : 2,
				 } 
			 } ,
			 { 
				breakpoint: 769,
				settings:  { 
					slidesToShow: {if isset($device_data.device_sm)}{$device_data.device_sm|intval}{else}3{/if},
					slidesToScroll : {if isset($thnxaccesorriesproductblock.product_scroll) && ($thnxaccesorriesproductblock.product_scroll=='per_item')}1{else}{if isset($device_data.device_sm)}{$device_data.device_sm|intval}{else}3{/if}{/if},
					// slidesToShow : 2,
				 } 
			 } ,
			 { 
				breakpoint: 641,
				settings:  { 
					slidesToShow: {if isset($device_data.device_xs)}{$device_data.device_xs|intval}{else}2{/if},
					slidesToScroll : {if isset($thnxaccesorriesproductblock.product_scroll) && ($thnxaccesorriesproductblock.product_scroll=='per_item')}1{else}{if isset($device_data.device_xs)}{$device_data.device_xs|intval}{else}2{/if}{/if},
					// slidesToShow : 2,
				 } 
			 } ,
			 { 
				breakpoint: 481,
				settings:  { 
					slidesToShow: 1,
					slidesToScroll : 1,
					// slidesToShow : 1,
				 } 
			 } 
		]
	 } );
</script>
{/thnxaccesorriesproductblock_js}
{/if}