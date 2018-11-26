using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace EX28Database
{
    class Program
    {
       // private static string connectionString = "Server =[server_name];Database =[database_name];Trusted_Connection = True";
        static void Main(string[] args)
        {
            //Program prog = new EX28Database.Program();
            //prog.Run();
        }
        private static void CreateCommand(string queryString,
    string connectionString)
        {
            using (SqlConnection connection = new SqlConnection(
                       connectionString))
            {
                SqlCommand command = new SqlCommand(queryString, connection);
                command.Connection.Open();

                command.ExecuteNonQuery();
            }
        }
        private void Run()
        {
            /*using (SqlConnection con = new SqlConnection(connectionString)) {
                try
                {
                    con.Open();
                    SqlCommand cmd1 = new SqlCommand("InsertPet", con);
                    cmd1.CommandType = System.Data.CommandType.StoredProcedure;
                }
               
            }
                    
                }*/

    }
}
