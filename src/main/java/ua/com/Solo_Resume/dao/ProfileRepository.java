package ua.com.Solo_Resume.dao;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import ua.com.Solo_Resume.entity.Profile;
import java.sql.Timestamp;
import java.util.List;

public interface ProfileRepository extends JpaRepository<Profile, Long>{

    Profile findByUid(String uid);

    Profile findByName(String name);

    Profile findByEmail(String email);

    int countByUid(String uid);

    Page<Profile> findByComletedYrue(Pageable pageable);

    List<Profile> findByCompletedFalseAndCreatedBefore(Timestamp oldDate);
}
