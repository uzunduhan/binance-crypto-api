using SadeApiProject.Models;
using System.Threading.Tasks;

namespace SadeApiProject.Services.Abstract
{
    public interface IBnbService
    {
        string GetBnbBtcValue();
        Task InsertBnbBtcValueToDb();
        Task<Crypto> Get();
    }
}
