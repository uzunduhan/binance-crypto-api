using SadeApiProject.Models;
using System.Threading.Tasks;

namespace SadeApiProject.Services.Abstract
{
    public interface IEthService
    {
        string GetEthBtcValue();
        Task InsertEthBtcValueToDb();
        Task<Crypto> Get();
    }
}
