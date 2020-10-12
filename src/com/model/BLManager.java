package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;

import com.pojo.*;
public class BLManager {
	SessionFactory sf = new Configuration().configure().buildSessionFactory();
	public void saveEBook(EBook r) {
		Session s=sf.openSession();
		Transaction tr=s.beginTransaction();
		s.save(r);
		tr.commit();
		s.close();
		
	}
	
	public void deleteEBook(EBook eq) {
		Session s=sf.openSession();
		Transaction tr=s.beginTransaction();
		s.delete(eq);
		tr.commit();
		s.close();
		
	}
	public void saveELibrarian(ELibrarian e)
	{
		Session s=sf.openSession();
		Transaction tr=s.beginTransaction();
		s.save(e);
		tr.commit();
		s.close();
	}
	
	public void deleteLibrarian(ELibrarian e)
	{
		Session s=sf.openSession();
		Transaction tr=s.beginTransaction();
		s.delete(e);
		tr.commit();
		s.close();
	}
	
	public void saveIssueBook(EIssuebook e)
	{
		Session s=sf.openSession();
		Transaction tr=s.beginTransaction();
		s.save(e);
		tr.commit();
		s.close();
	}
	
	public List<EIssuebook> getEIssuebook()
	{
		Session s = sf.openSession();
		Criteria cr = s.createCriteria(EIssuebook.class);
		
		List<EIssuebook> l = cr.list();
		return l;
	}

	
public ELibrarian searchuserpass(String email, String password) {
		
		Session session = sf.openSession();
		Criteria cr = session.createCriteria(ELibrarian.class);
		cr.add(Restrictions.eq("email", email));
		cr.add(Restrictions.eq("password", password));
		
		
		ELibrarian a = (ELibrarian) cr.uniqueResult();

		return a;
		
	}

public List<ELibrarian > getAllLibrarian()
{
	Session s = sf.openSession();
	Criteria cr = s.createCriteria(ELibrarian .class);
	
	List<ELibrarian > l = cr.list();
	return l;
}

public List<EBook > getEBook()
{
	Session s = sf.openSession();
	Criteria cr = s.createCriteria(EBook.class);
	
	List<EBook > l = cr.list();
	return l;
}

public ELibrarian searchByLibId(int id) {
	Session s=sf.openSession();
	Criteria cr=s.createCriteria(ELibrarian.class);
	cr.add(Restrictions.eq("id",id));
	ELibrarian st=(ELibrarian)cr.uniqueResult();
	return st;
}
public void updateLibrarian(ELibrarian e) {
	Session s=sf.openSession();
	Transaction tr=s.beginTransaction();
	s.update(e);
	tr.commit();
	s.close();
	
}



public static Connection getCon(){
	Connection con=null;
	try{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/elab1","root","");
		
	}catch(Exception e){System.out.println(e);}
	return con;
}

public static int getIssued(String callno){
	int issued=0;
	try{
		Connection con=BLManager.getCon();
		PreparedStatement ps=con.prepareStatement("select * from e_book where callno=?");
		ps.setString(1,callno);
		ResultSet rs=ps.executeQuery();
		if(rs.next()){
			issued=rs.getInt("issued");
		}
		con.close();
		
	}catch(Exception e){System.out.println(e);}
	//System.out.println("issued:"+issued);
	return issued;
}
public static boolean checkIssue(String callno){
	boolean status=false;
	try{
		Connection con=BLManager.getCon();
		PreparedStatement ps=con.prepareStatement("select * from e_book where callno=? and quantity>issued");
		ps.setString(1,callno);
		ResultSet rs=ps.executeQuery();
	
		if(rs.next()){
			
			status=true;
		}
		con.close();
		
	}catch(Exception e){System.out.println(e);}
	
	return status;
}
public static int issueBook(EIssuebook bean){
	String callno=bean.getCallno();
	//System.out.println("Bookid="+callno);
	boolean checkstatus=checkIssue(callno);
	//System.out.println("Check status: "+checkstatus);
	if(checkstatus){
		int status=0,status1=0;
		try{
			System.out.println(bean.getCallno());
			Connection con=BLManager.getCon();
			PreparedStatement ps=con.prepareStatement("insert into e_issuebook(callno,studentid,studentname,studentmobile,issueddate,returnstatus) values(?,?,?,?,?,?)");
			
			ps.setString(1,bean.getCallno());
			ps.setInt(2,bean.getStudentid());
			ps.setString(3,bean.getStudentname());
			ps.setString(4,bean.getStudentmobile());
			java.sql.Date currentDate=new java.sql.Date(System.currentTimeMillis());
			ps.setDate(5,currentDate);
			ps.setString(6,"no");
			
			status=ps.executeUpdate();
		//	System.out.println("insert="+status);
			
			if(status>0){
				PreparedStatement ps2=con.prepareStatement("update e_book set issued=? where callno=?");
				ps2.setInt(1,getIssued(callno)+1);
				ps2.setString(2,bean.getCallno());
				status1=ps2.executeUpdate();
			//	System.out.println("update="+status1);
			}
		
			con.close();
		}catch(Exception e){System.out.println(e);}
		
		System.out.println(status1);
		return status1;
		
	}else{
		return 0;
	}
}
public static int returnBook(String callno,int studentid){
	int status=0;
		try{
			Connection con=BLManager.getCon();
			PreparedStatement ps=con.prepareStatement("update e_issuebook set returnstatus='yes' where callno=? and studentid=?");
			ps.setString(1,callno);
			ps.setInt(2,studentid);
			
			status=ps.executeUpdate();
			if(status>0){
				PreparedStatement ps2=con.prepareStatement("update e_book set issued=? where callno=?");
				ps2.setInt(1,getIssued(callno)-1);
				ps2.setString(2,callno);
				status=ps2.executeUpdate();
			}
			con.close();
			
		}catch(Exception e){System.out.println(e);}
		
		return status;
}

}
