using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;


namespace OnlineStore.Objects
{
    public class User
    {
        private int _id;
        private string _firstName;
        private string _lastName;
        private string _password;
        private string _username;
        private bool _adminPrivileges;

        public User (string firstName, string lastName, string username, string password, bool adminPrivileges, int id = 0)
        {
            _id = id;
            _firstName = firstName;
            _lastName = lastName;
            _password = password;
            _username = username;
            _adminPrivileges = adminPrivileges;
        }

        public int GetId()
        {
            return _id;
        }

        public string GetFirstName()
        {
            return _firstName;
        }

        public string GetLastName()
        {
            return _lastName;
        }

        public string GetUsername()
        {
            return _username;
        }

        public string GetPassword()
        {
            return _password;
        }

        public bool GetAdminPrivileges()
        {
            return _adminPrivileges;
        }

        public static List<User> GetAll()
        {
            SqlConnection conn = DB.Connection();
            conn.Open();

            SqlCommand cmd = new SqlCommand("SELECT * FROM users;", conn);
            SqlDataReader rdr = cmd.ExecuteReader();

            List<User> allUsers = new List<User>{};

            while(rdr.Read())
            {
                int id = rdr.GetInt32(0);
                string firstName = rdr.GetString(1);
                string lastName = rdr.GetString(2);
                string username = rdr.GetString(3);
                string password = rdr.GetString(4);
                bool adminPrivileges = rdr.GetBoolean(5);

                User newUser = new User(firstName, lastName, username, password, adminPrivileges, id);
                allUsers.Add(newUser);
            }

            DB.CloseSqlConnection(conn, rdr);
            return allUsers;
        }

        public override bool Equals(System.Object otherUser)
        {
            if(!(otherUser is User))
            {
                return false;
            }
            else
            {
                User newUser = (User) otherUser;
                bool idEquality = (this.GetId() == newUser.GetId());
                bool firstNameEquality = (this.GetFirstName() == newUser.GetFirstName());
                bool lastNameEquality = (this.GetLastName() == newUser.GetLastName());
                bool usernameEquality = (this.GetUsername() == newUser.GetUsername());
                bool passwordEquality = (this.GetPassword() == newUser.GetPassword());
                bool adminPrivilegesEquality = (this.GetAdminPrivileges() == newUser.GetAdminPrivileges());
                return (idEquality && firstNameEquality && lastNameEquality && usernameEquality && passwordEquality && adminPrivilegesEquality);
            }
        }

        //Saves instances to database
        public void Save()
        {
            SqlConnection conn = DB.Connection();
            conn.Open();

            SqlCommand cmd = new SqlCommand("INSERT INTO users (first_name, last_name, username, password, admin_privileges) OUTPUT INSERTED.id VALUES (@FirstName, @LastName, @Username, @Password, @AdminPrivileges);", conn);
            cmd.Parameters.Add(new SqlParameter("@FirstName", this.GetFirstName()));
            cmd.Parameters.Add(new SqlParameter("@LastName", this.GetLastName()));
            cmd.Parameters.Add(new SqlParameter("@Username", this.GetUsername()));
            cmd.Parameters.Add(new SqlParameter("@Password", this.GetPassword()));
            cmd.Parameters.Add(new SqlParameter("@AdminPrivileges", this.GetAdminPrivileges()));

            SqlDataReader rdr = cmd.ExecuteReader();

            while(rdr.Read())
            {
                this._id = rdr.GetInt32(0);
            }

            DB.CloseSqlConnection(conn, rdr);

        }
    }
}
