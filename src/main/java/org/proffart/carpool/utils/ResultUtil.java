package org.proffart.carpool.utils;


import org.codehaus.jackson.map.ObjectMapper;
import org.proffart.carpool.controller.json.CheckResponse;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import java.io.IOException;

/**
 * Created by Aram on 4/20/2015.
 */
public class ResultUtil {

    public static ResponseEntity sendCheckResult (boolean result, String error) throws IOException {
        CheckResponse response = new CheckResponse();
        response.setErrorString(error);
        response.setResult(result);
        ObjectMapper mapper = new ObjectMapper();
        String json = mapper.writeValueAsString(response);
        return new ResponseEntity(json, HttpStatus.OK);
    }
}
