// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.searchbox.domain.app;

import com.searchbox.domain.app.FacetDefinition;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect FacetDefinition_Roo_Jpa_Entity {
    
    declare @type: FacetDefinition: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long FacetDefinition.id;
    
    @Version
    @Column(name = "version")
    private Integer FacetDefinition.version;
    
    public Long FacetDefinition.getId() {
        return this.id;
    }
    
    public void FacetDefinition.setId(Long id) {
        this.id = id;
    }
    
    public Integer FacetDefinition.getVersion() {
        return this.version;
    }
    
    public void FacetDefinition.setVersion(Integer version) {
        this.version = version;
    }
    
}