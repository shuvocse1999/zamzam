<?php defined('BASEPATH') OR exit('No direct script access allowed');?>
<!-- Printable area start -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Print Invoice</title>
	<script type="text/javascript">
		var pstatus="<?php echo $this->uri->segment(5);?>";
		if(pstatus==0){
			var returnurl="<?php echo base_url('ordermanage/order/pos_invoice'); ?>";
		}
		else{
			var returnurl="<?php echo base_url('ordermanage/order/pos_invoice'); ?>?tokenorder=<?php echo $orderinfo->order_id;?>"; 
		}
		setInterval(function(){
			document.location.href = returnurl;
		}, 3000);
		
		
	</script>
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('application/modules/ordermanage/assets/css/pos_token.css'); ?>">
</head>

<body>


	<?php $orderid = $orderinfo->order_id;?>


	<?php $varientinfo=$this->db->select("*")->from('order_menu')->where('order_id',$orderid)->get()->result();
	foreach ($varientinfo as $key => $value) {
		$query = $this->db->select("*")->from('item_foods')->where('ProductsID', $value->menu_id)->group_by('kitchenid')->get();
		$result = $query->row();

		$new_arr[] = $result->kitchenid;

	}
	$unique_arr = array_unique($new_arr);
			// echo "<pre>";
			// print_r($unique_arr);


	?>


	<?php $i = 0; foreach ($unique_arr as $key=>$value) { ?>
		<?php  $k=$this->db->select("*")->from('tbl_kitchen')->where('kitchenid',$value)->get()->row(); ?>

		<div id="area">
			<div class="panel-body">
				

				<table border="0" class="wpr_100" style="">

					<tr>
						<td align="center"><nobr><date><?php echo display('token_no')?>:<?php echo $orderinfo->tokenno;?></nobr><br/><?php echo $customerinfo->customer_name;?></td>
						</tr>
						<h3><?php echo $k->kitchen_name; ?></h3>
					</table>

					<table border="0" class="wpr_100" style="width: 100%;">
						<tr class="text-left">
							<td>Q</td>
							<td>Item</td>
							<td class="text-right">Size</td>
						</tr>
					</table>

					<?php 
					$order = $this->db->select('*')
					->from('order_menu')
					->where('order_id',$orderid)
					->get()
					->result();
					?>
					<table border="0" class="wpr_100" style="width: 100%;">
						<?php foreach ($order as  $orders) { ?>

							<?php
							$food = $this->db->select('*')
							->from('item_foods')
							->where('ProductsID',$orders->menu_id)
							->where('kitchenid',$value)
							->get()
							->result();
							?>

							<?php  $variant = $this->db->select('*')->from('variant')->where('variantid',$orders->varientid)->get()->row(); ?>

							<?php foreach ($food as  $f) { ?>
								<tr>
									<td><?php  echo $orders->menuqty ?></td>
									<td><?php  echo $f->ProductName ?></td>
									<td class="text-right"><?php  echo $variant->variantName ?></td>
								</tr>

							<?php } ?>

						<?php } ?>

						

						<tr style="margin-top: 30px;">
							<td colspan="3" align="center"><?php if(!empty($tableinfo)){ echo display('table').': '.$tableinfo->tablename;}?> | <?php echo display('ord_number');?>:<?php echo $orderinfo->order_id;?></td>
						</tr>

					</table>



				</div>




			</div>

			<script type="text/javascript">
				window.print();
			</script>


			<style type="text/css">
				#area{
					display: block !important;
					page-break-after: always;
				
				}
			</style>



		<?php }?>





	</body>
	</html>
