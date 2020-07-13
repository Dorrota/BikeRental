package com.kocurek.bikerental.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@ControllerAdvice(basePackages = "com.kocurek.bikerental")
@Slf4j
public class ExceptionHandlerController {

/*    public static final String DEFAULT_ERROR_VIEW = "/error/404error";

    @ExceptionHandler(Exception.class)
    public String defaultrrorHandler(HttpServletRequest req, Exception e) throws Exception {
        return DEFAULT_ERROR_VIEW;
    }*/

    @ResponseStatus(HttpStatus.NOT_FOUND)
    @ExceptionHandler(Exception.class)
    public ModelAndView notFoundException(Exception exception){

        ModelAndView modelAndView = new ModelAndView("/error");

        log.error("My not found exception.");
        log.error(exception.getMessage());
        // modelAndView.setViewName("404error");
        modelAndView.addObject("exception", exception);
        return modelAndView;
    }



    //@ResponseStatus(HttpStatus.BAD_REQUEST)
/*    @ExceptionHandler(Exception.class)
    public ModelAndView handleNumberFormat(Exception exception){

        log.error("Handling Number Format Exception");
        log.error(exception.getMessage());

        ModelAndView modelAndView = new ModelAndView();

        modelAndView.setViewName("except/404error");
        modelAndView.addObject("exception", exception);

        return modelAndView;
    }*/
/*    @ExceptionHandler(RuntimeException.class)
    public ModelAndView handleError(RuntimeException exception, Model model) {
        model.addAttribute("message", "Oops Sorry !!!!");
        return new ModelAndView("error");
    }*/
}
