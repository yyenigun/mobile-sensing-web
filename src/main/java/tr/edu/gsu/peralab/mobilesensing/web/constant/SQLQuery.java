/**This file is part of MobileSensingWeb project of Galatasaray University.

   MobileSensingWeb is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   MobileSensingWeb is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with MobileSensingWeb.  If not, see <http://www.gnu.org/licenses/>.
 */

package tr.edu.gsu.peralab.mobilesensing.web.constant;

/**
 * @author yalcin.yenigun
 * 
 *         This file contains SQL queries
 *
 */
public enum SQLQuery {

	GET_USER_BY_USERNAME(
			"SELECT t.useruuid, t.username, t.userlastname, t.password, t.age, t.weight, t.height, t.sex, t.rights, t.coninterval,"
					+ "t.popupinterval, t.isonline, t.isforcestart FROM user t WHERE t.username=?"),

	GET_USER_COUNT("SELECT COUNT(*) FROM user"),

	GET_ONLINE_USER_COUNT(
			"SELECT COUNT(*) FROM user WHERE isOnline=1"),

	GET_ALL_USERS("SELECT * FROM user");

	private String value;

	SQLQuery(String value) {
		this.value = value;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

}
