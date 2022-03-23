using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Mysql.Data.MysqlClient;
using System.Windows.Form;

using System.Data;

namespace LoginSystem
{
    public class Config{
        string connectionString = "";
        public MysqlConnection connection = null;
        public string server = "127.0.0.1";
        public string user = "root";
        public string pass = "";
        DataSet ds;
        DataTable dt;
        public string dbName = "LoginSystem";
        public string table = "user_info";
        public string connectionType = "";
        string RecordSource = "";
        DataGridView tempdata;

        // public Config(){

        // }

        public void Connect(string dbName){
            try{
                connectionString = "SERVER=" + server + ";" 
                + "DATABASE=" + dbName + ";" 
                + "UID=" + user + "" + "PASSWORD=" + pass + ";";
                connection = new MysqlConnection(connectionString);
            } catch (Exception err) {
                MessageBox.Show(err.Message);
            }
        }

        public void Execute(string sqlCommand){
            RecordSource = sqlCommand;
            connectionType = table;
            dt = new DataTable(connectionType);
            try{
                string command = RecordSource.ToUpper();
                MysqlDataAdapter da2 = new MysqlDataAdapter(RecordSource, connection);

                DataSet tempds = new DataSet();
                da2.Fill(tempds, connectionType);
                da2.Fill(tempds);
            } catch(Exception err) {
                MessageBox.Show(err.Message);
            }
        }

        public void Results(int row, string colmunName){
            try
            {
                return dt.Rows[row][colmunName].ToString();
            }
            catch (Exception err)
            {
                MessageBox.Show(err.Message);
            }
        }

        public void ExecuteSelect(string sqlCommand){
            RecordSource = sqlCommand;
            connectionType = table;
            dt = new DataTable(connectionType);
            try
            {
                string command = RecordSource.ToUpper();
                MysqlDataAdapter da = new MysqlDataAdapter(RecordSource, connection);
                ds = new DataSet();
                da.Fill(da, connectionType);
                da.Fill(dt);
                tempdata = new DataGridView();
            }
            catch (Exception err)
            {
                MessageBox.Show(err.Message);
            }
        }

        public int Count(){
            return dt.Rows.Count;
        }
    }
}
