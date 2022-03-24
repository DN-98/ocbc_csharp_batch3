using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace LoginSystem
{
    public partial class Login : Form
    {
        Config db = new Config();
        public Login()
        {
            InitializeComponent();
            db.Connect("userdata");
            
        }

        private void button3_Click(object sender, EventArgs e)
        {
            Register register = new Register();
            register.Show();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            db.ExecuteSelect("SELECT * FROM user_info WHERE username='" + textBox1.Text + "' AND password = '" + textBox2.Text + "'");
            if (db.Count() == 1)
            {
                MessageBox.Show("Success, You will login as " + db.Result(0, "name"));
            } else
            {
                MessageBox.Show("Wrong username and password combination");
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Environment.Exit(0);
        }
    }
}
