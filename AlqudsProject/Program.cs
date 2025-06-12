using Microsoft.EntityFrameworkCore;
using AlqudsProject.Data;
using Microsoft.Extensions.FileProviders;
using System.IO;
var builder = WebApplication.CreateBuilder(args);

builder.Services.AddDbContext<Alquds_CenterContext>(options =>
    options.UseSqlServer(builder.Configuration.GetConnectionString("localConnection")));

// Add services to the container.
builder.Services.AddControllersWithViews();

// Add services builder.Services.AddControllersWithViews();
builder.Services.AddSession();

var app = builder.Build();

// Configure pipeline app.UseStaticFiles(); app.UseRouting();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
}
app.UseStaticFiles();
app.UseStaticFiles(new StaticFileOptions
{
    FileProvider = new PhysicalFileProvider(
        Path.Combine(Directory.GetCurrentDirectory(), "wwwroot")),
    RequestPath = ""
});
app.UseSession();
app.UseRouting();

app.UseAuthorization();
app.UseHttpsRedirection();


app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");

app.Run();
