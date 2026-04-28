package com.example.lambda;

import com.amazonaws.services.lambda.runtime.Context;
import com.amazonaws.services.lambda.runtime.RequestHandler;

public class Handler1 implements RequestHandler<Object, String> {
    public String handleRequest(Object input, Context context) {
        return "Hola Mundo desde Lambda 1";
    }
}