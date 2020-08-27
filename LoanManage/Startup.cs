using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using LoanManage.Database;
using LoanManage.Repositary;
using LoanManage.Resources;
using LoanManage.Service;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;

namespace LoanManage
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddDbContext<DatabaseContext>(opts => opts.UseSqlServer(@"Server=CTSDOTNET23;database=Loan;Trusted_Connection=True;MultipleActiveResultSets=true;"));

            services.AddControllers();
            // Rest of the code
            services.AddScoped<ILoan, Loan>();

            services.AddSwaggerGen(c => {
                c.SwaggerDoc("v1", new Info
                {
                    Version = "v1",
                    Title = "My First API",
                    Description = "My First ASP.NET Core 2.0 Web API",
                    TermsOfService = "None",
                    Contact = new Contact()
                    {
                        Name = "Tushar Sarkar",
                        Email = "tstusharsarkar18@gmail.com",
                    }
                });
                c.SwaggerDoc("v2", new Info
                {
                    Version = "v2",
                    Title = "My First API",
                    Description = "My First ASP.NET Core 2.0 Web API",
                    TermsOfService = "None",
                    Contact = new Contact()
                    {
                        Name = "Tushar Sarkar",
                        Email = "tstusharsarkar18@gmail.com",
                    }
                });
            });            
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }

            app.UseRouting();

            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();
            });

            app.UseSwagger();
            app.UseSwaggerUI(c => {
                c.SwaggerEndpoint("/swagger/v1/swagger.json", "My API V1");
                c.SwaggerEndpoint("/swagger/v2/swagger.json", "My API V2");
            });
            
        }
    }
}
