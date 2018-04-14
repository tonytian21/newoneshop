<?php

/**
 * Client library for Payssion API.
 */
class payssion
{

    private $config;

    private $url;

    // 主入口
    public function config($config = null)
    {
        $this->config = $config;
    }

    public function send_pay()
    {
        
      
        $payTypeData = $this->config['pay_type_data'];
        
        $app_key = $this->config['id'];
        $secret_key = $this->config['key'];
        $description = $this->config['shouname'];
        
      
        $order_id = $this->config['code'];
        $amount = $this->config['money']; // Format: ##.##
        $currency =$payTypeData['currency']['val'];

        
        $user_name = $this->config['member']['username'];
        
        $user_email = $this->config['member']['email'];
        $country = $this->config['member']['country'];
        $desc = $description;
        $returnurl = $this->config['ReturnUrl'];
        $NotifyUrl = $this->config['NotifyUrl'];
        
        $phone = $this->config['member']['mobile'];
        
        $pm_id = $payTypeData['pm']['val'];
       
        include dirname(__FILE__).DIRECTORY_SEPARATOR."payssion".DIRECTORY_SEPARATOR."payssion_client.class.php";
        $payssion = new PayssionClient($app_key, $secret_key,$this->config['pay_type_data']['is_livemode']['val']==1);
      
        $response = null;
        try {
            $response = $payssion->create( array(
                "pm_id" => $pm_id,
                "amount" => $amount,
                "currency" => $currency,
                "order_id" => $order_id,
                "description" => $desc,
                "return_url" => $returnurl,
                "payer_email" => $user_email,
                "payer_name" => $user_name,
                "notify_url"=>$NotifyUrl
            ));
        } catch (Exception $e) {
            echo "Exception: " . $e->getMessage();
        }
        
        if ($payssion->isSuccess()) {
           
            $todo = $response['todo'];
            if ($todo) {
                $todo_list = explode('|', $todo);
                if (in_array("redirect", $todo_list)) {
                    // redirect the users to the redirect url or send the url by email
                    $paylink = $response['redirect_url'];
                    //echo $paylink;
                    header("Location: $paylink");	
                }
            } else {
                echo " just in case, should not be here";
                // just in case, should not be here
            }
        } else {
            echo JSON($response);
        }
        
        exit();
        
        $msg = implode('|', array(
            $app_key,
            $pm_id,
            $amount,
            $currency,
            $order_id,
            $secret_key
        ));
        
        $api_sig = md5($msg);
        
        $code = '<form name="payssion_hosted_payment" action="' . $payTypeData["url"]["val"] . '" method="post">
         <input type="hidden" name="api_key" value="' . $app_key . '">
          <input type="hidden" name="payer_name" value="' . $user_name . ' ">
          <input type="hidden" name="api_sig" value="' . $api_sig . '">
          <input type="hidden" name="order_id" value="' . $order_id . '">
          <input type="hidden" name="payer_email" value="' . $user_email . ' ">
          <input type="hidden" name="description" value="' . $desc . '">
          <input type="hidden" name="amount" value="' . $amount . '">
          <input type="hidden" name="currency" value="' . $currency . '">
          <input type="hidden" name="return_url" value="' . $returnurl . '">
          </form><script type="text/javascript">function load_submit(){document.payssion_hosted_payment.submit()}load_submit();</script>';
        
       
        echo $code;
    }

}