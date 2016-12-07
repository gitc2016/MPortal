package am.gitc.mportal.domain;

import javax.persistence.*;
import java.util.List;

/**
 * Created by RuBen on 30.11.2016.
 */
@Entity
@Table(name = "mentor_category")
public class MentorCategory {
    @Id
    @GeneratedValue
    private int id;
    @JoinColumn(name = "user")
    @Column(name = "user_id")
    private int userId;
    @Column(name = "category_id")
    private int categoryId;
    @Column(name = "description")
    private String about;
    @Column(name = "image_url")
    private String imgUrl;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getAbout() {
        return about;
    }

    public void setAbout(String about) {
        this.about = about;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }

    @Override
    public String toString() {
        return "MentorCategory{" +
                "id=" + id +
                ", userId=" + userId +
                ", categoryId=" + categoryId +
                ", about='" + about + '\'' +
                ", imgUrl='" + imgUrl + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof MentorCategory)) return false;

        MentorCategory that = (MentorCategory) o;

        if (getId() != that.getId()) return false;
        if (getUserId() != that.getUserId()) return false;
        if (getCategoryId() != that.getCategoryId()) return false;
        if (getAbout() != null ? !getAbout().equals(that.getAbout()) : that.getAbout() != null) return false;
        return getImgUrl() != null ? getImgUrl().equals(that.getImgUrl()) : that.getImgUrl() == null;

    }

    @Override
    public int hashCode() {
        int result = getId();
        result = 31 * result + getUserId();
        result = 31 * result + getCategoryId();
        result = 31 * result + (getAbout() != null ? getAbout().hashCode() : 0);
        result = 31 * result + (getImgUrl() != null ? getImgUrl().hashCode() : 0);
        return result;
    }
}
