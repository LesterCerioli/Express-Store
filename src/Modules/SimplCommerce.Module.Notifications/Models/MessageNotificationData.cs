﻿using System;

namespace SimplCommerce.Module.Notifications.Models
{
    /// <summary>
    /// Can be used to store a simple message as notification data.
    /// </summary>
    [Serializable]
    public class MessageNotificationData : NotificationData
    {
        /// <summary>
        /// The message.
        /// </summary>
        public string Message
        {
            get => _message ?? (this[nameof(Message)] as string);
            set
            {
                this[nameof(Message)] = value;
                _message = value;
            }
        }
        private string _message;

        /// <summary>
        /// Needed for serialization.
        /// </summary>
        private MessageNotificationData()
        {
            
        }

        public MessageNotificationData(string message)
        {
            Message = message;
        }
    }
}
