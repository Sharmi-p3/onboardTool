

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import onboard.DBconnection;

/**
 * Servlet implementation class update_view
 */
@WebServlet("/update_view")
public class update_view extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public update_view() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");  
	    Date date = new Date();  
	    System.out.println("[INFO]-----"+formatter.format(date)+"-----Accessed Update View servlet-----[INFO]");
		String seqnum[]=new String[200];
		String name[]=new String[200];
		String mem_as[]=new String[200];
		String act_srt_dat[]=new String[200];
		String act_end_dat[]=new String[200];
		String pln_srt_dat[]=new String[200];
		String pln_end_dat[]=new String[200];
		String progres[]=new String[200];
		String hr[]=new String[200];
		String plan_hrs[]=new String[200];
		
		
	
		
		
		for(int i=0;i<200;i++){
			seqnum[i]=request.getParameter("seqnum"+i);
			name[i]=request.getParameter("name"+i);
			mem_as[i] = request.getParameter("mem_ass"+i);
			act_srt_dat[i]=request.getParameter("act_srt_date"+i);
			act_end_dat[i]=request.getParameter("act_end_date"+i);
			pln_srt_dat[i]=request.getParameter("pln_srt_date"+i);
			pln_end_dat[i]=request.getParameter("pln_end_date"+i);
			hr[i]=request.getParameter("hrs"+i);
			plan_hrs[i]=request.getParameter("phrs"+i);

}
	System.out.println(seqnum[0]+" "+name[0]);
		

	    PrintWriter writer = response.getWriter();
	  
     
        try
        {
        	DBconnection dBconnection = new DBconnection();
            Connection connection = (Connection) dBconnection.getConnection();
            for(int a=0;a<200;a++){
        	  String seq_num=seqnum[a];
        	  String nam=name[a];
          String mem_ass=mem_as[a];
          String act_srt_date=act_srt_dat[a];
          String act_end_date=act_end_dat[a];
          String pln_srt_date=pln_srt_dat[a];
          String pln_end_date=pln_end_dat[a];
          String hrs=hr[a];
          String pln_hrs=plan_hrs[a];
 
      String UpdateQuery="update ArchiveExecution_Details set name=?,mem_ass=?,act_srt_date=?,act_end_date=?,pln_srt_date=?,pln_end_date=?,hours=?,planned_hrs=? where seq_num=?";
      PreparedStatement st = connection.prepareStatement(UpdateQuery);
      st.setString(1, nam);
      st.setString(2, mem_ass);
      st.setString(3, act_srt_date);
      st.setString(4, act_end_date);
      st.setString(5, pln_srt_date);
      st.setString(6, pln_end_date);
      st.setString(7, hrs);
      st.setString(8, pln_hrs);
      st.setString(9, seq_num);
      st.execute();
           
          }
          
          connection.close();
        }
        catch (Exception e)
        {
        	 
        	 System.err.println("[ERROR]-----Got an exception!"+formatter.format(date)+"-----"+e.getMessage()+"----[ERROR]");
        }
        // return response
        response.sendRedirect("Archive_Execution.jsp");

	}

}
