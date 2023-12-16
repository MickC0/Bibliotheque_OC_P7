package org.mickael.librarybatch.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(code = HttpStatus.NOT_FOUND, reason = "Book Not Found")
public class NotFoundException extends RuntimeException {

    private static final long serialVersionUID = 1L;
    public NotFoundException(String errorMessage) {
        super(errorMessage);
    }
}
