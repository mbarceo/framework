// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.searchbox.domain;

import com.searchbox.domain.CollectionDefinition;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect CollectionDefinition_Roo_Jpa_Entity {
    
    declare @type: CollectionDefinition: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long CollectionDefinition.id;
    
    @Version
    @Column(name = "version")
    private Integer CollectionDefinition.version;
    
    public CollectionDefinition.new() {
        super();
    }

    public Long CollectionDefinition.getId() {
        return this.id;
    }
    
    public void CollectionDefinition.setId(Long id) {
        this.id = id;
    }
    
    public Integer CollectionDefinition.getVersion() {
        return this.version;
    }
    
    public void CollectionDefinition.setVersion(Integer version) {
        this.version = version;
    }
    
}