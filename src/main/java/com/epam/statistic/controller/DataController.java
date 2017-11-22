package com.epam.statistic.controller;

import com.epam.statistic.entity.Laboratory;
import com.epam.statistic.service.LaboratoryService;
import net.sf.jasperreports.engine.JRDataSource;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class DataController {

    private final LaboratoryService laboratoryService;

    @Autowired
    public DataController(LaboratoryService labaratoryService) {
        this.laboratoryService = labaratoryService;
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String main() {
        return "index";
    }

    @RequestMapping(value = "/view-table", method = RequestMethod.GET)
    public String findAllInTable(Model model) {
        List<Laboratory> allLaboratories = laboratoryService.findAll();
        model.addAttribute("laboratories", allLaboratories);
        return "laba_table";
    }

    @RequestMapping(value = "/view-chart", method = RequestMethod.GET)
    public String findAllInChart(Model model) {
        List<Laboratory> pieDataList = laboratoryService.findAll();
        model.addAttribute("pieDataList", pieDataList);
        return "laba_chart";
    }

    @RequestMapping(value = "/view-pdf", method = RequestMethod.GET)
    public ModelAndView findAllInPDF() {
        Map<String, Object> pdfMap = new HashMap<>();
        List<Laboratory> allLaboratories = laboratoryService.findAll();
        JRDataSource jrDataSource = new JRBeanCollectionDataSource(allLaboratories);
        pdfMap.put("jrData", jrDataSource);
        return new ModelAndView("pdfReport", pdfMap);
    }

    @RequestMapping(value = "/view-json", method = RequestMethod.GET)
    public @ResponseBody
    List<Laboratory> findAllInJson() {
        return laboratoryService.findAll();
    }
}
