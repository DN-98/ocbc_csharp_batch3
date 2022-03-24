using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using System.Windows.Forms;
using System.Data;

namespace LoginSystem
{
    public class Config
    {
        string connectionString = "";
        public MySqlConnection connection = null;
        public string server = "127.0.0.1";
        public string user = "root";
        public string pass = "";
        public string port = "3306";
        DataSet ds;
        DataTable dt;
        public string table = "user_info";
        public string connectionType = "";
        string RecordSource = "";
        DataGridView tempdata;

        public Config(){

        }

        public void Connect(string dbName)
        {
            try
            {
                connectionString = "SERVER=" + server + ";" + "PORT=" + port + ";" + "DATABASE=" + dbName + ";" + "UID=" + user + ";" + "PWD=" + pass + ";";
                connection = new MySqlConnection(connectionString);
                connection.Open();
            }
            catch (Exception err)
            {
                MessageBox.Show("error:" + err);
            }
        }

        public void ExecuteSql(string sqlCommand)
        {
            nowquiee(sqlCommand);
        }

        public void nowquiee(string sqlCommand)
        {
            try
            {
                MySqlConnection cs = new MySqlConnection(connectionString);
                cs.Open();
                MySqlCommand myc = new MySqlCommand(sqlCommand);
                myc.ExecuteNonQuery();
                cs.Close();

            } catch (Exception err)
            {
                MessageBox.Show(err.Message);
            }
        }

        public void Execute(string sqlCommand)
        {
            RecordSource = sqlCommand;
            connectionType = table;
            dt = new DataTable(connectionType);
            try
            {
                string command = RecordSource.ToUpper();
                MySqlDataAdapter da2 = new MySqlDataAdapter(RecordSource, connection);

                //DataSet tempds = new DataSet();
                //da2.Fill(tempds, connectionType);
                da2.Fill(dt);
            }
            catch (Exception err)
            {
                MessageBox.Show(err.Message);
            }
        }

        public string Result(int row, string colmunName)
        {
            try
            {
                return dt.Rows[row][colmunName].ToString();
            }
            catch (Exception err)
            {
                MessageBox.Show(err.Message);
                return dt.Rows[row][colmunName].ToString();
            }
        }

        public void ExecuteSelect(string sqlCommand)
        {
            RecordSource = sqlCommand;
            connectionType = table;
            dt = new DataTable(connectionType);
            try
            {
                string command = RecordSource.ToUpper();
                MySqlDataAdapter da = new MySqlDataAdapter(RecordSource, connection);
                ds = new DataSet();
                //da.Fill(ds, connectionType);
                da.Fill(dt);
                tempdata = new DataGridView();
            }
            catch (Exception err)
            {
                MessageBox.Show(err + "ini error");
            }
        }
        
        public int Count()
        {
            return dt.Rows.Count;
        }
    }
}
