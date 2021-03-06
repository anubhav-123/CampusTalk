package org.campustalk.sql;

import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;

import org.campustalk.entity.CampusTalkRoles;
import org.json.JSONArray;
import org.json.JSONObject;

public class dbRoles extends DatabaseManager
{

	public dbRoles()
	{
		super();
	}

	// public CampusTalkGroup objGroup;
	/**
	 * Admin Module
	 */
	/**
	 * 
	 * @param rolesname
	 * @return
	 * @throws SQLException
	 * @throws ClassNotFoundException
	 */

	public boolean AddRoles(String rolesname)
	{
		boolean rtnTemp = false;
		try
		{
			this.open();
			CallableStatement csSql = CON
					.prepareCall("{call insertRoles(?,?)}");

			/**
			 * CREATE PROCEDURE `campustalk`.`insertRoles`( IN name VARCHAR(20),
			 * IN duration TEXT, IN status CHAR(2))
			 */
			csSql.setString(1, rolesname);
			csSql.registerOutParameter(2, Types.BOOLEAN);

			csSql.executeUpdate();

			rtnTemp = csSql.getBoolean(2);
			csSql.close();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return rtnTemp;
	}

	public Boolean EditRoles(int rolesid, String rolesname)
			throws SQLException, ClassNotFoundException
	{

		this.open();
		CallableStatement csSql = CON
				.prepareCall("{call updateRoleByID(?,?,?)}");

		csSql.setInt(1, rolesid);
		csSql.setString(2, rolesname);
		csSql.registerOutParameter(3, Types.BOOLEAN);
		csSql.executeUpdate();
		boolean rtnTemp = csSql.getBoolean(3);
		csSql.close();
		return rtnTemp;
	}

	public void DeleteRoles(int rolesid) throws SQLException,
			ClassNotFoundException
	{

		this.open();
		CallableStatement csSql = CON.prepareCall("{call deleteRoles(?)}");
		csSql.setInt(1, rolesid);

		csSql.executeQuery();
	}

	public JSONArray getRolesData()
	{
		JSONArray roles_arr = new JSONArray();
		try
		{
			this.open();

			CallableStatement csSql = CON.prepareCall("{call getRolesData()}");
			ResultSet rs = csSql.executeQuery();

			JSONObject temp;

			while (rs.next())
			{
				temp = new JSONObject();

				temp.put("rolesid", rs.getInt("roleid"));
				temp.put("name", rs.getString("name"));

				roles_arr.put(temp);
			}

		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return roles_arr;
	}

	public CampusTalkRoles objrole[] = new CampusTalkRoles[10];

	public CampusTalkRoles[] getRoleData()
	{
		ArrayList<CampusTalkRoles> role = new ArrayList<>();
		try
		{
			this.open();
			CallableStatement csSql = CON.prepareCall("{call getAllRole()}");
			ResultSet rs = csSql.executeQuery();

			CampusTalkRoles temp_role;

			while (rs.next())
			{
				temp_role = new CampusTalkRoles();
				// temp_role.setroleId(rs.getInt("roleid"));
				temp_role.setRoleid(rs.getInt("roleid"));
				temp_role.setName(rs.getString("name"));

				role.add(temp_role);
			}

		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return role.toArray(new CampusTalkRoles[role.size()]);
	}

	/**
	 * End Admin Module
	 */

	/**
	 * Author : Faishal
	 * 
	 * @param objRole
	 * @return
	 */
	public CampusTalkRoles getRoleById(CampusTalkRoles objRole)
	{

		try
		{
			this.open();
			CallableStatement pst = CON.prepareCall("{ call getRoleById(?)}");
			pst.setInt(1, objRole.getRoleid());
			ResultSet rs = pst.executeQuery();
			if (rs.next())
			{
				objRole.setRoleid(rs.getInt("roleid"));
				objRole.setName(rs.getString("name"));
			}

		}
		catch (ClassNotFoundException | SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return objRole;

	}

}