package ua.com.Solo_Resume.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.RepositoryDefinition;
import ua.com.Solo_Resume.entity.SkillCategory;
import org.springframework.data.domain.Sort;

import java.util.List;


public interface SkillCategoryRepository extends JpaRepository<SkillCategory, Long>{

    List<SkillCategory> findAll(Sort sort);
}
