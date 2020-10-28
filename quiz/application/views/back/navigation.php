<!--MAIN NAVIGATION-->
<!--===================================================-->
<nav id="mainnav-container">
<div id="mainnav">
	<!--Menu-->
	<!--================================-->
	<div id="mainnav-menu-wrap">
		<div class="nano">
			<div class="nano-content">
				<ul id="mainnav-menu" class="list-group">
					<li <?php if($page_name=="dashboard"){ ?> class="active-link" <?php } ?>>
						<a href="<?=base_url()?>admin">
							<i class="fa fa-home"></i>
							<span class="menu-title"><?php echo translate('dashboard')?></span>
						</a>
					</li><?php
					if ($this->Crud_model->admin_permission('members'))
					{ ?>
						<li <?php if( $page_name=="free_members"
										||$page_name=="premium_members"
											|| $page_name == "deleted_member"
												|| $page_name=="add_member"
													|| $page_name=="bulk_member_add"
														|| $page_name == "member_profile_pic_approval"
									){ ?> class="active-sub active" <?php } ?>>
							<a href="#">
								<i class="fa fa-users"></i>
								<span class="menu-title"><?php echo translate('members')?></span>
								<i class="arrow"></i>
							</a>
							<!--Submenu-->
							<ul class="collapse">
								<?php if ($this->Crud_model->admin_permission('free_members')){ ?>
									<li <?php if($page_name=="free_members"){ ?> class="active-link" <?php } ?>>
										<a href="<?=base_url()?>admin/test/listing"><i class="fa fa-user-o"></i><?php echo translate('members')?></a>
									</li>
								<?php } ?>
									
		
							</ul>
						</li>
					<?php } ?>
					

					
						</ul>
					</li>
					

				</ul>
			</div>
		</div>
	</div>
	<!--================================-->
	<!--End menu-->
</div>
</nav>
<!--===================================================-->
<!--END MAIN NAVIGATION-->
