using CounterStrikeSharp.API.Core;
using CounterStrikeSharp.API.Modules.Utils;

namespace GrauAssetsPrecacher;

public class GrauAssetsPrecacher : BasePlugin
{
    public override string ModuleAuthor => "Beppu";
    public override string ModuleName => "GrauAssetsPrecacher";
	public override string ModuleDescription => "Precaches assets for ZE Grau";
    public override string ModuleVersion => "1.0.0";

    public override void Load(bool hotReload)
    {
        RegisterListener<Listeners.OnServerPrecacheResources>((ResourceManifest manifest) =>
		{
			manifest.AddResource("soundevents/soundevents_ze_grau.vsndevts");
		});
    }
}