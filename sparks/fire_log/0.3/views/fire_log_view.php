<!DOCTYPE html>
<head>
	<meta http-equiv="Content-type" content="text/html; charset=utf-8">
	<title>Fire Log Spark</title>
	<link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.8.2r1/build/base/base-min.css"/>
	<style type="text/css" media="screen">
		
		body,html{
			background-color:black;
			margin:0;
			padding:0;
			font-family:"Lucida Grande",Arial,sans-serif;
			
		}
		
		h1{
			text-shadow: #000 -1px -1px -1px;
			font-weight:bold;
			color:#999;
			padding:0px;
			font-size:28px;
			font-family:Georgia,Times,serif;
			margin:0;
			background-color:#222;
		}
		
		pre{
			height:auto;
			display:block;
			white-space:pre-wrap;
			font-size:14px;
			line-height:18px;
			overflow:auto;
			text-align:left;
			font-weight:normal;
			overflow:auto;
			padding: 80px 20px 20px 20px;
			font-family:"Monaco",Arial,sans-serif;
			color:#009200;
			background-color:black;
		}
		
		#heading{
			position:fixed;
			display:block;
			top:0;
			left:0;
			width:100%;
			padding:20px;
			margin:0;
			-webkit-box-shadow: 0px 0px 10px #000;
			-moz-box-shadow: 0px 0px 10px #000;
			-khtml-box-shadow: 0px 0px 10px #000;
			
			background-color:#222;
		}
		form{
			position:absolute;
			right:60px;
			top:20px;
			display:inline-block;
			width:auto;
			height:auto;
			padding:10px;
			background-color:#444;
			border-top:none;
			-moz-border-radius: 10px; 
			-webkit-border-radius: 10px;
			border-radius: 10px;
			-webkit-box-shadow: 0px 0px 10px #000;
			-moz-box-shadow: 0px 0px 10px #000;
			-khtml-box-shadow: 0px 0px 10px #000;
			

		}
		
		a{
			color:#999;
			font-size:12px;
			font-weight:bold;
		}
		
		.debug{
			color:#009200;
		}
		.error{
			color:orange;
		}
		.info{
			color:yellow;
		}
		
		hr{
			border:none;
			border-bottom:1px dashed #666;
		}
	</style>
	
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js"></script>	

	<script type="text/javascript" charset="utf-8">
		$( document ).ready(function(){
			$( '#methodForm').css( 'opacity', 0.5 );
			$( '#heading' ).css( 'opacity', 0.8 );
			
			$( '#methodForm').mouseover( function(){
				$( this ).css( 'opacity', 1 );
			});
			
			$( '#methodForm').mouseout( function(){
				$( this ).css( 'opacity', 0.5 );
			});
			
			$( '#filter' ).change( function(){
				if( $( this ).val() == 'all' ){
					$( '.error,.debug,.info' ).show();
				}else if( $( this ).val() == 'debug' ){
					$( '.error,.info' ).hide();
					$( '.debug' ).show();
				}	else if( $( this ).val() == 'info' ){
					$( '.error,.debug' ).hide();
					$( '.info' ).show();
				}	else if( $( this ).val() == 'error' ){
					$( '.info,.debug' ).hide(  );
					$( '.error' ).show();
				}


			});
		});
	</script>
	
</head>
<body>
<div id="heading">
<h1><?php echo $log_file_name ?><?php if( $today ) echo ' - ' .$this->lang->line( 'fire_log_today' ); ?></h1>
<form id="methodForm" action="<?php echo current_url() ?>" method="POST">
<select name="log_file">
<?php foreach ($list as $file ): ?>
	<option value="<?php echo $file['name'] ?>" <?php echo $file['attrs'] ?>><?php echo $file['name'] . $file['suffix'] ?></option>
<?php endforeach; ?>		
</select>
<input type="submit" name="view" value="<?php echo $this->lang->line( 'fire_log_view' ) ?>"/>
<input type="submit" name="delete_file" value="<?php echo $this->lang->line( 'fire_log_delete' ) ?>"/>
<hr/>

<select id="filter">
	<option value="all"><?php echo $this->lang->line( 'fire_log_show_all' ) ?></option>
	<option value="error"><?php echo $this->lang->line( 'fire_log_show_error' ) ?></option>
	<option value="info"><?php echo $this->lang->line( 'fire_log_show_info' ) ?></option>
	<option value="debug"><?php echo $this->lang->line( 'fire_log_show_debug' ) ?></option>
</select>
<hr/>
<a href="<?php echo current_url() ?>"><?php echo $this->lang->line( 'fire_log_home' )?></a>
</form>
</div>

<pre><?php echo $log_contents ?></pre>

</body>
</html>