package com.devpro.treeshop.controller.client;

import ch.qos.logback.core.model.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/client/products")
public class ProductController {

    @GetMapping
    public String getProducts(Model model) {
        return "client/categories";
    }
}
