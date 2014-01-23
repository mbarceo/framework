// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.searchbox.domain.engine;

import com.searchbox.domain.engine.SearchEngine;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect SearchEngine_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager SearchEngine.entityManager;
    
    public static final List<String> SearchEngine.fieldNames4OrderClauseFilter = java.util.Arrays.asList("collections");
    
    public static final EntityManager SearchEngine.entityManager() {
        EntityManager em = new SearchEngine() {
        }.entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long SearchEngine.countSearchEngines() {
        return entityManager().createQuery("SELECT COUNT(o) FROM SearchEngine o", Long.class).getSingleResult();
    }
    
    public static List<SearchEngine> SearchEngine.findAllSearchEngines() {
        return entityManager().createQuery("SELECT o FROM SearchEngine o", SearchEngine.class).getResultList();
    }
    
    public static List<SearchEngine> SearchEngine.findAllSearchEngines(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM SearchEngine o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, SearchEngine.class).getResultList();
    }
    
    public static SearchEngine SearchEngine.findSearchEngine(Long id) {
        if (id == null) return null;
        return entityManager().find(SearchEngine.class, id);
    }
    
    public static List<SearchEngine> SearchEngine.findSearchEngineEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM SearchEngine o", SearchEngine.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<SearchEngine> SearchEngine.findSearchEngineEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM SearchEngine o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, SearchEngine.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void SearchEngine.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void SearchEngine.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            SearchEngine attached = SearchEngine.findSearchEngine(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void SearchEngine.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void SearchEngine.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public SearchEngine SearchEngine.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        SearchEngine merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}