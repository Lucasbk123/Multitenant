using Microsoft.EntityFrameworkCore.Migrations;

namespace Multitenant.Migrations
{
    public partial class inicial : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.EnsureSchema(
                name: "dbo");

            migrationBuilder.CreateTable(
                name: "Pessoas",
                schema: "dbo",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Nome = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Pessoas", x => x.Id);
                });

            migrationBuilder.InsertData(
                schema: "dbo",
                table: "Pessoas",
                columns: new[] { "Id", "Nome" },
                values: new object[] { 1, "Pessoa 1" });

            migrationBuilder.InsertData(
                schema: "dbo",
                table: "Pessoas",
                columns: new[] { "Id", "Nome" },
                values: new object[] { 2, "Pessoa 2" });

            migrationBuilder.InsertData(
                schema: "dbo",
                table: "Pessoas",
                columns: new[] { "Id", "Nome" },
                values: new object[] { 3, "Pessoa 3" });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Pessoas",
                schema: "dbo");
        }
    }
}
