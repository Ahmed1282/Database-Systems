using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace WindowsFormsApp1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=LAP-MY\\SQLEXPRESS;Initial Catalog=Facebook;Integrated Security=True"); //Connection String
            conn.Open();
            string Username = textBox1.Text;
            string Password = textBox2.Text;
            // Create a new SqlCommand object
            SqlCommand cmd = new SqlCommand("SELECT * FROM SignUp WHERE Username=@Username AND Password=@Password", conn);

            // Add parameters to the command
            cmd.Parameters.AddWithValue("@Username", Username);
            cmd.Parameters.AddWithValue("@Password", Password);

            // Execute the command and retrieve the result
            SqlDataReader reader = cmd.ExecuteReader();

            // Check if any matching record was found
            if (reader.HasRows)
            {
                MessageBox.Show("Logged In");
                // Login successful
            }
            else
            {
                MessageBox.Show("Invalid User");
                // Login failed
            }

            // Close the reader and connection
            reader.Close();
            conn.Close();

        }
    }
}
