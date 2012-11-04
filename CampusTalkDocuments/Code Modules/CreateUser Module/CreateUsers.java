package org.campustalk.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.campustalk.entity.CampusTalkBranch;
import org.campustalk.entity.CampusTalkRoles;
import org.campustalk.sql.dbBranch;
import org.campustalk.sql.dbRole;
import org.campustalk.sql.dbUser;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONArray;;

/**
 * Servlet implementation class CreateUser
 */
@WebServlet("/CreateUser")

public class CreateUsers extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateUsers() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter out=response.getWriter();
		JSONObject resp = new JSONObject();		
		//JSONArray branch_arr = new JSONArray();
		//JSONObject temp;
		String status="fail";		
		try
		{
			String req_type = request.getParameter("type");
			
			if (req_type.equalsIgnoreCase("BranchData")) // Request for Branch name
			{
				dbBranch objdbBranch = new dbBranch();
				CampusTalkBranch ctBranch [] = objdbBranch.getBranchData();
				JSONArray branch_arr = new JSONArray();
				JSONObject temp;
				
				for(int i=0;i<ctBranch.length; i++)
				{
						temp = new JSONObject();
						temp = ctBranch[i].toJSONObject();
						//branch_arr.put(ctBranch[i].toJSONObject());					
						branch_arr.put(temp);
				}
				
				resp.put("branch", branch_arr);
				status="success";
			}
			
			else if (req_type.equalsIgnoreCase("RoleData")) // Request for Role Data
			{
				dbRole objdbRole = new dbRole();
				CampusTalkRoles ctRole [] = objdbRole.getRoleData();
				JSONArray role_arr = new JSONArray();
				JSONObject temp;
				
				for(int i=0;i<ctRole.length; i++)
				{
						temp = new JSONObject();
						temp = ctRole[i].toJSONObject();
						role_arr.put(temp);					
				}
				
				resp.put("role", role_arr);
				status="success";
			}
			
			else if (req_type.equalsIgnoreCase("SaveData")) // Request for Save User Data
			{
				
				String email = request.getParameter("email");
				String branch = request.getParameter("branch");
				int year = Integer.parseInt(request.getParameter("year"));
				String role = request.getParameter("role");
											
				dbUser objdbUser=new dbUser();
				objdbUser.AddUser(email,branch,year,role);
				status="success";
			}
			
			else if (req_type.equalsIgnoreCase("UserData")) // Request for All User Data
			{
				dbUser objdbUser=new dbUser();
				ResultSet rs=objdbUser.getUserData();
				
				//int i=0;
				JSONArray user_arr = new JSONArray();
				JSONObject temp;
				
				while(rs.next())
				{
					temp = new JSONObject();
								
					temp.put("id", rs.getInt("id"));
					temp.put("email", rs.getString("email"));
					temp.put("firstname", rs.getString("firstname"));
					temp.put("lastname", rs.getString("lastname"));
					temp.put("branch", rs.getString("branch"));
					temp.put("year", rs.getInt("year"));
					temp.put("role", rs.getString("role"));
					temp.put("status", rs.getString("status"));
					
					user_arr.put(temp);					
				}
				
				resp.put("user", user_arr);
				status="success";			
			}
			
			else if (req_type.equalsIgnoreCase("EditData")) // Request for Edit Data
			{
				int id = Integer.parseInt(request.getParameter("id"));
				String email = request.getParameter("email");
				String bname = request.getParameter("bname");
				int year = Integer.parseInt(request.getParameter("year"));
				String role = request.getParameter("role");
				String stat = request.getParameter("status");
											
				dbUser objdbUser=new dbUser();
				objdbUser.EditUser(id,email,bname,year,role,stat);
				status="success";
			}
			
			else if (req_type.equalsIgnoreCase("DeleteData")) // Request for Delete Data
			{
				int id = Integer.parseInt(request.getParameter("id"));
				dbUser objdbUser=new dbUser();
				objdbUser.DeleteUser(id);
				status="success";
			}
			else
			{
				status="fail";
			}
			
		} catch (Exception e) {
			status = "error";
			e.printStackTrace();
		}	
		try {
			resp.put("status", status);
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		out.println(resp);		
	}
}