using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Diagnostics;
using ASPSnippets.GoogleAPI;
using System.Web.Script.Serialization;



public partial class Signin_Signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        supform.Visible = false;

        GoogleConnect.ClientId = "897121279288-h25qkjqv9se3jub9lhq0o4gt6ha8fvve.apps.googleusercontent.com";
        GoogleConnect.ClientSecret = "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";
        GoogleConnect.RedirectUri = Request.Url.AbsoluteUri.Split('?')[0];

        if (!string.IsNullOrEmpty(Request.QueryString["code"]))
        {
            string code = Request.QueryString["code"];
            string json = GoogleConnect.Fetch("me", code);
            GoogleProfile profile = new JavaScriptSerializer().Deserialize<GoogleProfile>(json);
            Session["id"] = profile.Id;
            Session["urname"] = profile.DisplayName;
            Session["mail"] = profile.Emails.Find(email => email.Type == "account").Value;


            Session["image"] = profile.Image.Url;
        }
        if (Request.QueryString["error"] == "access_denied")
        {
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "alert('Access denied.')", true);
        }

    }

    protected void Signup_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        try {
            con.Open();
            string command = "INSERT INTO users (urname,email,passwd) VALUES (@urname,@email,@passwd);";
            SqlCommand cmd = new SqlCommand(command, con);

            cmd.Parameters.AddWithValue("@urname", supname.Text);
            cmd.Parameters.AddWithValue("@email", supemail.Text);
            cmd.Parameters.AddWithValue("@passwd", suppass.Text);

            cmd.ExecuteNonQuery();

            Label1.Visible = true;

        } catch (Exception) {
            Label1.Text = "Something Goes Wrong...!";
            throw;
        }
        finally
        {
            con.Close();
        }
      
       
        
       

    }

    protected void Signin_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        try
        {
            con.Open();
            string command = "SELECT * FROM users WHERE email = '"+sinemail.Text+"' and passwd = '"+sinpass.Text+"'";
            SqlCommand cmd = new SqlCommand(command, con);

            SqlDataReader sdr = cmd.ExecuteReader();

            
            if (sdr.Read())
            {
                Session["id"] = sdr.GetValue(0).ToString();
                Session["urname"] = sdr.GetValue(1).ToString();
                Session["mail"] = sdr.GetValue(2).ToString(); 
                Response.Redirect("index.aspx");

            }
            else
            {
                Response.Write("data not match");
            }


        }
        catch (Exception er)
        {
            Console.WriteLine(er);
            throw;
        }
        finally
        {

        }
    }

    protected void signGoogle_Click(object sender, EventArgs e)
    {

        GoogleConnect.Authorize("profile", "email");
    }

    public class GoogleProfile
    {
        public string Id { get; set; }
        public string DisplayName { get; set; }
        public Image Image { get; set; }
        public List<Email> Emails { get; set; }
        public string Gender { get; set; }
        public string ObjectType { get; set; }
    }

    public class Email
    {
        public string Value { get; set; }
        public string Type { get; set; }
    }

    public class Image
    {
        public string Url { get; set; }
    }
}