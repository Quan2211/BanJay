package com.example.duancanhan.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TrangChu {
// Trang chủ
    @GetMapping("/trang-chu")
    public String trangChu (){
        return "trang-chu/trang-chu";
    }

    //   collections giay nike nam
    @GetMapping("/collections/giay-nike/nam")
    public String giayNikeNam (){
        return "collections/giay-nike/nam";
    }
    //   collections giay nike nữ
    @GetMapping("/collections/giay-nike/nu")
    public String giayNikeNu (){
        return "collections/giay-nike/nu";
    }

    //   collections giay adidas Nam
    @GetMapping("/collections/giay-adidas/nam")
    public String giayAdidasNam (){
        return "collections/giay-adidas/nam";
    }
    //   collections giay adidas  Nữ
    @GetMapping("/collections/giay-adidas/nu")
    public String giayAdidasNu (){
        return "collections/giay-adidas/nu";
    }

    //   collections giay MLB  Nam
    @GetMapping("/collections/giay-mlb/nam")
    public String giayMLBNam  (){
        return "collections/giay-mlb/nam";
    }
    //   collections giay MLB  Nữ
    @GetMapping("/collections/giay-mlb/nu")
    public String giayMLBNu  (){
        return "collections/giay-mlb/nu";
    }

    //   collections giay khác nam
    @GetMapping("/collections/giay-khac/nam")
    public String giaykhacnam  (){
        return "collections/giay-khac/nam";
    }
    //   collections giay khác nnu
    @GetMapping("/collections/giay-khac/nu")
    public String giaykhacNu  (){
        return "collections/giay-khac/nu";
    }



}
