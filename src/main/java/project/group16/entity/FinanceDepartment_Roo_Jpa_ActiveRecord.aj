// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package project.group16.entity;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;
import project.group16.entity.FinanceDepartment;

privileged aspect FinanceDepartment_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager FinanceDepartment.entityManager;
    
    public static final EntityManager FinanceDepartment.entityManager() {
        EntityManager em = new FinanceDepartment().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long FinanceDepartment.countFinanceDepartments() {
        return entityManager().createQuery("SELECT COUNT(o) FROM FinanceDepartment o", Long.class).getSingleResult();
    }
    
    public static List<FinanceDepartment> FinanceDepartment.findAllFinanceDepartments() {
        return entityManager().createQuery("SELECT o FROM FinanceDepartment o", FinanceDepartment.class).getResultList();
    }
    
    public static FinanceDepartment FinanceDepartment.findFinanceDepartment(Long id) {
        if (id == null) return null;
        return entityManager().find(FinanceDepartment.class, id);
    }
    
    public static List<FinanceDepartment> FinanceDepartment.findFinanceDepartmentEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM FinanceDepartment o", FinanceDepartment.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void FinanceDepartment.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void FinanceDepartment.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            FinanceDepartment attached = FinanceDepartment.findFinanceDepartment(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void FinanceDepartment.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void FinanceDepartment.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public FinanceDepartment FinanceDepartment.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        FinanceDepartment merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
