package com.hengzhi.service;

import com.hengzhi.entity.Condition;
import com.hengzhi.entity.ZhuJiLiangKu;
import com.hengzhi.mapper.ZhuJiLiangKuMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class ZhuJiLiangKuServer {

    @Autowired
    ZhuJiLiangKuMapper zhuJiLiangKuMapper;
    public List<ZhuJiLiangKu> showZhuJiLiangKu(){
        return zhuJiLiangKuMapper.showZhuJiLiangKu();
    }

    public List<ZhuJiLiangKu> tiaoJianChaXun(Condition condition){
        return  zhuJiLiangKuMapper.tiaoJianChaXun(condition);
    }

//    Service层统计车数
    public int tongJiCheShu(Condition condition){
        return zhuJiLiangKuMapper.tongJiCheShu(condition);
    }

    //    Service层统计总净重数
    public int tongJiJingZhong(Condition condition){
        return zhuJiLiangKuMapper.tongJiJingZhong(condition);
    }


}
