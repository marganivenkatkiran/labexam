package com.klef.jfsd.exam.controller;

import com.klef.jfsd.exam.model.Order;
import com.klef.jfsd.exam.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import jakarta.servlet.http.HttpServletRequest;

@Controller
public class OrderController {

    @Autowired
    private OrderService orderService;

    // Home page route
    @ResponseBody
    @GetMapping("/")
    public ModelAndView home() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("home");
        return mv;
    }

    @GetMapping("addorder")
    public ModelAndView addOrder() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("addorder");
        return mv;
    }


    // Handle form submission to insert new order
    @PostMapping("insertorder")
    public ModelAndView insertOrder(HttpServletRequest request) {
        // Get the order data from the form
        int orderId = Integer.parseInt(request.getParameter("orderId"));
        String productName = request.getParameter("productName");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        String orderDate = request.getParameter("orderDate");
        String customerName = request.getParameter("customerName");

        // Create a new Order object
        Order order = new Order();
        order.setOrderId(orderId);
        order.setProductName(productName);
        order.setQuantity(quantity);
        order.setOrderDate(orderDate);
        order.setCustomerName(customerName);

        // Call the service layer to save the order
        String msg = orderService.addOrder(order);  // Saving the order via service

        // Return success message with ModelAndView
        ModelAndView mv = new ModelAndView("bookingsuccess");
        mv.addObject("message", msg);
        return mv;
    }
}
