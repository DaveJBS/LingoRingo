package com.tp.lingoRingo.repos;

import com.tp.lingoRingo.entities.Role;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.annotation.Rollback;

import static org.assertj.core.api.Assertions.assertThat;

@DataJpaTest
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE)
@Rollback(false)
public class RoleRepositoryTest {
    @Autowired
    RoleRepository repos;

    @Test
    public void testCreateRole(){
        Role roleAdmin = new Role("Privilege", "Membre privilégier avec de nouvelle fonctionaliter");
        Role savedRole = repos.save(roleAdmin);
        assertThat(savedRole.getId()).isGreaterThan(0);
    }


}
