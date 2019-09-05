package com.lmw.dao.impl;


import com.lmw.beans.User;
import com.lmw.dao.UserDao;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class UserDaoImpl extends HibernateDaoSupport implements UserDao {

    @Override
    public void save(User user) {
        getHibernateTemplate().save(user);
    }

    @Override
    public User find(User user) {

        List<User> users = getHibernateTemplate().findByExample(user);
        if (users != null && users.size() == 1) {
            return users.get(0);
        } else {
            return null;
        }
    }

    @Override
    public User getUserByName(User user) {
        DetachedCriteria dc = DetachedCriteria.forClass(User.class);
        dc.add(Restrictions.eq("name", user.getName()));
        List<User> users = (List<User>) getHibernateTemplate().findByCriteria(dc);
        if (users != null && users.size() == 1) {
            return users.get(0);
        } else {
            return null;
        }
    }

    @Autowired
    private void setMySessionFactory(SessionFactory sessionFactory) {
        super.setSessionFactory(sessionFactory);
    }
}
