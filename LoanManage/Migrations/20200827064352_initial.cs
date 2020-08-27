using Microsoft.EntityFrameworkCore.Migrations;

namespace LoanManage.Migrations
{
    public partial class initial : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "LoanDetail",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Amount = table.Column<int>(nullable: false),
                    Term = table.Column<string>(nullable: false),
                    Type = table.Column<string>(nullable: false),
                    City = table.Column<string>(nullable: false),
                    Startdate = table.Column<string>(nullable: false),
                    Enddate = table.Column<string>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_LoanDetail", x => x.Id);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "LoanDetail");
        }
    }
}
