package com.media.social.Social.Media.helper;

import java.io.FileInputStream;
import java.io.InputStream;
import java.util.Base64;

public class Converter {

    public static String covertPathTo64Base(String path) throws Exception{

        InputStream is = new FileInputStream(path);
        byte[] bytes = new byte[is.available()];
        is.read(bytes);

        Base64.Encoder encoder = Base64.getEncoder();
        String image = encoder.encodeToString(bytes);

        return image;
    }
}
