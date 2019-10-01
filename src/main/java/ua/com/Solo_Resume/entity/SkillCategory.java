package ua.com.Solo_Resume.entity;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "skill_category")
public class SkillCategory implements Serializable{

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column
    private Long id;

    @Column(nullable = false, length = 50)
    private String category;

    public SkillCategory() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }
}