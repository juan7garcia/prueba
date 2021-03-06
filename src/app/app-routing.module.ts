import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { HomeComponent } from './pages/home/home.component';
import { ProveedoresComponent } from './pages/proveedores/proveedores.component';


const routes: Routes = [
  { path: "home", component: HomeComponent },
  { path: "buscar-proveedor", component: ProveedoresComponent },
  { path: "**", redirectTo: "/home" }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
