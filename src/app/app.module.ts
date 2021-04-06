import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { NgCircleProgressModule } from 'ng-circle-progress';
import { HeaderComponent } from './components/header/header.component';
import { HomeComponent } from './pages/home/home.component';
import { ProveedoresComponent } from './pages/proveedores/proveedores.component';

@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    HomeComponent,
    ProveedoresComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    NgCircleProgressModule.forRoot({
      "backgroundColor": "#001eff",
      "backgroundGradientStopColor": "#4400ff",
      "backgroundStroke": "#ffffff",
      "space": -4,
      "toFixed": 0,
      "unitsFontSize": "30",
      "unitsColor": "#000000",
      "outerStrokeGradient": true,
      "outerStrokeWidth": 22,
      "outerStrokeColor": "#00c3e6",
      "outerStrokeGradientStopColor": "#7400b3",
      "outerStrokeLinecap": "round",
      "innerStrokeColor": "#ffffff",
      "innerStrokeWidth": 9,
      "titleColor": "#000000",
      "titleFontSize": "39",
      "subtitleColor": "#000000",
      "imageHeight": 160,
      "imageWidth": 150,
      "showSubtitle": false,
      "showImage": true,
      "showBackground": false
    })
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
