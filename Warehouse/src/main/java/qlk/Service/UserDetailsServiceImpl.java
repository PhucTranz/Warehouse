package qlk.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import qlk.MyUserDetails;
import qlk.Model.TaiKhoan;
import qlk.Repository.TaiKhoanRepository;
 
public class UserDetailsServiceImpl implements UserDetailsService {
 
    @Autowired
    private TaiKhoanRepository userRepository;
     
    @Override
    public UserDetails loadUserByUsername(String email)
            throws UsernameNotFoundException {
    	TaiKhoan user = userRepository.getUserByEmail(email);
    	if(user == null) {
    		user = new TaiKhoan();
    		user.setMatkhau("");
    	}
        return new MyUserDetails(user);
    }
 
}
