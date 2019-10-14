package ua.com.Solo_Resume.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.com.Solo_Resume.entity.ProfileRestore;


public interface ProfileRestoreRepository extends JpaRepository<ProfileRepository, Long> {

    ProfileRestore findByToken(String token);

}
