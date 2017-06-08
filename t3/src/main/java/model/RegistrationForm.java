package model;

public class RegistrationForm {
    private String name = "Arthur";
    private String email = "bm2003@mail.ru";
    private String web = "narod.ru";
    private int age = 20;

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }

    public String getWeb() {
        return web;
    }
    public void setWeb(String web) {
        this.web = web;
    }

    public int getAge() {
        return age;
    }
    public void setAge(int age) {
        this.age = age;
    }
}
