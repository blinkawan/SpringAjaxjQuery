package com.agungsetiawan.springjquery.controller;

import com.agungsetiawan.springjquery.service.AritmethicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author awanlabs
 */
@Controller
public class AritmethicController {
    
    @Autowired
    private AritmethicService aritmethicService;
    
    @RequestMapping(value = "/",method = RequestMethod.GET)
    public String index(Model model){
        return "index";
    }
    
    @RequestMapping(value = "/add",method = RequestMethod.POST)
    public @ResponseBody String add(@RequestParam(value = "paramOne",required = false,defaultValue = "0") Integer paramOne,@RequestParam(value = "paramTwo",required = false,defaultValue = "0") Integer paramTwo){
        return aritmethicService.add(paramOne, paramTwo).toString();
    }
}
