using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using SadeApiProject.Services.Abstract;
using System.Threading;
using System.Threading.Tasks;

namespace SadeApiProject.Services.Concrete
{
    public class InsertCrypoValueToDatabaseBackgorundService : BackgroundService
    {
        private readonly IBchService _bchService;
        private readonly IBnbService _bnbService;
        private readonly IEthService _ethService;

        public InsertCrypoValueToDatabaseBackgorundService(IServiceScopeFactory factory)
        {
            _bchService = factory.CreateScope().ServiceProvider.GetRequiredService<IBchService>();
            _bnbService = factory.CreateScope().ServiceProvider.GetRequiredService<IBnbService>();
            _ethService = factory.CreateScope().ServiceProvider.GetRequiredService<IEthService>();
        }
        protected override async Task ExecuteAsync(CancellationToken stoppingToken)
        {
            while (!stoppingToken.IsCancellationRequested)
            {

                await _bchService.InsertBchBtcValueToDb();
                await _bnbService.InsertBnbBtcValueToDb();
                await _ethService.InsertEthBtcValueToDb();

            }
        }
    }
}
