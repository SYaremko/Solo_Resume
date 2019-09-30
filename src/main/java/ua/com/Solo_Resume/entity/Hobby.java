package ua.com.Solo_Resume.entity;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "hobby")
public class Hobby implements Serializable, Comparable<Hobby>, ProfileEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(unique = true, nullable = false)
    private Long id;

    @Column(nullable = false, length = 30)
    private String name;

    //bi-directional many-to-one association to Profile
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_profile", nullable = false)
    private Profile profile;

    @Transient
    private boolean selected;

    public Hobby() {
    }

    public Hobby(String name) {
        super();
        this.name = name;
    }

    public Hobby(String name, boolean selected) {
        super();
        this.name = name;
        this.selected = selected;
    }

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Profile getProfile() {
        return this.profile;
    }

    public void setProfile(Profile profile) {
        this.profile = profile;
    }

    public boolean isSelected() {
        return selected;
    }

    public void setSelected(boolean selected) {
        this.selected = selected;
    }

    @Transient
    public String getCssClassName() {
        return name.replace(" ", "-").toLowerCase();
    }

    @Override
    public int compareTo(Hobby o) {
        if (o == null || getName() == null) {
            return 1;
        } else {
            return getName().compareTo(o.getName());
        }
    }

}