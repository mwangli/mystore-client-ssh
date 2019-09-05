package com.lmw.dao.impl;

import com.lmw.beans.Goods;
import com.lmw.dao.GoodsDao;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class GoodsDaoImpl extends HibernateDaoSupport implements GoodsDao {

    @Override
    public List<Goods> listGoodsByName(String name, Integer currentPage, Integer pageSize) {
        Session currentSession = getHibernateTemplate().getSessionFactory().getCurrentSession();
        Query query = currentSession.createQuery("from Goods where name like :name");
        query.setString("name","%"+name+"%");
        return query.setFirstResult((currentPage-1)*pageSize).setMaxResults(pageSize).list();
    }

    @Override
    public Integer getCountByName(String name) {
        DetachedCriteria dc = DetachedCriteria.forClass(Goods.class);
        dc.setProjection(Projections.rowCount());
        dc.add(Restrictions.like("name","%"+name+"%"));
        Long count = (Long) getHibernateTemplate().findByCriteria(dc).iterator().next();
        return count.intValue();
    }

    @Autowired
    private void setMySessionFactory(SessionFactory sessionFactory){
        super.setSessionFactory(sessionFactory);
    }
}
