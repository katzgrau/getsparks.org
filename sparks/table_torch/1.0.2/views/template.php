<!DOCTYPE html>
<head>
	<meta http-equiv="Content-type" content="text/html; charset=utf-8">
	<title>Table Torch | <?php echo table_torch_title( $table ) ?></title>
	
	<link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.8.2r1/build/base/base-min.css">
	<style type="text/css" media="screen">
	body{
		font-family:'Lucida Grande',Arial,Verdana,sans-serif;
		font-size:12px;
		display:block;
		color:#666;
		padding:20px;
		margin:0;
	}
	hr{
		clear:both;
		border:none;
		border-bottom:1px solid #fff;
		border-top:1px solid #ccc;
		padding:0;
		display:block;
		margin: 10px 0px 10px 0px;
	}
	th{
		text-align:left;
		border:none;
		background-color:#999;
		color:white;
		font-weight:bold;
		border-bottom:1px solid #444;
		border-right:1px solid #444;
		border-left:1px solid #ccc;
		text-shadow: -1px -1px #666;
		white-space: nowrap;
	}
	th a{
		color:white;
		display:block;
	}
	th a.asc,th a.desc{
		color:#000;
		text-shadow: 1px 1px #ccc;
	}
	.paginationWrapper{
		display:block;
		margin: 8px 0px 8px 0px;
	}
	.paginationWrapper a,.paginationWrapper strong{
		padding:3px;
		display:inline-block;
	} 
	h1{
		font-family:Georgia,times,serif;
		font-size:21px;
		letter-spacing:-1px;
		text-transform:capitalize;
		color:#444;
		padding: 25px 0px 10px 0px;
		margin: 0px;
	}
	form{
		border:1px solid #efefef;
		border-style:outset;
		padding:20px;
		background-color:#f9f9f9;
		display:block;
		overflow:hidden;
		min-width:700px;
		-moz-border-radius: 10px;
		border-radius: 10px;
	}
	input[type=submit]{
		background-color:#b50007;
		padding: 4px 6px 4px 6px;
		color:white;
		border:none;
		font-weight:bold;
		border:1px solid #790005;
		border-style:outset;
		text-shadow: -1px -1px #790005;
		font-size:12px;
		-moz-border-radius: 4px;
		border-radius: 4px;
		cursor:pointer;
	}
	label{
		display:inline-block;
		width:250px;
		color:#333;
		text-align:right;
		clear:both;
		float:left;
		padding: 8px 10px 0px 0px;
	}
	input[type=checkbox]{
		float:left;	
		margin-top:8px;
	}
	input[disabled]{
		color:#ccc;
	}
	.formContainer{
		display:block;
		overflow:hidden;
	position:relative;
	}
	input[type=text],textarea{
		float:left;
		padding:5px;
		width:400px;
		font-size:13px;
		border:1px solid #ccc;
		color:#444;
		-moz-border-radius: 4px;
		border-radius: 4px;
		font-family:'Lucida Grande',Arial,Verdana,sans-serif;
	}
	#searchForm{
		background:transparent;
		border:none;
		padding:0;
		margin-bottom:10px;
	}
	#searchForm input[type=submit]{
		margin: 5px 5px 0px 5px;
	}
	#navHeader{
		padding: 5px 12px 0px 0px;
		margin: -20px -20px 10px -20px;
		display:block;
		overflow:hidden;
		background-color:#efefef;
		text-align:right;
		position:relative;
	}
	#navHeader li{
		list-style:none;
		padding: 0px;
		margin:0;
		display:inline-block;

	}
	#navHeader li a{
		padding:8px;
		display:inline-block;
		color:#333;
		-moz-border-radius-topright: 8px;
		border-top-right-radius: 8px;
		-moz-border-radius-topleft: 8px;
		border-top-left-radius: 8px;
	}
	#navHeader li a.active{
		color:#666;
		background-color:#fff;
		border:none;
		border-right:1px solid #dfdfdf;
	}
	#navHeader li.backLink{
		position:absolute;
		top:2px;
		left:12px;
	}
	#navHeader li.backLink a{
		color:#b50007;
	}
	textarea{
		height:100px;
		margin-top:5px;
		width:500px;
	}
	input[type=submit]{
		margin-left:260px;	
	}
	a{
		color:#b50007;
		font-weight:bold;
		text-decoration:none;
	}
	a:hover{
		text-decoration:underline;
	}
	a.actionLink{
		font-size:11px;
		padding-right:5px;
	}
	td{
		border:none;
		border-left:1px solid white;
		border-right:1px solid #dfdfdf;
		white-space: nowrap;
		max-width:200px !important;
		overflow:hidden;
	}
	tr{
		height:15px;
		border:none;
		background-color:#f8f8f8;
		cursor:pointer;
	}
	tr.stripe,.stripe{
		background-color:#efefef;
	}
	.highlight{
		background-color:#ff9f9f !important;
		color:#333;
	}
	.highlight td{
		border-left:1px solid #ff9f9f;
		border-right:1px solid #ff9f9f;
	}
	</style>

	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js"></script>	

	<script type="text/javascript" charset="utf-8">
		$( document ).ready(function(){

			$( 'tr:odd, .zebra:odd' ).addClass( 'stripe' );
			$( 'tr' ).mouseover( function(){ $( this ).addClass( 'highlight' ); });
			$( 'tr' ).mouseout( function(){ $( this ).removeClass( 'highlight' ); });

			$( 'tr' ).dblclick( function(){
				var editLink = $( this ).find( '#editLink' );
				if( editLink.length != 0  ){
					var link = editLink.attr('href');
					window.location = link;
				}
			});
		});
	</script>

</head>
<body>

	<?php echo table_torch_nav( ); ?>
	
	<h1>
	<?php 
	echo $this->lang->line( 'table_torch_' . TORCH_METHOD ) . '&nbsp;' . table_torch_title( $table ); 
	if( isset( $total_count )){
		echo "&nbsp;<em>($total_count)</em>";
	}
	?>
	</h1>
	<?php echo $contents ?>
	<!--<strong>Table Torch</strong>-->
</body>