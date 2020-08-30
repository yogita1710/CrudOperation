package controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dao.StudentDao;
import dao.StudentDaoImplementation;
import model.Student1;

@Controller
public class MyController {
	
	@Autowired
	StudentDao sdao;
	
	public MyController() {
	sdao = new StudentDaoImplementation();
	}	
@RequestMapping("/")
public String home()
{
	return "index";
}
@RequestMapping("/addStudent")
public ModelAndView addStudent()
{
	return new ModelAndView("AddStudent","stu",new Student1());
}

@RequestMapping(value="/saveStudent",method=RequestMethod.POST)
public String saveStudent(@Valid @ModelAttribute("stu") Student1 stud, BindingResult br)
{
	if(br.hasErrors())
	{
		return "AddStudent";
	}
	sdao.create(stud);
	return "redirect:/showAll";
}
@RequestMapping("/showAll")
public ModelAndView showAllStudents()
{
	ModelAndView model=new ModelAndView();
	List<Student1> data=sdao.showAllStudents();
	model.addObject("allData",data);
	model.setViewName("AllStudents");
	return model;
	
}

@RequestMapping(value="/deleteStudent", method=RequestMethod.GET)
public String deleteStudentById(@RequestParam(value="id") int id)
{
	sdao.deleteStudentById(id);
	return "redirect:/showAll";
}

@RequestMapping(value="/editStudent", method=RequestMethod.GET)
public ModelAndView editStudentById(@RequestParam(value="id") int id)
{
	ModelAndView model=new ModelAndView();
	Student1 stu=sdao.getStudentById(id);
	model.addObject("data",stu);
	model.setViewName("UpdateStudent");
	return model;
}

@RequestMapping(value="/updateStudent",method=RequestMethod.POST)
public String updateStudent(@Valid @ModelAttribute ("data") Student1 stu, BindingResult br)
{
	if(br.hasErrors()) 
	{
		return "UpdateStudent";
	}
sdao.updateStudent(stu);
	return "redirect:/showAll";
}

}