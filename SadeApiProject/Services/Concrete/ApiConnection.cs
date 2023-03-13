using Binance.NetCore;

namespace SadeApiProject.Services.Concrete
{
    public class ApiConnection
    {
        private readonly string apiKey = "xLA3H8uo8SRdVue4mbh1NGpQnSRJu8UNjp4IigWLVkfSJsKQYy7hXnxlK1vCKywc";
        private readonly string secretKey = "muYmt9yUM6fuFRoxruC5BQHlXejfBY4rprlRb9i0seERPwpdU9zEsxdBtbk4gF4L";

        public BinanceApiClient ReturnApiClient()
        {
            var apiClient = new BinanceApiClient(apiKey, secretKey);

            return apiClient;
        }

    }
}
