package com.example.SpringBootHelloWorld;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication

//Main class 
//Implementing CommandLineRunner interface 
public class SpringBootHelloWorldApplication 
 implements CommandLineRunner { 

 // Method 1 
 public void run(String args[]) throws Exception 
 { 
     // Print statement when method is called 
     System.out.println("HEllo world"); 
 } 
 
 // Method 2 
 // Main driver method 
 public static void main(String[] args) 
 { 
     // Calling run() method to execute 
     // SpringBootApplication by 
     // invoking run() inside main() method 
     SpringApplication.run( 
         SpringBootHelloWorldApplication.class, args); 
 } 

}