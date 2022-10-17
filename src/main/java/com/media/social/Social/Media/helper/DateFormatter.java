package com.media.social.Social.Media.helper;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.zip.DataFormatException;

public class DateFormatter {

    public static String findDateDifference(Date newDate, Date prevDate){

        SimpleDateFormat sdf
                = new SimpleDateFormat(
                "dd-MM-yyyy HH:mm:ss");

        // Try Block

        // parse method is used to parse
        // the text from a string to
        // produce the date
        Date d1 = prevDate;
        Date d2 = newDate;

        // Calucalte time difference
        // in milliseconds
        long difference_In_Time
                = d2.getTime() - d1.getTime();

        // Calucalte time difference in
        // seconds, minutes, hours, years,
        // and days
        long difference_In_Seconds
                = (difference_In_Time
                / 1000)
                % 60;

        long difference_In_Minutes
                = (difference_In_Time
                / (1000 * 60))
                % 60;

        long difference_In_Hours
                = (difference_In_Time
                / (1000 * 60 * 60))
                % 24;

        long difference_In_Years
                = (difference_In_Time
                / (1000l * 60 * 60 * 24 * 365));
//        long difference_In_Weeks
//                = (difference_In_Time
//                / (1000l * 60 * 60 * 24))
//                %7;

        long difference_In_Days
                = (difference_In_Time
                / (1000 * 60 * 60 * 24))
                % 365;

        // Print the date difference in
        // years, in days, in hours, in
        // minutes, and in seconds

//        System.out.print(
//                "Difference "
//                        + "between two dates is: ");

        if(difference_In_Years >0){
            return difference_In_Years+" Years ago";
        }
        else if(difference_In_Days > 0){
            return difference_In_Days+" days ago";
        }
        else if(difference_In_Hours > 0){
            return difference_In_Hours+" hours ago";
        }
        else if(difference_In_Minutes > 0){
            return difference_In_Minutes+" minutes ago";
        }

        else if(difference_In_Seconds > 0){
            return difference_In_Seconds+" seconds ago";
        }
        else
            return "Just now";



    }
}
