package org.proffart.carpool.utils;

import org.apache.commons.codec.digest.DigestUtils;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;

public class Utils {

    public static String hash (String key) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        String sha256hex = DigestUtils.sha256Hex(key);
        return sha256hex;
    }
}
