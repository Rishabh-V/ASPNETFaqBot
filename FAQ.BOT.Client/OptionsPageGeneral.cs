// --------------------------------------------------------------------------------------------------------------------
// <copyright file="ConfigOptionsPageGeneral.cs" company="Microsoft">
//   Copyright © 2015 Microsoft.
// </copyright>
// // <summary>
//   The ConfigOptionsPageGeneral.cs
// </summary>
// --------------------------------------------------------------------------------------------------------------------

namespace FAQ.BOT.Client
{
    #region

    using System;
    using System.ComponentModel;
    using System.IO;
    using System.Runtime.InteropServices;

    using Microsoft.VisualStudio.Shell;

    using Newtonsoft.Json;

    using PubSub;

    #endregion

    /// <summary>
    /// Extends the standard dialog functionality for implementing ToolsOptions pages, 
    /// with support for the Visual Studio automation model, Windows Forms, and state 
    /// persistence through the Visual Studio settings mechanism.
    /// </summary>
    [Guid("FB6E170C-E5D0-4410-B740-37BB7AE3509F")]
    public class OptionsPageGeneral : DialogPage
    {
        #region Constructors

        /// <summary>
        /// Initializes a new instance of the <see cref="OptionsPageGeneral"/> class.
        /// </summary>
        public OptionsPageGeneral()
        {
            this.LoadDefaults();
        }

        #endregion

        #region Properties

        /// <summary>
        /// Gets or sets the log file path.
        /// </summary>
        /// <value>
        /// The log file path.
        /// </value>
        [Category("Output")]
        [DisplayName("Log File Path")]
        [Description("The valid path where log file would be created.")]
        public string LogFilePath { get; set; }

        /// <summary>
        /// The default resource files relative paths.
        /// </summary>
        [Category("Input")]
        [Description("The valid url of FAQ BOT")]
        [DisplayName(@"BOT URL")]
        public string BotUrl { get; set; }

        #endregion Properties

        /// <summary>
        /// Loads the defaults or saved values.
        /// </summary>
        public void LoadDefaults()
        {
            this.LogFilePath = ContextHelper.LogFilePath;
            this.BotUrl = ContextHelper.BotUrl;
        }

        #region Event Handlers

        /// <summary>
        /// Handles "activate" messages from the Visual Studio environment.
        /// </summary>
        /// <param name="e">
        /// The e.
        /// </param>
        /// <devdoc>
        /// This method is called when Visual Studio wants to activate this page.  
        /// </devdoc>
        /// <remarks>
        /// If this handler sets e.Cancel to true, the activation will not occur.
        /// </remarks>
        protected override void OnActivate(CancelEventArgs e)
        {
            base.OnActivate(e);
            if (!string.IsNullOrWhiteSpace(ContextHelper.OptionsPath) && File.Exists(ContextHelper.OptionsPath))
            {
                string text = File.ReadAllText(ContextHelper.OptionsPath);
                OptionsData json = JsonConvert.DeserializeObject<OptionsData>(text);
                if (!string.IsNullOrWhiteSpace(json?.BotUrl))
                {
                    this.BotUrl = ContextHelper.BotUrl = json?.BotUrl;
                }

                if (!string.IsNullOrWhiteSpace(json?.LogFilePath))
                {
                    this.LogFilePath = ContextHelper.LogFilePath = json?.LogFilePath;
                }
            }
        }

        /// <summary>
        /// Handles "close" messages from the Visual Studio environment.
        /// </summary>
        /// <param name="e">
        /// The e.
        /// </param>
        /// <devdoc>
        /// This event is raised when the page is closed.
        /// </devdoc>
        protected override void OnClosed(EventArgs e)
        {
        }

        /// <summary>
        /// Handles "deactivate" messages from the Visual Studio environment.
        /// </summary>
        /// <param name="e">
        /// The e.
        /// </param>
        /// <devdoc>
        /// This method is called when VS wants to deactivate this
        /// page.  If this handler sets e.Cancel, the deactivation will not occur.
        /// </devdoc>
        /// <remarks>
        /// A "deactivate" message is sent when focus changes to a different page in
        /// the dialog.
        /// </remarks>
        protected override void OnDeactivate(CancelEventArgs e)
        {
        }

        /// <summary>
        /// Handles "apply" messages from the Visual Studio environment.
        /// </summary>
        /// <param name="e">
        /// The e.
        /// </param>
        /// <devdoc>
        /// This method is called when VS wants to save the user's 
        /// changes (for example, when the user clicks OK in the dialog).
        /// </devdoc>
        protected override void OnApply(PageApplyEventArgs e)
        {
            base.OnApply(e);

            if (!string.IsNullOrWhiteSpace(this.BotUrl))
            {
                ContextHelper.BotUrl = this.BotUrl;
            }

            if (!string.IsNullOrWhiteSpace(this.LogFilePath))
            {
                ContextHelper.LogFilePath = this.LogFilePath;
            }

            //// Persist Data
            OptionsData options = new OptionsData()
            {
                LogFilePath = this.LogFilePath,
                BotUrl = this.BotUrl
            };

            string data = JsonConvert.SerializeObject(options, Formatting.Indented);

            //// Always overwrite the data so as to have only one option
            using (var writer = new StreamWriter(ContextHelper.OptionsPath, false))
            {
                writer.Write(data);
            }

            this.Publish<OptionsData>(options);
        }

        #endregion Event Handlers
    }
}