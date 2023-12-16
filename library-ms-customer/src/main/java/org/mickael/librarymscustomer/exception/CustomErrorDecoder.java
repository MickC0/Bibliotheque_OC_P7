package org.mickael.librarymscustomer.exception;

import feign.Response;
import feign.codec.ErrorDecoder;

public class CustomErrorDecoder implements ErrorDecoder {

    private final ErrorDecoder defaultErrorDecoder = new Default();

    @Override
    public Exception decode(String invoquer, Response response) {
        if (response.status() == 400){
            return new CustomerBadRequestException("Requête incorrecte");
        } else if (response.status() == 404){
            return new CustomerNotFoundException("Customer not found");
        }
        return defaultErrorDecoder.decode(invoquer, response);
    }
}
