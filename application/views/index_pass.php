
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
    <head>
        <meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
        <link rel="icon" href="<?=base_url()?>/template/images/favicon.gif" type="image/gif">
		<?php include 'includes.php';?>
    </head>
    
    
<body>
	<div id="main_body">
		
		<?php include 'header_pass.php';?>
        <?php include 'site/navigation.php';?>
        <div class="main-content">
            <?php include 'page_info.php';?>
            <div class="container-fluid padded">
                <?php include 'site/'.$page_name.'.php';?>
            </div>       
        <?php include 'footer.php';?>
        </div>
       
	</div>
</body>
<?php include 'modal_hidden.php';?> 
</html>
