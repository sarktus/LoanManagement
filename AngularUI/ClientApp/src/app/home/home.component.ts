import { Component, OnInit } from '@angular/core';
import { NgForm } from '@angular/forms';
import { LoanDetailService } from './../loan-details.service';
import { Router } from '@angular/router';


@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
})
export class HomeComponent implements OnInit {

  constructor(public service: LoanDetailService, private ngRoute: Router) {}

  ngOnInit() {
    this.resetForm();
  }

    resetForm(form ?: NgForm) {
      if (form != null)
        form.form.reset();
      this.service.loginData = {
        username: '',
       password: ''
     }
  }


  onSubmit(form: NgForm) {
    //this.service.loginDetail().subscribe(
    //  res => {
    //    if (res == "Success") {

    //    }
        

    //    this.ngRoute.navigate(['/loan-data']);
    //  },
    //  err => {
    //    console.log(err);
    //  }
    //)
      this.service.loginDetail().subscribe(
        res => {
          //return
          debugger;
          if (res != null) {
            this.ngRoute.navigate(['/loan-data']);
        }
        
      },
      err => {
        console.log(err);
      }
    )
    
    
  }

}
