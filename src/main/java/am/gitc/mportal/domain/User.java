package am.gitc.mportal.domain;

import javax.persistence.*;

/**
 * Created by Gtc-user17 on 11/13/2016.
 */
@Table(name = "user")
@Entity
public class User {

    @Id
    @GeneratedValue
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
    @Column
    private String imageSRC;
    @Enumerated(EnumType.STRING)
    private Role role;
    @Enumerated(EnumType.STRING)
    private Gender gender;
    @ManyToOne
    private Country country;
    @Column
    private int registerCode;
    @Column
    @Temporal(TemporalType.DATE)
    private String dateOfBirth;


    public User() {

    }

    public User(int id, String name, String surname, String email, String password,String url, Role role, Gender gender, Country country,int registerCode,String dateOfBirth) {
        this.id = id;
        this.name = name;
        this.surname = surname;
        this.email = email;
        this.password = password;
        this.imageSRC = url;
        this.role = role;
        this.gender = gender;
        this.country = country;
        this.registerCode=registerCode;
        this.dateOfBirth = dateOfBirth;
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

    public int getRegisterCode() {
        return registerCode;
    }

    public void setRegisterCode(int registerCode) {
        this.registerCode = registerCode;
    }

    public String getImageSRC() {
        return imageSRC;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        User user = (User) o;

        if (id != user.id) return false;
        if (registerCode != user.registerCode) return false;
        if (name != null ? !name.equals(user.name) : user.name != null) return false;
        if (surname != null ? !surname.equals(user.surname) : user.surname != null) return false;
        if (email != null ? !email.equals(user.email) : user.email != null) return false;
        if (password != null ? !password.equals(user.password) : user.password != null) return false;
        if (imageSRC != null ? !imageSRC.equals(user.imageSRC) : user.imageSRC != null) return false;
        if (dateOfBirth != null ? !dateOfBirth.equals(user.dateOfBirth) : user.dateOfBirth!= null) return false;
        if (role != user.role) return false;
        if (gender != user.gender) return false;
        return country != null ? country.equals(user.country) : user.country == null;

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
        result = 31 * result + registerCode;
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
                ", imageSRC='" + dateOfBirth + '\'' +
                ", role=" + role +
                ", gender=" + gender +
                ", country=" + country +
                ", registerCode=" + registerCode +
                '}';
    }
}
