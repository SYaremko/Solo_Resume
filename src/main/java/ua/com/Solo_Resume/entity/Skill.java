package ua.com.Solo_Resume.entity;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "skill")
public class Skill implements Serializable, ProfileEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(unique = true, nullable = false)
    private Long id;

    @Column(nullable = false, length = 50)
//    @EnglishLanguage
//    @Size(min=1)
    private String category;

    @Column(nullable = false, length = 2147483647)
//    @EnglishLanguage
//    @Size(min=1)
    private String value;

    //bi-directional many-to-one association to Profile
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_profile", nullable = false)
    private Profile profile;

    public Skill() {
    }

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCategory() {
        return this.category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getValue() {
        return this.value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public Profile getProfile() {
        return this.profile;
    }

    public void setProfile(Profile profile) {
        this.profile = profile;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Skill)) return false;

        Skill skill = (Skill) o;

        if (id != null ? !id.equals(skill.id) : skill.id != null) return false;
        if (category != null ? !category.equals(skill.category) : skill.category != null) return false;
        return value != null ? value.equals(skill.value) : skill.value == null;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (category != null ? category.hashCode() : 0);
        result = 31 * result + (value != null ? value.hashCode() : 0);
        return result;
    }
}