﻿using SadeApiProject.Models;
using SadeApiProject.Services.Abstract;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SadeApiProject.Services.Concrete
{
    public class EthService : IEthService
    {
        private readonly ApiConnection _apiConnection;
        private readonly PostgreCon _postgreCon;

        public EthService(ApiConnection apiConnection, PostgreCon postgreCon)
        {
            _apiConnection = apiConnection;
            _postgreCon = postgreCon;
        }

        public async Task<Crypto> Get()
        {
            decimal saatlikOrtalama = 0;
            decimal son = 0;
            decimal sonIki = 0;
            decimal sonUc = 0;


            List<decimal> datas = new List<decimal>();

            datas = await _postgreCon.GetData("ethbtc");


            if (datas.Count() >= 12)
            {
                for (int i = 0; i < datas.Count(); i++)
                {
                    saatlikOrtalama += datas.ElementAt(i);
                }

                saatlikOrtalama = saatlikOrtalama / 12;
            }

            if (datas.Count() >= 3)
            {
                son = datas.ElementAt(0);
                sonIki = datas.ElementAt(1);
                sonUc = datas.ElementAt(2);
            }



            var EthBtc = new Crypto
            {
                name = "ETH",
                sonDeger = son.ToString(),
                sondanOncekiDeger = sonIki.ToString(),
                sondanOncekiIkinciDeger = sonUc.ToString(),
                saatlikOrtalama = saatlikOrtalama.ToString()
            };


            datas.Clear();
            return EthBtc;
        }

        public string GetEthBtcValue()
        {
            return _apiConnection.ReturnApiClient().GetTicker("ETHBTC").Price.ToString();
        }

        public async Task InsertEthBtcValueToDb()
        {

            await _postgreCon.InsertData(GetEthBtcValue(), "ethbtc");

        }
    }
}
