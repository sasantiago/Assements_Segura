// using SEGURA_ASSETMENTS.Interfaces;
// using assetsment_Celsia.Services;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using SEGURA_ASSETMENTS.Data;
using SEGURA_ASSETMENTS.Models;

// Configure services in the container.



var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

// Registrar el contexto de base de datos
builder.Services.AddDbContext<SEGURA_ASSETMENTSContext>(options =>
    options.UseSqlServer(
        builder.Configuration.GetConnectionString("sql")));

builder.Services.AddDefaultIdentity<AspNetUsers>(options =>
{
    options.SignIn.RequireConfirmedAccount = false;
})
.AddRoles<IdentityRole>()
.AddEntityFrameworkStores<SEGURA_ASSETMENTSContext>();


builder.Services.AddControllersWithViews();
var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

app.UseAuthorization();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Login}/{action=Login}/{id?}");

app.Run();
