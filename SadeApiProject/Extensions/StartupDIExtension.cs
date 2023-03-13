using Microsoft.AspNetCore.Builder;
using Microsoft.Extensions.DependencyInjection;
using SadeApiProject.Services.Abstract;
using SadeApiProject.Services.Concrete;

namespace SadeApiProject.Extensions
{
    public static class StartUpDIExtension
    {
        public static void AddServicesDI(this IServiceCollection services)
        {
            services.AddHostedService<InsertCrypoValueToDatabaseBackgorundService>();

            services.AddScoped<IBchService, BchService>();
            services.AddScoped<IBnbService, BnbService>();
            services.AddScoped<IEthService, EthService>();


            services.AddScoped<ApiConnection>();
            services.AddScoped<PostgreCon>();


        }


    }
}
