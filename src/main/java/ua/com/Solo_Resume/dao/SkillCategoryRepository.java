package ua.com.Solo_Resume.dao;

import org.springframework.data.repository.RepositoryDefinition;
import ua.com.Solo_Resume.entity.SkillCategory;
import org.springframework.data.domain.Sort;

import java.util.List;

@RepositoryDefinition(domainClass = SkillCategory.class, idClass = Long.class)
public interface SkillCategoryRepository {

    List<SkillCategory> findAll(Sort sort);
}
