package am.gitc.mportal.domain;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by Gtc-user17 on 11/13/2016.
 */
@Entity
@Table(name = "user")
public class User {

    @Id
    @GeneratedValue
    private int id;

    private String name;

    private String surname;

    private String email;

    private String password;

    @Transient
    private String confirmPassword;

    private String imageSRC;

    @Enumerated(EnumType.STRING)
    private Gender gender;

    @ManyToOne
    private Country country;

    @Temporal(TemporalType.DATE)
    private Date birthDate;

    private boolean isAvailable;

    private boolean isActive;

    private String hashCode;


    public User() {

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

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

    public String getImageSRC() {
        return imageSRC;
    }

    public void setImageSRC(String imageSRC) {
        this.imageSRC = imageSRC;
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

    public Date getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(Date birthDate) {
        this.birthDate = birthDate;
    }

    public boolean isAvailable() {
        return isAvailable;
    }

    public void setAvailable(boolean available) {
        isAvailable = available;
    }

    public boolean isActive() {
        return isActive;
    }

    public void setActive(boolean active) {
        isActive = active;
    }

    public String getHashCode() {
        return hashCode;
    }

    public void setHashCode(String hashCode) {
        this.hashCode = hashCode;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", surname='" + surname + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", confirmPassword='" + confirmPassword + '\'' +
                ", imageSRC='" + imageSRC + '\'' +
                ", gender=" + gender +
                ", country=" + country +
                ", birthDate=" + birthDate +
                ", isAvailable=" + isAvailable +
                ", isActive=" + isActive +
                ", hashCode='" + hashCode + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        User user = (User) o;

        if (id != user.id) return false;
        if (isAvailable != user.isAvailable) return false;
        if (isActive != user.isActive) return false;
        if (name != null ? !name.equals(user.name) : user.name != null) return false;
        if (surname != null ? !surname.equals(user.surname) : user.surname != null) return false;
        if (email != null ? !email.equals(user.email) : user.email != null) return false;
        if (password != null ? !password.equals(user.password) : user.password != null) return false;
        if (confirmPassword != null ? !confirmPassword.equals(user.confirmPassword) : user.confirmPassword != null)
            return false;
        if (imageSRC != null ? !imageSRC.equals(user.imageSRC) : user.imageSRC != null) return false;
        if (gender != user.gender) return false;
        if (country != null ? !country.equals(user.country) : user.country != null) return false;
        if (birthDate != null ? !birthDate.equals(user.birthDate) : user.birthDate != null) return false;
        return hashCode != null ? hashCode.equals(user.hashCode) : user.hashCode == null;

    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (surname != null ? surname.hashCode() : 0);
        result = 31 * result + (email != null ? email.hashCode() : 0);
        result = 31 * result + (password != null ? password.hashCode() : 0);
        result = 31 * result + (confirmPassword != null ? confirmPassword.hashCode() : 0);
        result = 31 * result + (imageSRC != null ? imageSRC.hashCode() : 0);
        result = 31 * result + (gender != null ? gender.hashCode() : 0);
        result = 31 * result + (country != null ? country.hashCode() : 0);
        result = 31 * result + (birthDate != null ? birthDate.hashCode() : 0);
        result = 31 * result + (isAvailable ? 1 : 0);
        result = 31 * result + (isActive ? 1 : 0);
        result = 31 * result + (hashCode != null ? hashCode.hashCode() : 0);
        return result;
    }
}
