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
        private static string connectionString =
            "Server=EALSQL1.eal.local; Database=C_DB11_2018; User Id=C_STUDENT11; Password=C_OPENDB11";
        //Ex31Klinik_db
        static void Main(string[] args)
        {
            Program prog = new EX28Database.Program();
            prog.Run();
        }

        private void Run()
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                try
                {
                    con.Open();

                    SqlCommand command1 = new SqlCommand("SELECT PetBreed FROM PET", con);

                    command1.ExecuteNonQuery();

                    SqlCommand command2 = new SqlCommand("spGetPets", con);
                    command2.CommandType = System.Data.CommandType.StoredProcedure;

                    SqlDataReader reader = command2.ExecuteReader();

                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            string breed = reader["PetBreed"].ToString();
                            Console.WriteLine(breed);
                        }
                    }
                }
                catch (SqlException e)
                {
                    Console.WriteLine("UPS " + e.Message);
                }
                Console.ReadKey();
            }
        }

    }
}
