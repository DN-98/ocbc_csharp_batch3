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
    public partial class Register : Form
    {   
        Config db = new Config();
        public Register()
        {
            InitializeComponent();
            db.Connect("userdata");

        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            
            if (textBox3.Text == textBox4.Text)
            {
                db.Execute($"INSERT INTO user_info VALUES ('','{textBox1.Text}', '{textBox2.Text}', '{textBox3.Text}')");
                MessageBox.Show("Akun telah dibuat. Silahkan Login .. ");
                this.Close();
            }
            else
            {
                MessageBox.Show("Pasword Tidak Sama Harap Cek Password Anda");
            }
        }
    }
}
