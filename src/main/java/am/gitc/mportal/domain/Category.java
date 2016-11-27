package am.gitc.mportal.domain;

import javax.persistence.*;

/**
 * Created by Gtc-user17 on 11/13/2016.
 */

@Entity
@Table(name = "category")
public class Category {

    @Id
    @GeneratedValue
    private int id;

    @Column
    private String name;

    @Column
    private int parentID;

    public Category() {

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

    public int getParentID() {
        return parentID;
    }

    public void setParentID(int parentID) {
        this.parentID = parentID;
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Category category = (Category) o;

        if (id != category.id) return false;
        if (parentID != category.parentID) return false;
        return name != null ? name.equals(category.name) : category.name == null;

    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + parentID;
        return result;
    }

    @Override
    public String toString() {
        return "Category{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", parentID=" + parentID +
                '}';
    }
}
