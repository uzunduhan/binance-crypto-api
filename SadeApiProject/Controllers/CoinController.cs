using Microsoft.AspNetCore.Mvc;
using SadeApiProject.Models;
using SadeApiProject.Services.Abstract;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace SadeApiProject.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class CoinController : ControllerBase
    {
        private readonly IBchService _bchService;
        private readonly IBnbService _bnbService;
        private readonly IEthService _ethService;

        public CoinController(IBchService bchService, IBnbService bnbService, IEthService ethService)
        {
            _bchService = bchService;
            _bnbService = bnbService;
            _ethService = ethService;
        }

        [HttpGet]
        public async Task<List<Crypto>> Get()
        {
            List<Crypto> cryptos = new List<Crypto>();

            var bch = await _bchService.Get();
            var bnb = await _bnbService.Get();
            var eth = await _ethService.Get();  


            cryptos.Add(bch);
            cryptos.Add(bnb);  
            cryptos.Add(eth);

            return cryptos;
        }

    }
}
