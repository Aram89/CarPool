package org.proffart.carpool.utils;
import org.apache.commons.lang3.RandomStringUtils;

public class StringUtils {

    public static String generateRandomStrong (int length) {
        return RandomStringUtils.random(length);
    }
}
