using System.Threading.Tasks;
using SadeApiProject.Models;

namespace SadeApiProject.Services.Abstract
{
    public interface IBchService
    {
        string GetBchBtcValue();
        Task InsertBchBtcValueToDb();
        Task<Crypto> Get();
    }
}
