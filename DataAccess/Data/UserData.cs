using DataAccess.DbAccess;
using DataAccess.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Data
{
    public class UserData : IUserData
    {
        private readonly ISqlDataAccess _db;

        public UserData(ISqlDataAccess db)
        {
            _db = db;
        }

        public Task<IEnumerable<UserModel>> GetUsers() =>
            _db.LoadData<UserModel, dynamic>("dbo.SP_GetAllUsers", new { });

        public async Task<UserModel?> GetUser(int id)
        {
            var results = await _db.LoadData<UserModel, dynamic>("dbo.SP_GetUser", new { Id = id });
            return results.FirstOrDefault();
        }

        public Task InsertUser(UserModel user) =>
            _db.SaveData("dbo.SP_AddUser", new { user.FirstName, user.LastName });

        public Task UpdateUser(UserModel user) =>
            _db.SaveData("dbo.SP_UpdateUser", user);

        public Task DeleteUser(int id) =>
            _db.SaveData("dbo.SP_DeleteUser", new { Id = id });
    }
}
