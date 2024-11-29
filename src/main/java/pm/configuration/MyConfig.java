package pm.configuration;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan("pm")
public class MyConfig {
		@Bean
	EntityManager manager() {
		return Persistence.createEntityManagerFactory("pm").createEntityManager();
	}   

}
