package edu.ucsb.cs56.pconrad.springboot.hello;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class Application {
    /*public static void writeUserData(userId, name, email) {
	firebase.database().ref('users/' + userId).set({
	    username: name,
	    email: email,
	)};
    }*/    


    public static void main(String[] args) {
	//writeUserData(1, max, test);
	SpringApplication.run(Application.class, args);
    }
}
