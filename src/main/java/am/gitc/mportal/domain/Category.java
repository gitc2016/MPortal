package am.gitc.mportal.domain;

/**
 * Created by Gtc-user17 on 11/13/2016.
 */
public class Category {

    private int categoryID;
    private String name;
    private int parentID;

    public Category() {

    }


    public Category(int categoryID, String name, int parentID) {
        this.categoryID = categoryID;
        this.name = name;
        this.parentID = parentID;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Category category = (Category) o;

        return name != null ? name.equals(category.name) : category.name == null;

    }

    @Override
    public int hashCode() {
        return name != null ? name.hashCode() : 0;
    }

    @Override
    public String toString() {
        return "Category{" +
                "categoryID=" + categoryID +
                ", name='" + name + '\'' +
                ", parentID=" + parentID +
                '}';
    }
}
