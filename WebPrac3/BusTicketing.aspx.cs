using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebPrac3
{
    public partial class BusTicketing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack == false)
            {
                lblTime.Text = "You are accessing this page on " + DateTime.Now.ToString();
            }
            txtDepartDt.Text = DateTime.Now.ToShortDateString();
        }

        protected void calDepartDt_SelectionChanged(object sender, EventArgs e)
        {
            txtDepartDt.Text = calDepartDt.SelectedDate.ToShortDateString();
        }

        protected void ddlTo_SelectedIndexChanged(object sender, EventArgs e)
        {

            if(ddlFrom.SelectedValue.Equals("Hentian Duta") && ddlTo.SelectedValue.Equals("Seremban"))
            {
                txtPrice.Text = "";
                lblError.Text = "Sorry. We do not provide trip from Hentian Duta to Seremban";
                btnBookTkt.Enabled=false;


            }else if(ddlFrom.SelectedValue.Equals("Hentian Putra") && ddlTo.SelectedValue.Equals("Butterworth"))
            {
                txtPrice.Text = "";
                lblError.Text = "Sorry. We do not provide trip from Hentian Putra to Butterworth";
                btnBookTkt.Enabled = false;
            }
            else
            {
                lblError.Text = " ";
                btnBookTkt.Enabled = true;
                double adultRate = 0, childRate = 0, totalPrice = 0;
                if(ddlFrom.SelectedValue.Equals("Hentian Duta"))
                {
                    adultRate = 34.0 * int.Parse(txtAdult.Text);
                    childRate = 25.5 * int.Parse(txtChild.Text);
                    totalPrice = adultRate + childRate;
                    txtPrice.Text = "RM " + totalPrice.ToString("0.00");
                }
                else
                {
                    adultRate = 6.0 * int.Parse(txtAdult.Text);
                    childRate = 4.3 * int.Parse(txtChild.Text);
                    totalPrice = adultRate + childRate;
                    txtPrice.Text = "RM " + totalPrice;
                }
            }

            

        }

        protected void ddlFrom_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtPrice.Text = "";

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {

        }
    }
}