<?php 
defined('G_IN_SYSTEM')or exit('no');
System::load_app_class('admin','admin','no');
class wap extends admin {
	
	public function __construct(){
		parent::__construct();
		$this->db=System::load_sys_class('model');
		$this->ment=array(
						array("navigation","幻灯管理",ROUTE_M.'/'.ROUTE_C),
						array("navigation","添加幻灯片",ROUTE_M.'/'.ROUTE_C."/add"), 
		); 
	}
	public function init(){
		$lists=$this->db->GetList("SELECT * FROM `@#_wap` where 1");	
 
		include $this->tpl(ROUTE_M,'wap_list');
	}
	
	public function add(){
		if(isset($_POST['submit'])){
		$title=htmlspecialchars(trim($_POST['title'])); 
		$link=htmlspecialchars(trim($_POST['link']));
		$title2=htmlspecialchars(trim($_POST['title2']));
		$titleen=htmlspecialchars(trim($_POST['titleen'])); 
		$linken=htmlspecialchars(trim($_POST['linken']));
		if(isset($_POST['image'])){
				$img=$_POST['image'];
			}else{
				$img=$slideone['img'];
			}

		if(isset($_POST['imageen'])){
				$imgen=$_POST['imageen'];
			}else{
				$imgen=$slideone['img'];
			}
			 
		$this->db->Query("insert into `@#_wap`(`title`,`link`,`img`,`color`,`titleen`,`linken`,`imgen`) values('$title','$link','$img','$title2','$titleen','$linken','$imgen') ");	
			if($this->db->affected_rows()){
					_message("添加成功",WEB_PATH.'/'.ROUTE_M.'/'.ROUTE_C."/init");
			}else{
					_message("添加失败");
			}
		}
		include $this->tpl(ROUTE_M,'wap_add');
	}
	
	public function delete(){
		$id=intval($this->segment(4)); 
			$this->db->Query("DELETE FROM `go_wap` WHERE (`id`='$id')");
			if($this->db->affected_rows()){
			
					_message("删除成功",WEB_PATH.'/'.ROUTE_M.'/'.ROUTE_C."/init");
			}else{
					_message("删除失败");
			}  
	}
	
	public function update(){
		$id=intval($this->segment(4));
		$wapone=$this->db->Getone("SELECT * FROM `@#_wap` where `id`='$id'");	
		
		if(isset($_POST['submit'])){
			$title=htmlspecialchars(trim($_POST['title']));	
			$link=htmlspecialchars(trim($_POST['link']));	
			$title2=htmlspecialchars(trim($_POST['title2']));
			$titleen=htmlspecialchars(trim($_POST['titleen'])); 
			$linken=htmlspecialchars(trim($_POST['linken']));
			if(isset($_POST['image'])){
					$img=$_POST['image'];
				}else{
					$img=$slideone['img'];
				}

			if(isset($_POST['imageen'])){
					$imgen=$_POST['imageen'];
				}else{
					$imgen=$slideone['img'];
				}	
			$this->db->Query("UPDATE `@#_wap` SET `img`='$img',`title`='$title',`link`='$link',`color`='$title2',`titleen`='$titleen',`linken`='$linken',`imgen`='$imgen' WHERE `id`=$id");
			if($this->db->affected_rows()){
					_message("修改成功",WEB_PATH.'/'.ROUTE_M.'/'.ROUTE_C."/init");
			}else{
					_message("修改失败");
			}
		}
		include $this->tpl(ROUTE_M,'wap_update');
	}
	
	
}



?>