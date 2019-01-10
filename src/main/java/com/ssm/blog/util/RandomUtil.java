package com.ssm.blog.util;

import java.util.HashSet;
import java.util.Random;

/**
 * @Author: LiangKaiXuan
 * @Date: 2018/12/26 10:03
 * @Decription: 生成验证码
 */
public class RandomUtil {
    public static String makeRandom(){
        Random random = new Random();
        String result = "";
        for(;;){
            int temp = random.nextInt(8) + 1;
            result = result + temp;
            if (result.length() == 6){
                break;
            }
        }
        return result;
    }
}
