using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace projekt_albumy.Migrations
{
    public partial class FinalVersion : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Bands",
                schema: "Identity",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Bands", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "MusicTypes",
                schema: "Identity",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_MusicTypes", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Artists",
                schema: "Identity",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    BandsId = table.Column<int>(nullable: false),
                    Name = table.Column<string>(nullable: true),
                    Surname = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Artists", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Artists_Bands_BandsId",
                        column: x => x.BandsId,
                        principalSchema: "Identity",
                        principalTable: "Bands",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Albums",
                schema: "Identity",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(nullable: true),
                    Year = table.Column<DateTime>(nullable: false),
                    BandsId = table.Column<int>(nullable: false),
                    MusicTypesId = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Albums", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Albums_Bands_BandsId",
                        column: x => x.BandsId,
                        principalSchema: "Identity",
                        principalTable: "Bands",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_Albums_MusicTypes_MusicTypesId",
                        column: x => x.MusicTypesId,
                        principalSchema: "Identity",
                        principalTable: "MusicTypes",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Albums_BandsId",
                schema: "Identity",
                table: "Albums",
                column: "BandsId");

            migrationBuilder.CreateIndex(
                name: "IX_Albums_MusicTypesId",
                schema: "Identity",
                table: "Albums",
                column: "MusicTypesId");

            migrationBuilder.CreateIndex(
                name: "IX_Artists_BandsId",
                schema: "Identity",
                table: "Artists",
                column: "BandsId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Albums",
                schema: "Identity");

            migrationBuilder.DropTable(
                name: "Artists",
                schema: "Identity");

            migrationBuilder.DropTable(
                name: "MusicTypes",
                schema: "Identity");

            migrationBuilder.DropTable(
                name: "Bands",
                schema: "Identity");
        }
    }
}
