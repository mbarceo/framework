// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.searchbox.domain.engine;

import com.searchbox.domain.engine.SolrCloudEngine;
import java.util.List;
import org.springframework.transaction.annotation.Transactional;

privileged aspect SolrCloudEngine_Roo_Jpa_ActiveRecord {
    
    public static final List<String> SolrCloudEngine.fieldNames4OrderClauseFilter = java.util.Arrays.asList("zkHost", "name");
    
    public static long SolrCloudEngine.countSolrCloudEngines() {
        return entityManager().createQuery("SELECT COUNT(o) FROM SolrCloudEngine o", Long.class).getSingleResult();
    }
    
    public static List<SolrCloudEngine> SolrCloudEngine.findAllSolrCloudEngines() {
        return entityManager().createQuery("SELECT o FROM SolrCloudEngine o", SolrCloudEngine.class).getResultList();
    }
    
    public static List<SolrCloudEngine> SolrCloudEngine.findAllSolrCloudEngines(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM SolrCloudEngine o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, SolrCloudEngine.class).getResultList();
    }
    
    public static SolrCloudEngine SolrCloudEngine.findSolrCloudEngine(Long id) {
        if (id == null) return null;
        return entityManager().find(SolrCloudEngine.class, id);
    }
    
    public static List<SolrCloudEngine> SolrCloudEngine.findSolrCloudEngineEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM SolrCloudEngine o", SolrCloudEngine.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<SolrCloudEngine> SolrCloudEngine.findSolrCloudEngineEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM SolrCloudEngine o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, SolrCloudEngine.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public SolrCloudEngine SolrCloudEngine.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        SolrCloudEngine merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
