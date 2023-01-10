using ExpressStore.Modules.Core.Extensions.Settings;

namespace ExpressStore.Services.Core.API.ViewModels.Manage;

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
