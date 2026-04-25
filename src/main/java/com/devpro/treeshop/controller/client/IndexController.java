package com.devpro.treeshop.controller.client;

import com.devpro.treeshop.model.Products;
import com.devpro.treeshop.model.Users;
import com.devpro.treeshop.service.CategoryService;
import com.devpro.treeshop.service.ProductService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/client/indexs")
public class IndexController {
    @Autowired
    private ProductService productService;

    @Autowired
    private CategoryService categoryService;

    @GetMapping
    public String indexPage(Model model, HttpSession session) {
        Users user = (Users) session.getAttribute("user");
        model.addAttribute("currentUser", user);

        List<Products> featuredProducts = productService.findFeaturedProducts();
        List<Products> bestSellingProducts = productService.findBestSellingProducts();
        List<String> categories = categoryService.getCategoryNames();

        model.addAttribute("featuredProducts", featuredProducts);
        model.addAttribute("bestSellingProducts", bestSellingProducts);
        model.addAttribute("categoryNames", categories);
        model.addAttribute("categoryNamesSize", categories.size());

        return "client/index";
    }
}
