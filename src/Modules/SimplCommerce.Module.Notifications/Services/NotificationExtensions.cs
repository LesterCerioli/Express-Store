﻿using System;
using System.Collections.Generic;
using SimplCommerce.Infrastructure.Helpers;
using SimplCommerce.Module.Notifications.Models;

namespace SimplCommerce.Module.Notifications.Services
{
    /// <summary>
    /// Extension methods for
    /// <see cref="INotificationSubscriptionManager"/>, 
    /// <see cref="INotificationPublisher"/>, 
    /// <see cref="IUserNotificationManager"/>.
    /// </summary>
    public static class NotificationExtensions
    {
        #region INotificationSubscriptionManager

        /// <summary>
        /// Subscribes to a notification.
        /// </summary>
        public static void Subscribe(this INotificationSubscriptionManager notificationSubscriptionManager, long userId, string notificationName, EntityIdentifier entityIdentifier = null)
        {
            AsyncHelper.RunSync(() => notificationSubscriptionManager.SubscribeAsync(userId, notificationName, entityIdentifier));
        }

        /// <summary>
        /// Subscribes to all available notifications for given user.
        /// It does not subscribe entity related notifications.
        /// </summary>
        public static void SubscribeToAllAvailableNotifications(this INotificationSubscriptionManager notificationSubscriptionManager, long userId)
        {
            AsyncHelper.RunSync(() => notificationSubscriptionManager.SubscribeToAllAvailableNotificationsAsync(userId));            
        }

        /// <summary>
        /// Unsubscribes from a notification.
        /// </summary>
        public static void Unsubscribe(this INotificationSubscriptionManager notificationSubscriptionManager, long userId, string notificationName, EntityIdentifier entityIdentifier = null)
        {
            AsyncHelper.RunSync(() => notificationSubscriptionManager.UnsubscribeAsync(userId, notificationName, entityIdentifier));
        }

        /// <summary>
        /// Gets all subscribtions for given notification.
        /// </summary>
        public static List<NotificationSubscriptionDto> GetSubscriptions(this INotificationSubscriptionManager notificationSubscriptionManager, string notificationName, EntityIdentifier entityIdentifier = null)
        {
            return AsyncHelper.RunSync(() => notificationSubscriptionManager.GetSubscriptionsAsync(notificationName, entityIdentifier));
        }

        /// <summary>
        /// Gets subscribed notifications for a user.
        /// </summary>
        public static List<NotificationSubscriptionDto> GetSubscribedNotifications(this INotificationSubscriptionManager notificationSubscriptionManager, long userId)
        {
            return AsyncHelper.RunSync(() => notificationSubscriptionManager.GetSubscribedNotificationsAsync(userId));
        }

        /// <summary>
        /// Checks if a user subscribed for a notification.
        /// </summary>
        public static bool IsSubscribed(this INotificationSubscriptionManager notificationSubscriptionManager, long userId, string notificationName, EntityIdentifier entityIdentifier = null)
        {
            return AsyncHelper.RunSync(() => notificationSubscriptionManager.IsSubscribedAsync(userId, notificationName, entityIdentifier));
        }

        #endregion

        #region INotificationPublisher

        /// <summary>
        /// Publishes a new notification.
        /// </summary>
        /// <param name="notificationPublisher">Notification publisher</param>
        /// <param name="notificationName">Unique notification name</param>
        /// <param name="data">Notification data (optional)</param>
        /// <param name="entityIdentifier">The entity identifier if this notification is related to an entity</param>
        /// <param name="severity">Notification severity</param>
        /// <param name="userIds">Target user id(s). Used to send notification to specific user(s). If this is null/empty, the notification is sent to all subscribed users</param>
        public static void Publish(this INotificationPublisher notificationPublisher, string notificationName, NotificationData data = null, EntityIdentifier entityIdentifier = null, NotificationSeverity severity = NotificationSeverity.Info, long[] userIds = null)
        {
            AsyncHelper.RunSync(() => notificationPublisher.PublishAsync(notificationName, data, entityIdentifier, severity, userIds));
        }

        #endregion

        #region IUserNotificationManager

        /// <summary>
        /// Gets notifications for a user.
        /// </summary>
        /// <param name="userNotificationManager">User notificaiton manager</param>
        /// <param name="userId">User Id.</param>
        /// <param name="state">State</param>
        /// <param name="skipCount">Skip count.</param>
        /// <param name="maxResultCount">Maximum result count.</param>
        public static List<UserNotificationDto> GetUserNotifications(this IUserNotificationManager userNotificationManager, long userId, UserNotificationState? state = null, int skipCount = 0, int maxResultCount = int.MaxValue)
        {
            return AsyncHelper.RunSync(() => userNotificationManager.GetUserNotificationsAsync(userId, state, skipCount: skipCount, maxResultCount: maxResultCount));
        }

        /// <summary>
        /// Gets user notification count.
        /// </summary>
        /// <param name="userNotificationManager">User notificaiton manager</param>
        /// <param name="userId">User Id.</param>
        /// <param name="state">State.</param>
        public static int GetUserNotificationCount(this IUserNotificationManager userNotificationManager, long userId, UserNotificationState? state = null)
        {
            return AsyncHelper.RunSync(() => userNotificationManager.GetUserNotificationCountAsync(userId, state));
        }

        /// <summary>
        /// Gets a user notification by given id.
        /// </summary>
        /// <param name="userNotificationManager">User notificaiton manager</param>
        /// <param name="tenantId">Tenant Id</param>
        /// <param name="userNotificationId">The user notification id.</param>
        public static UserNotificationDto GetUserNotification(this IUserNotificationManager userNotificationManager, Guid userNotificationId)
        {
            return AsyncHelper.RunSync(() => userNotificationManager.GetUserNotificationAsync(userNotificationId));
        }

        /// <summary>
        /// Updates a user notification state.
        /// </summary>
        /// <param name="userNotificationManager">User notificaiton manager</param>
        /// <param name="userNotificationId">The user notification id.</param>
        /// <param name="state">New state.</param>
        public static void UpdateUserNotificationState(this IUserNotificationManager userNotificationManager,Guid userNotificationId, UserNotificationState state)
        {
            AsyncHelper.RunSync(() => userNotificationManager.UpdateUserNotificationStateAsync(userNotificationId, state));
        }

        /// <summary>
        /// Updates all notification states for a user.
        /// </summary>
        /// <param name="userNotificationManager">User notificaiton manager</param>
        /// <param name="userId">User Id.</param>
        /// <param name="state">New state.</param>
        public static void UpdateAllUserNotificationStates(this IUserNotificationManager userNotificationManager, long userId, UserNotificationState state)
        {
            AsyncHelper.RunSync(() => userNotificationManager.UpdateAllUserNotificationStatesAsync(userId, state));
        }

        /// <summary>
        /// Deletes a user notification.
        /// </summary>
        /// <param name="userNotificationManager">User notificaiton manager</param>
        /// <param name="userNotificationId">The user notification id.</param>
        public static void DeleteUserNotification(this IUserNotificationManager userNotificationManager, Guid userNotificationId)
        {
            AsyncHelper.RunSync(() => userNotificationManager.DeleteUserNotificationAsync(userNotificationId));
        }

        /// <summary>
        /// Deletes all notifications of a user.
        /// </summary>
        /// <param name="userNotificationManager">User notificaiton manager</param>
        /// <param name="user">The user id.</param>
        public static void DeleteAllUserNotifications(this IUserNotificationManager userNotificationManager, long userId)
        {
            AsyncHelper.RunSync(() => userNotificationManager.DeleteAllUserNotificationsAsync(userId));
        }

        #endregion
    }
}
