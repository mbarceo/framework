// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.searchbox.web.admin;

import com.searchbox.domain.app.Preset;
import com.searchbox.domain.app.facet.RangeFacetDefinition;
import com.searchbox.domain.dm.Field;
import com.searchbox.web.admin.RangeFacetDefinitionController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect RangeFacetDefinitionController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String RangeFacetDefinitionController.create(@Valid RangeFacetDefinition rangeFacetDefinition, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, rangeFacetDefinition);
            return "admin/rangefacetdefinitions/create";
        }
        uiModel.asMap().clear();
        rangeFacetDefinition.persist();
        return "redirect:/admin/rangefacetdefinitions/" + encodeUrlPathSegment(rangeFacetDefinition.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String RangeFacetDefinitionController.createForm(Model uiModel) {
        populateEditForm(uiModel, new RangeFacetDefinition());
        return "admin/rangefacetdefinitions/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String RangeFacetDefinitionController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("rangefacetdefinition", RangeFacetDefinition.findRangeFacetDefinition(id));
        uiModel.addAttribute("itemId", id);
        return "admin/rangefacetdefinitions/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String RangeFacetDefinitionController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("rangefacetdefinitions", RangeFacetDefinition.findRangeFacetDefinitionEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) RangeFacetDefinition.countRangeFacetDefinitions() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("rangefacetdefinitions", RangeFacetDefinition.findAllRangeFacetDefinitions(sortFieldName, sortOrder));
        }
        return "admin/rangefacetdefinitions/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String RangeFacetDefinitionController.update(@Valid RangeFacetDefinition rangeFacetDefinition, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, rangeFacetDefinition);
            return "admin/rangefacetdefinitions/update";
        }
        uiModel.asMap().clear();
        rangeFacetDefinition.merge();
        return "redirect:/admin/rangefacetdefinitions/" + encodeUrlPathSegment(rangeFacetDefinition.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String RangeFacetDefinitionController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, RangeFacetDefinition.findRangeFacetDefinition(id));
        return "admin/rangefacetdefinitions/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String RangeFacetDefinitionController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        RangeFacetDefinition rangeFacetDefinition = RangeFacetDefinition.findRangeFacetDefinition(id);
        rangeFacetDefinition.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/admin/rangefacetdefinitions";
    }
    
    void RangeFacetDefinitionController.populateEditForm(Model uiModel, RangeFacetDefinition rangeFacetDefinition) {
        uiModel.addAttribute("rangeFacetDefinition", rangeFacetDefinition);
        uiModel.addAttribute("presets", Preset.findAllPresets());
        uiModel.addAttribute("fields", Field.findAllFields());
    }
    
    String RangeFacetDefinitionController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
