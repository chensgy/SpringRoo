// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package project.group16.entity;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;
import project.group16.entity.TransferOfFunds;

privileged aspect TransferOfFunds_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager TransferOfFunds.entityManager;
    
    public static final EntityManager TransferOfFunds.entityManager() {
        EntityManager em = new TransferOfFunds().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long TransferOfFunds.countTransferOfFundses() {
        return entityManager().createQuery("SELECT COUNT(o) FROM TransferOfFunds o", Long.class).getSingleResult();
    }
    
    public static List<TransferOfFunds> TransferOfFunds.findAllTransferOfFundses() {
        return entityManager().createQuery("SELECT o FROM TransferOfFunds o", TransferOfFunds.class).getResultList();
    }
    
    public static TransferOfFunds TransferOfFunds.findTransferOfFunds(Long id) {
        if (id == null) return null;
        return entityManager().find(TransferOfFunds.class, id);
    }
    
    public static List<TransferOfFunds> TransferOfFunds.findTransferOfFundsEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM TransferOfFunds o", TransferOfFunds.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void TransferOfFunds.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void TransferOfFunds.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            TransferOfFunds attached = TransferOfFunds.findTransferOfFunds(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void TransferOfFunds.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void TransferOfFunds.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public TransferOfFunds TransferOfFunds.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        TransferOfFunds merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
