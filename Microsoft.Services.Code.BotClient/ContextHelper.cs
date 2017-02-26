using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FAQ.BOT.Client
{
    using System.IO;

    public static class ContextHelper
    {
        public static string LogFilePath { get; set; } = Environment.ExpandEnvironmentVariables("%TEMP%\\ASPNETCoreFAQBot.log");

        public static string BotUrl { get; set; } = "https://webchat.botframework.com/embed/aspnetfaqbot?s=SKxX4SG_c24.cwA.FMc.hz1uk_9OqKHhCa4b5-dbc9kr2ly5p-nQKAxAireWXBI";

        public static string OptionsPath { get; set; } = Environment.ExpandEnvironmentVariables("%TEMP%\\ASPNETCoreFAQBotOptions.json");

        public static void LogMessage(string message)
        {
            string formattedMessage = $"{DateTime.Now.ToLongDateString()}:{DateTime.Now.ToLongTimeString()} - {message}";
            using (var writer = new StreamWriter(LogFilePath, true))
            {
                writer.WriteLine(formattedMessage);
            }
        }
    }
}
