package com.agungsetiawan.springjquery.service;

import org.springframework.stereotype.Service;

/**
 *
 * @author awanlabs
 */
@Service
public class AritmethicService {
    public Integer add(Integer operandOne,Integer operandTwo){
        return operandOne+operandTwo;
    }
}
