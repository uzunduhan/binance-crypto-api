using Npgsql;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace SadeApiProject.Services.Concrete
{

    public class PostgreCon
    {
        List<decimal> coinValueList = new List<decimal>();

        NpgsqlConnection connection = new NpgsqlConnection("server=localhost; port=5432;" +
            "Database=sade; user ID=postgres; password=123456");

        public async Task InsertData(string val, string where)
        {
            //string query = "";

            connection.Open();

            var query = @"insert into public." + where + "(value)values(@val)";


            NpgsqlCommand cmd = new NpgsqlCommand(query, connection);
            cmd.Parameters.AddWithValue("@val", val);
            await cmd.ExecuteNonQueryAsync();
            connection.Close();
        }


        public async Task<List<decimal>> GetData(string type)
        {
            coinValueList.Clear();

            connection.Open();

            var query = @"select * from public." + @type + " order by id desc limit 12";



            var cmd = new NpgsqlCommand(query, connection);

            NpgsqlDataReader rdr = await cmd.ExecuteReaderAsync();


            while (rdr.Read())
            {
                coinValueList.Add(Convert.ToDecimal(rdr.GetString(1)));
            }

            connection.Close();

            return coinValueList;

        }
    }
}
