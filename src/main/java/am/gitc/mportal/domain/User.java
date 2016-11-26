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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        User user = (User) o;

        if (id != user.id) return false;
        if (is_online != user.is_online) return false;
        if (name != null ? !name.equals(user.name) : user.name != null) return false;
        if (surname != null ? !surname.equals(user.surname) : user.surname != null) return false;
        if (email != null ? !email.equals(user.email) : user.email != null) return false;
        if (password != null ? !password.equals(user.password) : user.password != null) return false;
        if (imageSRC != null ? !imageSRC.equals(user.imageSRC) : user.imageSRC != null) return false;
        if (role != user.role) return false;
        if (gender != user.gender) return false;
        if (country != null ? !country.equals(user.country) : user.country != null) return false;
        return dateOfBirth != null ? dateOfBirth.equals(user.dateOfBirth) : user.dateOfBirth == null;

    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (surname != null ? surname.hashCode() : 0);
        result = 31 * result + (email != null ? email.hashCode() : 0);
        result = 31 * result + (password != null ? password.hashCode() : 0);
        result = 31 * result + (imageSRC != null ? imageSRC.hashCode() : 0);
        result = 31 * result + (role != null ? role.hashCode() : 0);
        result = 31 * result + (gender != null ? gender.hashCode() : 0);
        result = 31 * result + (country != null ? country.hashCode() : 0);
        result = 31 * result + (dateOfBirth != null ? dateOfBirth.hashCode() : 0);
        result = 31 * result + (is_online ? 1 : 0);
        return result;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", surname='" + surname + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", imageSRC='" + imageSRC + '\'' +
                ", role=" + role +
                ", gender=" + gender +
                ", country=" + country +
                ", dateOfBirth=" + dateOfBirth +
                ", is_online=" + is_online +
                ", is_register=" + is_register +
                '}';
    }
}
