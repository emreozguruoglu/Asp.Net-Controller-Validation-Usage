using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebControllers
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string Fname =txtName.Text;
            string Surname = txtSurname.Text;
            string city = DropDownList1.SelectedValue; //SelectedIndex.Value veya SelectedItem.Value'da aynı şey
            lblOutputLabel.Text = Fname + " " + Surname + " " + city;
        }
    }
}