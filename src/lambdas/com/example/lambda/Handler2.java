package com.example.lambda;

import com.amazonaws.services.lambda.runtime.Context;
import com.amazonaws.services.lambda.runtime.RequestHandler;

public class Handler2 implements RequestHandler<Object, String> {
    public String handleRequest(Object input, Context context) {
        return "Respuesta desde Lambda 2: " + input.toString();
    }
}