package org.proffart.carpool.controller.json;

import org.codehaus.jackson.map.annotate.JsonSerialize;

import javax.xml.bind.annotation.XmlRootElement;

/**
 * Created by Aram on 4/25/2015.
 */
@XmlRootElement

public class CheckResponse {

    private boolean result;
    private String errorString;

    public boolean isResult() {
        return result;
    }

    public void setResult(boolean result) {
        this.result = result;
    }

    public String getErrorString() {
        return errorString;
    }

    public void setErrorString(String errorString) {
        this.errorString = errorString;
    }



}
