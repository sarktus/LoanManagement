using Authentication.Context;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices.ComTypes;
using System.Threading.Tasks;

namespace Authentication.Model
{
    public class UserValidate
    {
        private static  UserDBContext _context;
        public UserValidate(UserDBContext context)
        {
            _context = context;
        }
        //This method is used to check the user credentials
        public static bool Login(string username, string password)
        {

            var UserLists = _context.Users;
            return UserLists.Any(user =>
                user.UserName.Equals(username, StringComparison.OrdinalIgnoreCase)
                && user.Password == password);
        }
        //This method is used to return the User Details
        public static User GetUserDetails(string username, string password)
        {
            var UserLists = _context.Users;
            return UserLists.FirstOrDefault(user =>
                user.UserName.Equals(username, StringComparison.OrdinalIgnoreCase)
                && user.Password == password);
        }
    }
}
