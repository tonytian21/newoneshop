<?php 



defined('G_IN_SYSTEM')or exit('');

System::load_app_class('admin','','no');

System::load_app_fun('global');

class fund extends admin {

	

	public function __construct(){

		parent::__construct();

		$this->db=System::load_sys_class('model');

	}



	public function fundset(){

		

		$config = $this->db->GetOne("select * from `@#_fund` LIMIT 1");

		if(isset($_POST['dosubmit'])){

			$off = intval($_POST['fund_off']);

			$money = floatval(substr(sprintf("%.3f",$_POST['fund_money']), 0, -1));

			if(isset($_POST['fund_count_money'])){

				$count_money = floatval(substr(sprintf("%.3f",$_POST['fund_count_money']), 0, -1));

			}else{

				$count_money = $config['fund_count_money'];

			}

			if($money<=0){

				_message("基金出资金额不正确");

			}

			$this->db->Query("UPDATE `@#_fund` SET `fund_off` = '$off',`fund_money` = '$money',`fund_count_money` = '$count_money'");

			_message("修改成功");

		}		

		$config = $this->db->GetOne("select * from `@#_fund` LIMIT 1");

		include $this->tpl(ROUTE_M,'fundset');

	}

	public function specify(){
		$id = intval($this->segment(4));

		$time = time();
		
		$ex_info=$this->db->GetOne("select * from `@#_member_go_record` where `id` = '$id'");
		
		if(empty($ex_info)){
			_message("指定的中奖人未参与购买，不能指定该用户！");
		}

		$goods = $this->db->GetOne("select * from `@#_shoplist_term` where `id` = '$ex_info[shopid]'");

		if(!empty($goods['q_uid'])){
			_message("该项目已经开奖完毕不能设置中奖人，请从新设置");
		}

		$res = $this->db->Query("INSERT INTO `@#_appoint` SET `shopid` = '$ex_info[shopid]',`userid` = '$ex_info[uid]',`time` = '$time'");
		$res1 = $this->db->Query("UPDATE `@#_shoplist_term` SET `zhiding` = '$ex_info[uid]' WHERE `id`='$ex_info[shopid]'");
		if($res>0 && $res1>0){
			_message("中奖人添加成功",G_ADMIN_PATH.'/fund/specifylist/');
		}else{
			_message("中奖人添加失败");
		}
	}

	public function specifylist(){
		$list_where = " where B.zhiding = 0 And B.q_uid is Null And A.huode = '0' And B.q_user_code is null ";
		$num = 20;
        
        $username = htmlspecialchars($_POST['username']);
        if($username){
        	$list_where .= " And (C.username = '".$username."' Or C.email = '".$username."' or C.mobile = '".$username."')";
        }

        $shopname = htmlspecialchars($_POST['shopname']);
        if($shopname){
        	$list_where .= " And A.shopname like '%".$shopname."%'";
        }

        $county = htmlspecialchars($_POST['county']);
        if($county){
        	$list_where .= " And C.county like '%".$county."%'";
        }

        $province = htmlspecialchars($_POST['province']);
        if($province){
        	$list_where .= " And C.province like '%".$province."%'";
        }

        $city = htmlspecialchars($_POST['city']);
        if($city){
        	$list_where .= " And A.city like '%".$city."%'";
        }

        $paixu = $_POST['paixu'];

        switch ($paixu) {
        	case 'num1':
        		$list_where .= " order by A.gonumber desc ";
        		break;
    		case 'num2':
        		$list_where .= " order by A.gonumber asc ";
        		break;
    		case 'money1':
        		$list_where .= " order by A.moneycount desc ";
        		break;
    		case 'money2':
        		$list_where .= " order by A.moneycount asc ";
        		break;
    		case 'recharge1':
        		$list_where .= " order by C.totalrecharge desc ";
        		break;
    		case 'recharge2':
        		$list_where .= " order by C.totalrecharge asc ";
        		break;
    		case 'consume1':
        		$list_where .= " order by C.totalconsume desc ";
        		break;
    		case 'consume2':
        		$list_where .= " order by C.totalconsume asc ";
        		break;
    		case 'wintimes1':
        		$list_where .= " order by C.wintime desc ";
        		break;
    		case 'wintimes2':
        		$list_where .= " order by C.wintime asc ";
        		break;
    		case 'wintime1':
        		$list_where .= " order by A.lastwintime desc ";
        		break;
    		case 'wintime2':
        		$list_where .= " order by A.lastwintime asc ";
        		break;
        }

        $total = $this->db->GetCount("SELECT COUNT(*) FROM `@#_member_go_record` A inner join `@#_shoplist_term` B on A.shopid=B.id inner join `@#_member` C on A.uid=C.uid $list_where");
        
        $page = System::load_sys_class('page');
        
        if (isset($_GET['p'])) {
            $pagenum = $_GET['p'];
        } else {
            $pagenum = 1;
        }
        
        $page->config($total, $num, $pagenum, "0");
        
        $recordlist = $this->db->GetPage("SELECT A.*,C.totalrecharge,C.totalconsume,C.country,C.province,C.city,C.wintime,C.lastwintime FROM `@#_member_go_record` A inner join `@#_shoplist_term` B on A.shopid=B.id inner join `@#_member` C on A.uid=C.uid  $list_where", array(
            "num" => $num,
            "page" => $pagenum,
            "type" => 1,
            "cache" => 0
        ));
		
		include $this->tpl(ROUTE_M,'specifylist');
	}


	//删除指定的人
	public function zddel(){
		$id=intval($this->segment(4));
		$appoint = $this->db->GetOne("SELECT * from `@#_appoint` WHERE `id` ='$id' LIMIT 1");
		//查询商品的sid
		$shopinfo = $this->db->GetOne("SELECT * from `@#_shoplist` A inner join `@#_shoplist_term` B on A.gid=B.sid WHERE `id` ='{$appoint['shopid']}' LIMIT 1");
		$res = $this->db->Query("DELETE FROM `@#_appoint` WHERE (`id`='$id') LIMIT 1");
		$res1 = $this->db->Query("UPDATE `@#_shoplist_ter` SET `zhiding` = 0 WHERE `sid`='{$shopinfo['sid']}' AND `q_uid` is Null");
			if($res>0 && $res1>0){			
				_message("删除成功");
			}else{
				_message("删除失败");
			}
	}

}