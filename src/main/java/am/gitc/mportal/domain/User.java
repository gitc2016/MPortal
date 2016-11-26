package am.gitc.mportal.domain;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by Gtc-user17 on 11/13/2016.
 */
@Entity
@Table(name = "User")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column
    private int id;

    @Column
    private String name;

    @Column
    private String surname;

    @Column
    private String email;

    @Column
    private String password;

    @Transient
    private  String confirmPassword;
    @Transient
    private String imageSRC;

    @Enumerated(EnumType.STRING)
    private Role role;

    @Enumerated(EnumType.STRING)
    private Gender gender;

    @ManyToOne
    private Country country;

    @Column
    private Date dateOfBirth;

    @Column
    private boolean is_online;

    @Column
    private boolean is_register;


    public User() {

    }


    public User(String name, String surname, String email, String password, String imageSRC, Role role,
                Gender gender, Country country, Date dateOfBirth, boolean is_online, boolean is_register) {
        this.name = name;
        this.surname = surname;
        this.email = email;
        this.password = password;
        this.imageSRC = imageSRC;
        this.role = role;
        this.gender = gender;
        this.country = country;
        this.dateOfBirth = dateOfBirth;
        this.is_online = is_online;
        this.is_register = is_register;
    }

    public boolean is_register() {
        return is_register;
    }

    public void setIs_register(boolean is_register) {
        this.is_register = is_register;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getURL() {
        return imageSRC;
    }

    public void setImageSRC(String url) {
        this.imageSRC = url;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public Gender getGender() {
        return gender;
    }

    public void setGender(Gender gender) {
        this.gender = gender;
    }


    public Country getCountry() {
        return country;
    }

    public void setCountry(Country country) {
        this.country = country;
    }

    public String getImageSRC() {
        return imageSRC;
    }

    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public boolean is_online() {
        return is_online;
    }

    public void setIs_online(boolean is_online) {
        this.is_online = is_online;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }
}
