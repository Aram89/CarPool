package org.proffart.carpool.utils;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import java.io.IOException;

/**
 * Created by Aram on 4/20/2015.
 */
public class ResultUtil {

    public static ResponseEntity sendError (String errorString) throws IOException {
        ErrorStings error = new ErrorStings(errorString);
        ObjectMapper mapper = new ObjectMapper();
        String json = mapper.writeValueAsString(error);
        return new ResponseEntity(json, HttpStatus.OK);
    }
}
