package qlk.Configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

import qlk.Service.UserDetailsServiceImpl;
 
@Configuration
@EnableWebSecurity
public class WebSecurityConfig{
 
    @Bean
    public UserDetailsService userDetailsService() {
        return new UserDetailsServiceImpl();
    }
     
    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
     
    @Bean
    public DaoAuthenticationProvider authenticationProvider() {
        DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();
        authProvider.setUserDetailsService(userDetailsService());
        authProvider.setPasswordEncoder(passwordEncoder());
         
        return authProvider;
    }
 
    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        http.authorizeRequests(requests -> requests
                .antMatchers("/login", "/doLogout", "/loginerror").permitAll()
                .antMatchers("/", "/changepassword").hasAnyRole("NV", "ADMIN")
                .antMatchers("/admin/**").hasRole("ADMIN")
                //.antMatchers("/").hasRole("USER")
                .anyRequest().authenticated())
                .formLogin(login -> login
                        .permitAll()
                        .loginPage("/login")
                        .usernameParameter("email")
                        .passwordParameter("password")
                        .defaultSuccessUrl("/")
                        .failureUrl("/loginerror"))
                .logout(logout -> logout
                        .permitAll()
                        .logoutUrl("/doLogout")
                        .logoutSuccessUrl("/login")).csrf(csrf -> csrf.disable())
                .exceptionHandling(handling -> handling.accessDeniedPage("/403"));
        	      	
        return http.build();
    }
}
