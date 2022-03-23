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
    public Config db = new Config();
    public class Form1{
        InitializeComponent();
        db.Connect("userdata");
    }

    Register register = new Register();
}
