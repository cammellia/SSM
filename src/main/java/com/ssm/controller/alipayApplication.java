package com.ssm.controller;

import com.alibaba.fastjson.JSONObject;
import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.request.AlipayTradePagePayRequest;
import com.alipay.api.response.AlipayTradePagePayResponse;

public class alipayApplication {
        // 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
        public static String app_id = "9021000122685017";
        // 商户私钥，您的PKCS8格式RSA2私钥
        public static String merchant_private_key = "MIIEpAIBAAKCAQEApUESccY95aUFAA3PbU22rGDK5ztQ81El/CY9LyuAjcIdn0oW7w/LOdoHCmleP0VwnozSjclwBRxL1RxyybsEeuARbj1R+TiURw82bVPh7oYHG8m3rmF4cj5Q+ewv0oVMSpmSO9cILHl2lBjFJp7D1nZe15zS8anyL1LQr2yK1ErAItRGBks0zvvmIiENk1kyaaFx6dRU2B9W/Scn0ZT9jWirGp4bkUJuVzvvd+c86+osWRo5bSTaAx1cO0KpyBlECkBUYkrCaHrx4smwlmadyapm732vV1QdGW01ObbzMmIj/BfANHztFXs3a3a55Gb1Lfthe1joEyM/DRu6hyKeiQIDAQABAoIBAEdigqsvLZHD5RMO5CmdRmnULhIQ53kT9sqjYg68Rf32eoFSqfF+6xUEf8IZniLKxklXH6Ur/P3YKVHXxiYqaVcC78SlLIHx1OuVQLedYp18vBle27+yTytai/RJ+KaB+mDHUgoTa2560aRLxu5V6tb7ryCIl/7YoMuchJUi2B23stL71Gn98NlAb2yAvoftW+U+cfS59QSVKP5VmYezUeLr8QSpcM40RCWMcoyC+VhtnUZT0pSKCrHsNsWLFb5PWNKeoqXBLEwEG4qw6svt6kolHit9jL+pHy2AjiNcZYtxwL40iu/0dkZ3DYjftcvoqwzrx9WZFQB7OaluXKZc09kCgYEA1UMoiOE7gnBcCq3jXb6xX0lsrcHzoMG0e1a+PxjB/5l77A+iTF1dlUgu24dM8PYKBTF5L97dnQAJA6WgGSMfItt6FsufzwNEdctA9D32cW2+nrQgkim/ltReZusi6255SMniJP7wpm3ilQfX2ebbBbFENMGTBLFXt/TA5NyE+0sCgYEAxl78mr9vj2+PFf0AeelrL4mDyff8+S/z115MMMfmWOJrauK9Qas/mQBuwbbus/UW2JwuGIudNJ7lUUe5W/LlxfEW9nRu/zZnaPNEwcy0C8391CBrPJBBd+d8aDu10uvCHY1ZPhB/CQwRMTFZjBhmPJbcD/Bv54cMj9MRsjr/NPsCgYEAv9FnLS8BOsLbVtOu9QvnOCCvut3/xzFTp7iO5+vZ2o/v8ZTiUzOLUBGb6+MXpoh23NLyAMfBp0x3zyrzBIkdoVmtx8EhHa7/rb/CzazJ9J5UXSUBQtaAOCcOPh3yy7YTKxBC8ynHxLqDma5zTNAjYkxeX+FY3liw4Iop0fAzQF8CgYAQkaqDum21C1pmOcWqaSa8x72sRvxoS+sQGB5BDNFepzrVqK6qJ4WeX/zgTUlO2q/X0+O9xRuSY5s/2L/QwE8U43hJiZwj0QV+LKOXlGONgN0stLCAVIRDYaBwjFw5i9ug4EeN+Y7C0LE27KpQG1GeyfMDmc+fBRa1hKm7u1XJtQKBgQDNhO6Kj0+gUapVil5q3TbfpV+q8uWzFiffgKAlYC01SqWir2hLrjN3tIyLsF+XxSkrbHC9mDi62z1kIoMlk2JE6HlJmY8BYVngUGzq6x906W62mli5Nz4WpC4BKWu2gxM2JvgDtVnG6z61SlDfiFUcFg25Ndvwb1qSi5MRhyII8Q==";
        // 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
        public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAgfIBBXC1jS6JtW9rZQeMLhTUbp4GAMgbbS1ojZTKsF7qX3phQ6OqMMZsDaFItQm8hUoP/sIHuUyAE/OGmGpqSRaDA8TdHZbc9DbtlSeRvQ18A2qnV1qZGC6q4K+/ZOXyOqkmqafHx6jYGKgPhsJcrrAmmbKilZb2guScY6YWZ/wE7LQsrvvRAlxp68lzO3E5Zxz8v7pkbVLIyI5o0SzgHTavs1BM0XZRpuRFYsKJhq81qDMNNXr7X9UU76BagvUe7Q7y0nM7g483l0GB93FozD1ALoiaQYUEfH5uSpOMfhcX5anCO3nitx6ZV0/T8O7wRY59RmqHPC5SpYB1uwhFVQIDAQAB";
        // 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
        public static String notify_url = "http://localhost:8080/unnamed/notify";
        // 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
        public static String return_url = "";
        // 签名方式
        public static String sign_type = "RSA2";
        // 字符编码格式
        public static String charset = "utf-8";
        // 支付宝网关
        public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
		// out_trade_no:订单号16位数字的随机数
		// price：价格
		// subject：随机一个字符串，不能用中文
        public static String pay(int out_trade_no,double price,String subject) throws AlipayApiException {
        AlipayClient alipayClient = new DefaultAlipayClient(gatewayUrl,app_id,merchant_private_key,"json","GBK",alipay_public_key,sign_type);
        AlipayTradePagePayRequest request = new AlipayTradePagePayRequest();
        request.setNotifyUrl(notify_url);
        request.setReturnUrl(return_url);
        JSONObject bizContent = new JSONObject();
        bizContent.put("out_trade_no", "9021000122685017"+out_trade_no);
        bizContent.put("total_amount", price);
        bizContent.put("subject", subject);
        bizContent.put("product_code", "FAST_INSTANT_TRADE_PAY");
        request.setBizContent(bizContent.toString());
        System.out.println("bizContent: "+ bizContent.toString());
        AlipayTradePagePayResponse response = alipayClient.pageExecute(request);
        String form ="";
        if(response.isSuccess()){
            System.out.println("调用成功");
            form = response.getBody();
        } else {
            System.out.println("调用失败");
        }
        return form;
    }
        public static void main(String[] args) throws AlipayApiException {
                pay(111,12.02,"2111");
        }
}
