using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RestSharp;
using Newtonsoft.Json.Linq;

namespace TwitterPredictiveCalculatorWebsite
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPredict_Click(object sender, EventArgs e)
        {
            var client = new RestClient("https://ussouthcentral.services.azureml.net/workspaces/20e4ff52428849ceae33536be594cced/services/4c2e557814414ff9892d740687971907/execute?api-version=2.0&details=true");
            var request = new RestRequest(Method.POST);
            request.AddHeader("Postman-Token", "ee814e8b-0355-4fd2-92a6-0771f73f7b0f");
            request.AddHeader("cache-control", "no-cache");
            request.AddHeader("Content-Type", "application/json");
            request.AddHeader("Authorization", "Bearer bLhIMnoPynMhKIi0AugsMtKy2vLaxF8TZXLmmIXVpi8DPGwqIy8kAe32ok91WyK+hdFCyLMOQQ+0ZIpftl0bUQ==");
            request.AddParameter("undefined", "{\n  \"Inputs\": {\n    \"input1\": {\n      \"ColumnNames\": [\n        \"Gender\",\n        \"IsReshare\",\n        \"RetweetCount\",\n        \"Klout\",\n        \"Sentiment\"\n      ],\n      \"Values\": [\n        [\n          \"" + rblGender.Text + "\",\n          \"" + rblReshare.SelectedValue + "\",\n          \"0\",\n          \"" + txtKlout.Text + "\",\n          \"" + txtSentiment.Text + "\"\n        ]\n      ]\n    }\n  },\n  \"GlobalParameters\": {}\n}", ParameterType.RequestBody);
            IRestResponse response = client.Execute(request);

            var results = JObject.Parse(response.Content);
            string prediction = results["Results"]["output1"]["value"]["Values"][0][0].ToString();

            lblResults.Text = "We predict this tweet will get " + Math.Round(Convert.ToDecimal(prediction), 0).ToString() + " retweets.";
        }
    }
}