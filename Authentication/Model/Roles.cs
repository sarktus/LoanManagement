using Microsoft.AspNetCore.Authorization;


namespace Authentication.Model
{
    public class Roles
    {
        public const string Admin = "Admin";
        public const string Guest = "Guest";

        public static AuthorizationPolicy AdminRole()
        {
            return new AuthorizationPolicyBuilder().RequireAuthenticatedUser().RequireRole(Admin).Build();
        }

        public static AuthorizationPolicy UserRole()
        {
            return new AuthorizationPolicyBuilder().RequireAuthenticatedUser().RequireRole(Guest).Build();
        }
    }
}
