// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.searchbox.domain.app.facet;

import com.searchbox.domain.app.facet.RangeFacetDefinition;
import java.util.List;
import org.springframework.transaction.annotation.Transactional;

privileged aspect RangeFacetDefinition_Roo_Jpa_ActiveRecord {
    
    public static final List<String> RangeFacetDefinition.fieldNames4OrderClauseFilter = java.util.Arrays.asList("min", "max", "field");
    
    public static long RangeFacetDefinition.countRangeFacetDefinitions() {
        return entityManager().createQuery("SELECT COUNT(o) FROM RangeFacetDefinition o", Long.class).getSingleResult();
    }
    
    public static List<RangeFacetDefinition> RangeFacetDefinition.findAllRangeFacetDefinitions() {
        return entityManager().createQuery("SELECT o FROM RangeFacetDefinition o", RangeFacetDefinition.class).getResultList();
    }
    
    public static List<RangeFacetDefinition> RangeFacetDefinition.findAllRangeFacetDefinitions(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM RangeFacetDefinition o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, RangeFacetDefinition.class).getResultList();
    }
    
    public static RangeFacetDefinition RangeFacetDefinition.findRangeFacetDefinition(Long id) {
        if (id == null) return null;
        return entityManager().find(RangeFacetDefinition.class, id);
    }
    
    public static List<RangeFacetDefinition> RangeFacetDefinition.findRangeFacetDefinitionEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM RangeFacetDefinition o", RangeFacetDefinition.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<RangeFacetDefinition> RangeFacetDefinition.findRangeFacetDefinitionEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM RangeFacetDefinition o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, RangeFacetDefinition.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public RangeFacetDefinition RangeFacetDefinition.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        RangeFacetDefinition merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
