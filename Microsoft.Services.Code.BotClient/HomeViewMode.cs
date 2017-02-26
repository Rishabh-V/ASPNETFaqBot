
namespace FAQ.BOT.Client
{
    using Microsoft.Win32;
    using System;
    using System.Collections.Generic;
    using System.IO;
    using System.Linq;
    using System.Text;
    using System.Threading.Tasks;

    using Newtonsoft.Json;

    using PubSub;

    public class HomeViewMode : ViewModelBase
    {
        private string userName;

        private string botUrl;

        public HomeViewMode()
        {
            this.UserName = GetUser();
            this.BotUrl = this.GetUrl();
            this.Subscribe<OptionsData>(
                options =>
                    {
                        this.BotUrl = options.BotUrl;
                    });
        }

        private string GetUrl()
        {
            string url = string.Empty;
            if (!string.IsNullOrWhiteSpace(ContextHelper.OptionsPath) && File.Exists(ContextHelper.OptionsPath))
            {
                string text = File.ReadAllText(ContextHelper.OptionsPath);
                OptionsData data = JsonConvert.DeserializeObject<OptionsData>(text);
                url = data.BotUrl;
            }

            return string.IsNullOrWhiteSpace(url) ? ContextHelper.BotUrl : url;
        }

        public string BotUrl
        {
            get
            {
                return this.botUrl;
            }

            set
            {
                this.SetField(ref this.botUrl, value);
            }
        }

        public string UserName
        {
            get
            {
                return this.userName;
            }

            set
            {
                this.SetField(ref this.userName, string.IsNullOrWhiteSpace(value) ? GetUser() ?? "Guest" : value);
            }
        }

        public string WelcomeText => $"Welcome {this.UserName}";

        private static string GetUser()
        {
            const string SubKey = "Software\\Microsoft\\VSCommon\\ConnectedUser\\IdeUser\\Cache";
            //const string EmailAddressKeyName = "EmailAddress";
            const string UserNameKeyName = "DisplayName";
            RegistryKey root = Registry.CurrentUser;
            RegistryKey subKey = root.OpenSubKey(SubKey);
            //return (string)subKey?.GetValue(EmailAddressKeyName);
            return (string)subKey?.GetValue(UserNameKeyName);
        }
    }
}
