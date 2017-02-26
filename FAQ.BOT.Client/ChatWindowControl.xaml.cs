//------------------------------------------------------------------------------
// <copyright file="ChatWindowControl.xaml.cs" company="Company">
//     Copyright (c) Company.  All rights reserved.
// </copyright>
//------------------------------------------------------------------------------

namespace FAQ.BOT.Client
{
    using System;
    using System.Diagnostics.CodeAnalysis;
    using System.Runtime.CompilerServices;
    using System.Windows;
    using System.Windows.Controls;

    using CefSharp.Wpf;

    using Microsoft.Win32;

    using PubSub;

    /// <summary>
    /// Interaction logic for ChatWindowControl.
    /// </summary>
    public partial class ChatWindowControl : UserControl
    {
        public HomeViewMode ViewModel { get; set; }

        /// <summary>
        /// Initializes a new instance of the <see cref="ChatWindowControl"/> class.
        /// </summary>
        public ChatWindowControl()
        {
            this.ViewModel = new HomeViewMode();
            this.InitializeComponent();
            this.DataContext = this.ViewModel;
        }

        private void Reload_Click(object sender, RoutedEventArgs e)
        {
            this.Log("entry");
            this.ReloadBrowser();
            this.Log("exit");
        }

        private void MyToolWindow_SizeChanged(object sender, SizeChangedEventArgs e)
        {
            this.Log("entry");
            this.ReloadBrowser();
            this.Log("exit");
        }

        private void ReloadBrowser()
        {
            this.Log("entry");
            if (this.Browser != null && !this.Browser.IsDisposed)
            {
                this.Log("exit inside if");
                return;
            }

            this.Browser = new ChromiumWebBrowser();
            this.Log("exit");
        }

        private void Log(string message, [CallerMemberName] string caller = null)
        {
            ContextHelper.LogMessage($"{caller}-{message}");
        }
    }
}