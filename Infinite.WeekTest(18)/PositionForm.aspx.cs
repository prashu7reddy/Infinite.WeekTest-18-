using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Infinite.WeekTest_18_
{
    public partial class PositionForm : System.Web.UI.Page
    {
        private SqlConnection conObj = null;
        private SqlCommand cmdObj = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAddNew_Click(object sender, EventArgs e)
        {
            using (conObj = new SqlConnection(ConfigurationManager.ConnectionStrings["HRCon"].ConnectionString))
            {
                using (cmdObj = new SqlCommand("usp_PositionDetails", conObj))
                {
                   
                    cmdObj.CommandType = CommandType.StoredProcedure;
                    cmdObj.Parameters.AddWithValue("@positionCode", TxtPositionCode.Text);
                    cmdObj.Parameters.AddWithValue("@Description", TxtDescription.Text);
                    cmdObj.Parameters.AddWithValue("@BudgetedStrength", TxtBudgetedStrength.Text); 
                    cmdObj.Parameters.AddWithValue("@year", DropDownList1.Text); 
                    cmdObj.Parameters.AddWithValue("@CurrentStrength", TxtCurrentStrength.Text);
                    if (conObj.State == ConnectionState.Closed)
                    {
                        conObj.Open();
                    }
                }
            }


        }
        public void ResetControls()
        {
            TxtPositionCode.Text = "";
            TxtDescription.Text = "";
            TxtBudgetedStrength.Text = " ";
            DropDownList1.Text = "";
            TxtCurrentStrength.Text = "";
        }

        protected void BtnReset_Click(object sender, EventArgs e)
        {
            ResetControls();
        }
    }
}