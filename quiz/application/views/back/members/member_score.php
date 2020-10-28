
<!--CONTENT CONTAINER-->
<!--===================================================-->
<div id="content-container">
	<div id="page-head">
		<!--Page Title-->
		<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
		<div id="page-title">
			<h1 class="page-header text-overflow"><?php echo translate('members')?></h1>
		</div>
		<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
		<!--End page title-->
		<!--Breadcrumb-->
		<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
		<ol class="breadcrumb">
			<li><a href="#"><?php echo translate('home')?></a></li>
			<li><a href="#"><?php echo translate('members')?></a></li>
		</ol>
		<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
		<!--End breadcrumb-->
	</div>
	<!--Page content-->
	<!--===================================================-->
	<div id="page-content">
		<!-- Basic Data Tables -->
		<!--===================================================-->
		<div class="panel">
			<?php if (!empty($success_alert)): ?>
				<div class="alert alert-success" id="success_alert" style="display: block">
	                <button class="close" data-dismiss="alert"><i class="pci-cross pci-circle"></i></button>
	                <?=$success_alert?>
	            </div>
			<?php endif ?>
			<?php if (!empty($danger_alert)): ?>
				<div class="alert alert-danger" id="danger_alert" style="display: block">
	                <button class="close" data-dismiss="alert"><i class="pci-cross pci-circle"></i></button>
	                <?=$danger_alert?>
	            </div>
			<?php endif ?>
			<div class="panel-heading">
				
			</div>
			<div class="panel-body">
				<table id="members_table" class="table table-striped table-bordered" cellspacing="0" width="100%">
					<thead>
					<tr>
						
						<th>
							<?php echo translate('Member ID')?>
						</th>
						<th>
							<?php echo translate('name')?>
						</th>
						

						
						
						<th>
							<?php echo translate('score')?>
						</th>
						<th>
							<?php echo translate('created_at')?>
						</th>
						
					</tr>
					</thead>
					<?php 
						$i = 0;
						foreach ($data_res as $key => $value) { ?>
							
					<tr>
						<td> <?php echo $i++; ?> </td>
						<td> <?php echo $value->first_name; ?> </td>
						<td> <?php echo $value->score; ?> </td>
						<td> <?php echo $value->created_at; ?> </td>
					</tr>

					<?php } ?>

				</table>
			</div>
		</div>
		<!--===================================================-->
		<!-- End Striped Table -->
	</div>
	<!--===================================================-->
	<!--End page content-->
</div>


</div>


<script>
	setTimeout(function() {
	    $('#success_alert').fadeOut('fast');
	    $('#danger_alert').fadeOut('fast');
	}, 5000); // <-- time in milliseconds
</script>
<script>
    $(document).ready(function () {
    	var type = "<?=$parameter?>";
    	var url = "";
    		url = "<?php echo base_url('admin/test/listing/list_data') ?>";
    		$('#members_table').DataTable({
	            "processing": true,
	            "serverSide": true,
	            "ajax":{
					"url": url,
					"dataType": "json",
					"type": "POST",
					"data":{  '<?php echo $this->security->get_csrf_token_name(); ?>' : '<?php echo $this->security->get_csrf_hash(); ?>' }
				},
		    	"columns": [
					{ "data": "member_id" },
					{ "data": "name" },

					{ "data": "score" },
					{ "data": "created_at" },
				],
				"drawCallback": function( settings ) {
			        $('.add-tooltip').tooltip();
			    }
		    });
    	
    	
    });
</script>