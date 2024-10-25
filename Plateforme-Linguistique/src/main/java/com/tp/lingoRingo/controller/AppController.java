package com.tp.lingoRingo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AppController {
    @GetMapping("")
    public String home() {
        return "index"; // Assurez-vous que cette vue existe dans votre dossier de templates.
    }
}
