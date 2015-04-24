package org.proffart.carpool.utils;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import org.apache.commons.codec.digest.DigestUtils;
/**
 * Created by Aram on 4/24/2015.
 */
public class Utils {

    public static String hash (String key) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        String sha256hex = org.apache.commons.codec.digest.DigestUtils.sha256Hex(key);
        return sha256hex;
    }
}
