namespace FAQ.BOT
{
    using System;
    using System.Configuration;
    using System.Diagnostics;
    using System.Net;

    using Newtonsoft.Json;

    public class FaqServiceClient
    {
        private readonly string knowledgeBaseId;

        private readonly string subscriptionId;

        private readonly string serviceBaseUrl;

        public FaqServiceClient()
        {
            this.knowledgeBaseId = ConfigurationManager.AppSettings["KnowledgeBaseId"];
            this.subscriptionId = ConfigurationManager.AppSettings["SubscriptionKey"];
            this.serviceBaseUrl = ConfigurationManager.AppSettings["FAQServiceBaseUrl"];
        }
        
        /// <summary>
        /// Fetches the data.
        /// </summary>
        /// <param name="input">The input.</param>
        /// <returns>The response.</returns>
        public string FetchData(string input)
        {
            FaqResponse response = null;

            try
            {
                string postBody = $"{{\"question\": \"{input}\"}}";
                string output;

                System.Uri uri = new Uri(this.serviceBaseUrl);
                System.UriBuilder queryAddress = new UriBuilder($"{uri}/knowledgebases/{this.knowledgeBaseId}/generateAnswer");

                //Send the POST request
                using (WebClient client = new WebClient())
                {
                    //Set the encoding to UTF8
                    client.Encoding = System.Text.Encoding.UTF8;

                    //Add the subscription key header
                    client.Headers.Add("Ocp-Apim-Subscription-Key", this.subscriptionId);
                    client.Headers.Add("Content-Type", "application/json");
                    output = client.UploadString(queryAddress.Uri, postBody);
                }

                response = JsonConvert.DeserializeObject<FaqResponse>(output);
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex.Message);
            }

            return response?.Answer;
        }
    }
}