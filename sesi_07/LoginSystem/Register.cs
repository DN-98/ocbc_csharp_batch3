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

        private void btnExit_click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnRegister_click(object sender, EventArgs e)
        {
            
            if (textBoxPass.Text == textBoxRPass.Text)
            {
                db.Execute($"INSERT INTO user_info VALUES ('','{textBoxName.Text}', '{textBoxUsername.Text}', '{textBoxPass.Text}')");
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
