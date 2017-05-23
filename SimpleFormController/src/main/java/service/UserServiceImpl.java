package service;

import model.User;

public class UserServiceImpl implements UserService {

    public void add(User user) {
        //Persist the user object here.
        System.out.println("model.User added successfully");
    }
}
