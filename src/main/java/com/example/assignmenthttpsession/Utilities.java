package com.example.assignmenthttpsession;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

public class Utilities {
        public static class Config {
            private String url;
            private String user;
            private String pass;

            public Config(String url, String user, String pass) {
                this.url = url;
                this.user = user;
                this.pass = pass;
            }

            public String getUrl() {
                return url;
            }

            public String getUser() {
                return user;
            }

            public String getPass() {
                return pass;
            }
        }

        public static Config properties() throws IOException {
            Properties prop = new Properties();
            FileInputStream fileInputStream = new FileInputStream("C:/Users/chait/IdeaProjects/AssignmentHTTPsession/src/main/resources/config.properties");
            prop.load(fileInputStream);
            String url = prop.getProperty("url");
            String user = prop.getProperty("User");
            String pass = prop.getProperty("Pass");
            return new Config(url, user, pass);
        }
}


