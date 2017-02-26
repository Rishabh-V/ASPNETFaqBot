

namespace FAQ.BOT.Client
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel;
    using System.Runtime.CompilerServices;
    using System.Text;
    using System.Windows;
    using System.Xml;
    using System.Xml.Serialization;

    using PubSub;

    /// <summary>
    /// The view model base.
    /// </summary>
    public class ViewModelBase : INotifyPropertyChanged
    {
        /// <summary>
        /// The is busy value.
        /// </summary>
        private bool isBusyValue;

        /// <summary>
        /// Gets or sets a value indicating whether is busy.
        /// </summary>
        public bool IsBusy
        {
            get
            {
                return this.isBusyValue;
            }

            set
            {
                this.SetField<bool>(ref this.isBusyValue, value, "IsBusy");
            }
        }

        /// <summary>
        /// The property changed.
        /// </summary>
        public event PropertyChangedEventHandler PropertyChanged;

        /// <summary>
        /// The raise notify property changed.
        /// </summary>
        /// <param name="propertyName">
        /// The property name.
        /// </param>
        protected virtual void NotifyPropertyChanged(string propertyName)
        {
            if (Application.Current.Dispatcher.CheckAccess())
            {
                this.PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
            }
            else
            {
                Application.Current.Dispatcher.BeginInvoke(new Action(delegate { this.PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName)); }), new object[0]);
            }
        }

        /// <summary>
        /// The on property changed.
        /// </summary>
        /// <param name="propertyName">
        /// The property name.
        /// </param>
        protected virtual void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            this.NotifyPropertyChanged(propertyName);

            ////this.PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        /// <summary>
        /// The set field.
        /// </summary>
        /// <param name="field">
        /// The field.
        /// </param>
        /// <param name="value">
        /// The value.
        /// </param>
        /// <param name="propertyName">
        /// The property name.
        /// </param>
        /// <typeparam name="T">
        /// </typeparam>
        /// <returns>
        /// The <see cref="bool"/>.
        /// </returns>
        protected bool SetField<T>(ref T field, T value, [CallerMemberName] string propertyName = null)
        {
            if (EqualityComparer<T>.Default.Equals(field, value))
            {
                return false;
            }

            field = value;
            this.OnPropertyChanged(propertyName);
            return true;
        }
    }
}
