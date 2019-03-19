package no.oslomet.controller;


import no.oslomet.model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.LinkedList;
import java.util.List;

@Controller
public class HomeController {

    List<Student> studentList = new LinkedList<Student>();

    @RequestMapping("/")
    public String home(){
        return "index";
    }

    @RequestMapping("/list")
    public String list(Model model){
        model.addAttribute("students", studentList);
        return "list";
    }

    @RequestMapping("/form")
    public String form(Model model){
        Student student = new Student();
       model.addAttribute("student", student);
        return "form";
    }

    @RequestMapping("/save")
    public String save(@ModelAttribute("student") Student student){
        student.setId(studentList.size() +1);
        studentList.add(student);
        return "redirect:/list";
    }

    @RequestMapping("/edit/{id}")
    public String edit(@PathVariable("id") String idParam, Model model){
        long id = Long.parseLong(idParam);
        Student editStudent = null;

        for(Student student : studentList){
            if(student.getId() == id) editStudent = student;
        }

        model.addAttribute("student", editStudent);
        return "form";

    }


    @RequestMapping("/delete/{id}")
    public String delete(@PathVariable("id") String idParam, Model model){
        long id = Long.parseLong(idParam);
        for(Student student : studentList){
            if(student.getId() == id) studentList.remove(student);
        }
        model.addAttribute("students", studentList);
        return "list";
    }



}
