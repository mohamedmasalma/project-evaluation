using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(_2016710230066.Startup))]
namespace _2016710230066
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
