using Abp.Configuration;

namespace ExpressStore.Services.Core.ViewModels.Manage
{
    public class UserSettingViewModel
    {
        public UserSettingViewModel()
        {
            UserSettings = new Dictionary<string, string>();
            SettingDefinitions = new Dictionary<string, SettingDefinition>();
        }

        public Dictionary<string, SettingDefinition> SettingDefinitions { get; set; }
        public Dictionary<string, string> UserSettings { get; set; }
    }
}
