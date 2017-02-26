// --------------------------------------------------------------------------------------------------------------------
// <copyright file="OptionsPageCustom.cs" company="Microsoft">
//   Copyright © 2015 Microsoft.
// </copyright>
// // <summary>
//   The OptionsPageCustom.cs
// </summary>
// --------------------------------------------------------------------------------------------------------------------

namespace FAQ.BOT.Client
{
    #region

    using System.ComponentModel;
    using System.Drawing;
    using System.Runtime.InteropServices;
    using System.Windows.Forms;

    using Microsoft.VisualStudio.Shell;

    #endregion

    /// <summary>
    /// Extends the standard dialog functionality for implementing ToolsOptions pages, 
    /// with support for the Visual Studio automation model, Windows Forms, and state 
    /// persistence through the Visual Studio settings mechanism.
    /// </summary>
    [Guid("F4B59FD5-A4FD-4C7E-B3D3-965BE696E0D2")]
    public class OptionsPageCustom : DialogPage
    {
        #region Fields

        /// <summary>
        /// The options control.
        /// </summary>
        private OptionsCompositeControl optionsControl;

        #endregion Fields

        #region Properties

        /// <summary>
        /// Gets the window an instance of DialogPage that it uses as its user interface.
        /// </summary>
        /// <devdoc>
        /// The window this dialog page will use for its UI.
        /// This window handle must be constant, so if you are
        /// returning a Windows Forms control you must make sure
        /// it does not recreate its handle.  If the window object
        /// implements IComponent it will be sited by the 
        /// dialog page so it can get access to global services.
        /// </devdoc>
        [Browsable(false), DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
        protected override IWin32Window Window
        {
            get
            {
                if (this.optionsControl == null)
                {
                    this.optionsControl = new OptionsCompositeControl { Location = new Point(0, 0), OptionsPage = this };
                }

                return this.optionsControl;
            }
        }

        /// <summary>
        /// Gets or sets the path to the image file.
        /// </summary>
        /// <remarks>The property that needs to be persisted.</remarks>
        [DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
        public string CustomBitmap { get; set; }

        #endregion Properties

        #region Methods

        /// <summary>
        /// The dispose.
        /// </summary>
        /// <param name="disposing">
        /// The disposing.
        /// </param>
        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                if (this.optionsControl != null)
                {
                    this.optionsControl.Dispose();
                    this.optionsControl = null;
                }
            }

            base.Dispose(disposing);
        }

        #endregion Methods
    }
}