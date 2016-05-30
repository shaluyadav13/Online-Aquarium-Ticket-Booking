using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(AquariumSite.Startup))]
namespace AquariumSite
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
