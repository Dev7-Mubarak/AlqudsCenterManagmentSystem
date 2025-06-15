using Microsoft.EntityFrameworkCore;
using AlqudsProject.Data;
using Microsoft.Extensions.FileProviders;
using AlqudsProject.Models;


var builder = WebApplication.CreateBuilder(args);

builder.Services.AddDbContext<Alquds_CenterContext>(options =>
    options.UseSqlServer(builder.Configuration.GetConnectionString("localConnection")));

builder.Services.AddDefaultIdentity<AppUser>(options => options.SignIn.RequireConfirmedAccount = true)
    .AddEntityFrameworkStores<Alquds_CenterContext>();

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

app.UseAuthentication();
app.UseAuthorization(); 
app.MapRazorPages();
app.UseHttpsRedirection();

app.UseEndpoints(endpoints =>
{
    // Route for areas (e.g., /Admin/Home/Index)
    endpoints.MapControllerRoute(
        name: "area",
        pattern: "{area:exists}/{controller=Home}/{action=Index}/{id?}");

    // Default route (e.g., /Home/Index)
    endpoints.MapControllerRoute(
        name: "default",
        pattern: "{controller=Home}/{action=Index}/{id?}");
});
app.Run();
