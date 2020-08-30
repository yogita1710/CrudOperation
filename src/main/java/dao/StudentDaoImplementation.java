package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import model.Student1;

public class StudentDaoImplementation implements StudentDao {

	SessionFactory sessionFactory;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void create(Student1 stud) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.persist(stud);
		session.getTransaction().commit();
		
	}

	@Override
	public List<Student1> showAllStudents() {
		 return sessionFactory.openSession().createQuery("from Student1").list();
	
	}
	@Override
	public void deleteStudentById(int id) {
		Session sess=sessionFactory.openSession();
		sess.beginTransaction();
		//sess.createQuery("delete from Student where id = : id");
		Student1 stu1=(Student1) sess.load(Student1.class,id);
		sess.delete(stu1);
		//sess.update();
		sess.getTransaction().commit();
		
	}

	@Override
	public Student1 getStudentById(int id) {
		Session sess=sessionFactory.openSession();
		sess.beginTransaction();
		Student1 stu=(Student1) sess.load(Student1.class,id);
	    return stu;
		
	}

	@Override
	public void updateStudent(Student1 stu) {
		Session sess=sessionFactory.openSession();
		sess.beginTransaction();
		sess.update(stu);
		sess.getTransaction().commit();
		
	}
}