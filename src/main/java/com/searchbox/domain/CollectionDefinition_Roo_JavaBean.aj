// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.searchbox.domain;

import java.util.List;

import com.searchbox.core.engine.SearchEngine;

privileged aspect CollectionDefinition_Roo_JavaBean {
    
    public String CollectionDefinition.getName() {
        return this.name;
    }
    
    public void CollectionDefinition.setName(String name) {
        this.name = name;
    }
    
    public SearchEngine CollectionDefinition.getEngine() {
        return this.engine;
    }
    
    public void CollectionDefinition.setEngine(SearchEngine engine) {
        this.engine = engine;
    }
    
    public List<FieldDefinition> CollectionDefinition.getFieldDefinitions() {
        return this.fieldDefinitions;
    }
    
    public void CollectionDefinition.setFieldDefinitions(List<FieldDefinition> fieldDefinitions) {
        this.fieldDefinitions = fieldDefinitions;
    }
    
}
