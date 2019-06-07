
package com.controller;

import com.config.db_connection;
import com.entities.user;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class controller {
    
    db_connection conn = new db_connection();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(conn.db_connector());
    ModelAndView mav = new ModelAndView();
    int uid;
    List users;
    
    @RequestMapping("index.htm")
    public ModelAndView Listner() {
        String sql = "SELECT * FROM tbl_users";
        users = this.jdbcTemplate.queryForList(sql);
        mav.addObject("list", users);
        mav.setViewName("index");
        return mav;
    }
    
    @RequestMapping(value = "register.htm", method = RequestMethod.GET)
    public ModelAndView register() {
        mav.addObject(new user());
        mav.setViewName("register");
        return mav;
    }
    
    @RequestMapping(value = "register.htm", method = RequestMethod.POST)
    public ModelAndView register(user usr) {
        String sql = "INSERT INTO tbl_users(uid, firstName, lastName, email, tp) VALUES (?,?,?,?,?)";
        this.jdbcTemplate.update(sql,usr.getUid(),usr.getFirstName(),usr.getLastName(),usr.getEmail(),usr.getTp());
        return new ModelAndView("redirect:/index.htm");
    }
    
    @RequestMapping(value = "update.htm", method = RequestMethod.GET)
    public ModelAndView Update(HttpServletRequest request) {
        uid = Integer.parseInt(request.getParameter("uid"));
        String sql = "SELECT * FROM tbl_users WHERE uid=" + uid;
        mav.addObject("list",users);
        mav.setViewName("update");
        return mav;
    }
    
    @RequestMapping(value = "update.htm", method = RequestMethod.POST)
    public ModelAndView Update(user usr) {
        String sql = "UPDATE tbl_users SET firstName=?, lastName=?, email=?, tp=? WHERE uid=" + uid;
        this.jdbcTemplate.update(sql,usr.getFirstName(),usr.getLastName(),usr.getEmail(),usr.getTp());
        return new ModelAndView("redirect:/index.htm");
    }
    
    @RequestMapping("delete.htm")
    public ModelAndView Delete(HttpServletRequest request) {
        uid = Integer.parseInt(request.getParameter("uid"));
        String sql = "DELETE FROM tbl_users WHERE uid=" + uid;
        this.jdbcTemplate.update(sql);
        return new ModelAndView("redirect:/index.htm");
    }
    
}
