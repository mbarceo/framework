// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.searchbox.domain;

import com.searchbox.domain.ApplicationBean;
import javax.annotation.PostConstruct;
import javax.el.ELContext;
import javax.el.ExpressionFactory;
import javax.faces.application.Application;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.faces.context.FacesContext;
import org.primefaces.component.menuitem.MenuItem;
import org.primefaces.component.submenu.Submenu;
import org.primefaces.model.DefaultMenuModel;
import org.primefaces.model.MenuModel;

privileged aspect ApplicationBean_Roo_ApplicationBean {
    
    declare @type: ApplicationBean: @ManagedBean;
    
    declare @type: ApplicationBean: @RequestScoped;
    
    private MenuModel ApplicationBean.menuModel;
    
    @PostConstruct
    public void ApplicationBean.init() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        menuModel = new DefaultMenuModel();
        Submenu submenu;
        MenuItem item;
        
        submenu = new Submenu();
        submenu.setId("accountSubmenu");
        submenu.setLabel("Account");
        item = new MenuItem();
        item.setId("createAccountMenuItem");
        item.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{messages.label_create}", String.class));
        item.setActionExpression(expressionFactory.createMethodExpression(elContext, "#{accountBean.displayCreateDialog}", String.class, new Class[0]));
        item.setIcon("ui-icon ui-icon-document");
        item.setAjax(false);
        item.setAsync(false);
        item.setUpdate(":dataForm:data");
        submenu.getChildren().add(item);
        item = new MenuItem();
        item.setId("listAccountMenuItem");
        item.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{messages.label_list}", String.class));
        item.setActionExpression(expressionFactory.createMethodExpression(elContext, "#{accountBean.displayList}", String.class, new Class[0]));
        item.setIcon("ui-icon ui-icon-folder-open");
        item.setAjax(false);
        item.setAsync(false);
        item.setUpdate(":dataForm:data");
        submenu.getChildren().add(item);
        menuModel.addSubmenu(submenu);
        
        submenu = new Submenu();
        submenu.setId("fieldSubmenu");
        submenu.setLabel("Field");
        item = new MenuItem();
        item.setId("createFieldMenuItem");
        item.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{messages.label_create}", String.class));
        item.setActionExpression(expressionFactory.createMethodExpression(elContext, "#{fieldBean.displayCreateDialog}", String.class, new Class[0]));
        item.setIcon("ui-icon ui-icon-document");
        item.setAjax(false);
        item.setAsync(false);
        item.setUpdate(":dataForm:data");
        submenu.getChildren().add(item);
        item = new MenuItem();
        item.setId("listFieldMenuItem");
        item.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{messages.label_list}", String.class));
        item.setActionExpression(expressionFactory.createMethodExpression(elContext, "#{fieldBean.displayList}", String.class, new Class[0]));
        item.setIcon("ui-icon ui-icon-folder-open");
        item.setAjax(false);
        item.setAsync(false);
        item.setUpdate(":dataForm:data");
        submenu.getChildren().add(item);
        menuModel.addSubmenu(submenu);
        
        submenu = new Submenu();
        submenu.setId("fieldFacetSubmenu");
        submenu.setLabel("FieldFacet");
        item = new MenuItem();
        item.setId("createFieldFacetMenuItem");
        item.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{messages.label_create}", String.class));
        item.setActionExpression(expressionFactory.createMethodExpression(elContext, "#{fieldFacetBean.displayCreateDialog}", String.class, new Class[0]));
        item.setIcon("ui-icon ui-icon-document");
        item.setAjax(false);
        item.setAsync(false);
        item.setUpdate(":dataForm:data");
        submenu.getChildren().add(item);
        item = new MenuItem();
        item.setId("listFieldFacetMenuItem");
        item.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{messages.label_list}", String.class));
        item.setActionExpression(expressionFactory.createMethodExpression(elContext, "#{fieldFacetBean.displayList}", String.class, new Class[0]));
        item.setIcon("ui-icon ui-icon-folder-open");
        item.setAjax(false);
        item.setAsync(false);
        item.setUpdate(":dataForm:data");
        submenu.getChildren().add(item);
        menuModel.addSubmenu(submenu);
        
        submenu = new Submenu();
        submenu.setId("solrCloudCollectionSubmenu");
        submenu.setLabel("SolrCloudCollection");
        item = new MenuItem();
        item.setId("createSolrCloudCollectionMenuItem");
        item.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{messages.label_create}", String.class));
        item.setActionExpression(expressionFactory.createMethodExpression(elContext, "#{solrCloudCollectionBean.displayCreateDialog}", String.class, new Class[0]));
        item.setIcon("ui-icon ui-icon-document");
        item.setAjax(false);
        item.setAsync(false);
        item.setUpdate(":dataForm:data");
        submenu.getChildren().add(item);
        item = new MenuItem();
        item.setId("listSolrCloudCollectionMenuItem");
        item.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{messages.label_list}", String.class));
        item.setActionExpression(expressionFactory.createMethodExpression(elContext, "#{solrCloudCollectionBean.displayList}", String.class, new Class[0]));
        item.setIcon("ui-icon ui-icon-folder-open");
        item.setAjax(false);
        item.setAsync(false);
        item.setUpdate(":dataForm:data");
        submenu.getChildren().add(item);
        menuModel.addSubmenu(submenu);
        
        submenu = new Submenu();
        submenu.setId("solrCollectionSubmenu");
        submenu.setLabel("SolrCollection");
        item = new MenuItem();
        item.setId("createSolrCollectionMenuItem");
        item.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{messages.label_create}", String.class));
        item.setActionExpression(expressionFactory.createMethodExpression(elContext, "#{solrCollectionBean.displayCreateDialog}", String.class, new Class[0]));
        item.setIcon("ui-icon ui-icon-document");
        item.setAjax(false);
        item.setAsync(false);
        item.setUpdate(":dataForm:data");
        submenu.getChildren().add(item);
        item = new MenuItem();
        item.setId("listSolrCollectionMenuItem");
        item.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{messages.label_list}", String.class));
        item.setActionExpression(expressionFactory.createMethodExpression(elContext, "#{solrCollectionBean.displayList}", String.class, new Class[0]));
        item.setIcon("ui-icon ui-icon-folder-open");
        item.setAjax(false);
        item.setAsync(false);
        item.setUpdate(":dataForm:data");
        submenu.getChildren().add(item);
        menuModel.addSubmenu(submenu);
    }
    
    public MenuModel ApplicationBean.getMenuModel() {
        return menuModel;
    }
    
    public String ApplicationBean.getAppName() {
        return "Searchbox";
    }
    
}
