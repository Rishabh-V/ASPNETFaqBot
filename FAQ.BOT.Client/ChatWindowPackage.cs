//------------------------------------------------------------------------------
// <copyright file="ChatWindowPackage.cs" company="Company">
//     Copyright (c) Company.  All rights reserved.
// </copyright>
//------------------------------------------------------------------------------

using System;
using System.ComponentModel.Design;
using System.Diagnostics;
using System.Diagnostics.CodeAnalysis;
using System.Globalization;
using System.Runtime.InteropServices;
using Microsoft.VisualStudio;
using Microsoft.VisualStudio.OLE.Interop;
using Microsoft.VisualStudio.Shell;
using Microsoft.VisualStudio.Shell.Interop;
using Microsoft.Win32;

namespace FAQ.BOT.Client
{
    using System.IO;
    using System.Reflection;

    using CefSharp;

    /// <summary>
    /// This is the class that implements the package exposed by this assembly.
    /// </summary>
    /// <remarks>
    /// <para>
    /// The minimum requirement for a class to be considered a valid package for Visual Studio
    /// is to implement the IVsPackage interface and register itself with the shell.
    /// This package uses the helper classes defined inside the Managed Package Framework (MPF)
    /// to do it: it derives from the Package class that provides the implementation of the
    /// IVsPackage interface and uses the registration attributes defined in the framework to
    /// register itself and its components with the shell. These attributes tell the pkgdef creation
    /// utility what data to put into .pkgdef file.
    /// </para>
    /// <para>
    /// To get loaded into VS, the package must be referred by &lt;Asset Type="Microsoft.VisualStudio.VsPackage" ...&gt; in .vsixmanifest file.
    /// </para>
    /// </remarks>
    [PackageRegistration(UseManagedResourcesOnly = true)]
    [InstalledProductRegistration("#110", "#112", "1.0", IconResourceID = 400)] // Info on this package for Help/About
    [ProvideMenuResource("Menus.ctmenu", 1)]
    [ProvideToolWindow(typeof(ChatWindow))]
    [ProvideOptionPageAttribute(typeof(OptionsPageGeneral), "FAQ BOT Options", "General", 100, 101, true, new string[] { "Options for FAQ BOT" })]
    [ProvideProfileAttribute(typeof(OptionsPageGeneral), "FAQ BOT Options", "General Options", 100, 101, true, DescriptionResourceID = 100)]
    [Guid(ChatWindowPackage.PackageGuidString)]
    [SuppressMessage("StyleCop.CSharp.DocumentationRules", "SA1650:ElementDocumentationMustBeSpelledCorrectly", Justification = "pkgdef, VS and vsixmanifest are valid VS terms")]
    public sealed class ChatWindowPackage : Package
    {
        /// <summary>
        /// ChatWindowPackage GUID string.
        /// </summary>
        public const string PackageGuidString = "b93a50fc-8666-4ac5-98ce-676f958f2b73";

        /// <summary>
        /// Initializes a new instance of the <see cref="ChatWindow"/> class.
        /// </summary>
        public ChatWindowPackage()
        {
            // Inside this method you can place any initialization code that does not require
            // any Visual Studio service because at this point the package object is created but
            // not sited yet inside Visual Studio environment. The place to do all the other
            // initialization is the Initialize method.
        }
        
        #region Package Members

        /// <summary>
        /// Initialization of the package; this method is called right after the package is sited, so this is the place
        /// where you can put all the initialization code that rely on services provided by VisualStudio.
        /// </summary>
        protected override void Initialize()
        {
            
            ChatWindowCommand.Initialize(this);
            this.EnsureFileExists();
            this.LoadSettings();
            base.Initialize();
        }

        private void LoadSettings()
        {
            string path = Assembly.GetExecutingAssembly().Location;
            string targetDirectory = Path.GetDirectoryName(path);

            string exePath = Path.Combine(targetDirectory, "CefSharp.BrowserSubprocess.exe");
            CefSettings settings = new CefSettings();
            settings.EnableInternalPdfViewerOffScreen();
            settings.BrowserSubprocessPath = exePath;
            
            OperatingSystem osVersion = Environment.OSVersion;
            // Disable GPU for Windows 7, in case someone is still using Windows 7
            if (osVersion.Version.Major == 6 && osVersion.Version.Minor == 1)
            {
                // Disable GPU in WPF and Offscreen examples until #1634 has been resolved
                settings.CefCommandLineArgs.Add("disable-gpu", "1");
            }

            Cef.Initialize(settings, shutdownOnProcessExit: false, performDependencyCheck: true);
        }

        private void EnsureFileExists()
        {
            string path = Assembly.GetExecutingAssembly().Location;
            //// HACK : There are a lot of dependencies to load the chromium browser and unfortunately it works against x86 or x64
            //// Copy paste the content of references folder in the root directory if they don't exist.
            //// Below code would be executed only in the very first run.

            string targetDirectory = Path.GetDirectoryName(path);
            string sourceDirectory = Path.Combine(targetDirectory, "References");

            //// Copy files and folders from source to target if they don't exist.
            foreach (string dirPath in Directory.GetDirectories(sourceDirectory, "*", SearchOption.AllDirectories))
            {
                string destinationDirectory = dirPath.Replace(sourceDirectory, targetDirectory);

                if (!Directory.Exists(destinationDirectory))
                {
                    Directory.CreateDirectory(destinationDirectory);
                }
            }

            foreach (string newPath in Directory.GetFiles(sourceDirectory, "*.*", SearchOption.AllDirectories))
            {
                string destinationFile = newPath.Replace(sourceDirectory, targetDirectory);
                if (!File.Exists(destinationFile))
                {
                    File.Copy(newPath, destinationFile, true);
                }
            }
        }

        #endregion
    }
}
