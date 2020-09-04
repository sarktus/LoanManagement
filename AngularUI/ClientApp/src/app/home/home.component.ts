import { Component, OnInit } from '@angular/core';
import { NgForm } from '@angular/forms';
import { LoanDetailService } from './../loan-details.service';
import { Router } from '@angular/router';
import { ToastrService } from 'ngx-toastr';


@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
})
export class HomeComponent implements OnInit {

  constructor(public service: LoanDetailService, private ngRoute: Router, private toastr: ToastrService) { }

  ngOnInit() {
    debugger;
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
      this.service.loginDetail().subscribe(
        res => {
          if (res != null) {
            this.toastr.success('You Have Successfully Loggedin');
            this.ngRoute.navigate(['/loan-data']);
        }
      },
      err => {
        console.log(err);
      }
    )
    
    
  }

}
