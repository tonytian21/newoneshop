<?php
defined('G_IN_SYSTEM') or exit('No permission resources.');

System::load_app_class('base', 'member', 'no');

System::load_app_fun('my', 'go');

System::load_app_fun('user', 'go');

class index extends SystemAction
{

    public function tag()
    {
        $search = $this->segment_array();
        
        array_shift($search);
        
        array_shift($search);
        
        array_shift($search);
        array_shift($search);
        $search = implode('/', $search);
        
        if (! $search)
            _message("输入搜索关键字");
        
        $search = urldecode($search);
        
        $search = safe_replace($search);
        
        if (! _is_utf8($search)) {
            
            $search = iconv("GBK", "UTF-8", $search);
        }
        
        $mysql_model = System::load_sys_class('model');
        
        $search = str_ireplace("union", '', $search);
        
        $search = str_ireplace("select", '', $search);
        
        $search = str_ireplace("delete", '', $search);
        
        $search = str_ireplace("update", '', $search);
        
        $search = str_ireplace("/**/", '', $search);

        $title = $search . ' - ' . _cfg('web_name');
        $shoplist = $mysql_model->GetList("SELECT `thumb`,`title`,`titleen`,`id`,`sid`,`zongrenshu`,`canyurenshu`,`shenyurenshu`,`money` FROM `@#_shoplist` A inner join `@#_shoplist_term` B on A.gid=B.sid left join `@#_shoplist_en` sen on sen.egid=A.gid  WHERE (`q_user`  = '' or `q_user` is null) AND ".(ROUTE_L == 'en-us' ? "`titleen` LIKE '%" . $search . "%'" : "`title` LIKE '%" . $search . "%'"));
        $list = count($shoplist);
        
        include templates("search", "search");
    }
}

?>