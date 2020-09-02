import { LoanDetailService } from './../loan-details.service';
import { Component, OnInit } from '@angular/core';
import { NgForm } from '@angular/forms';
import { ActivatedRoute } from '@angular/router';
import { Router } from '@angular/router';

@Component({
  selector: 'app-loan-detail-form',
  templateUrl: './loan-detail-form.component.html',
  styles: []
})
export class LoanDetailFormComponent implements OnInit {

  constructor(public service: LoanDetailService, private router: ActivatedRoute, private ngRoute: Router) { }

  ngOnInit() {
    this.resetForm();
  }

  resetForm(form?: NgForm) {
    if (form != null)
      form.form.reset();
    this.service.formData = {
      id: 0,
      term: '',
      startdate: '',
      enddate: '',
      type: '',
      amount: 100,
      city: ''
    }
  }

  onSubmit(form: NgForm) {
    let loanid = this.router.snapshot.paramMap.get('id');
    if (parseInt(loanid) == null || loanid == null)
      this.insertRecord(form);
    else {
      this.updateRecord(form);
    }
      
  }

  updateRecord(form: NgForm) {
    let loanid = this.router.snapshot.paramMap.get('id');
    this.service.putLoanDetail(loanid).subscribe(
      res => {
        this.resetForm(form);
        //this.toastr.info('Submitted successfully', 'Loan Detail Register');
        this.service.refreshList();
        this.ngRoute.navigate(['/loan-data']);
      },
      err => {
        console.log(err);
      }
    )
  }

 
  insertRecord(form: NgForm) {
    this.service.postLoanDetail().subscribe(
      res => {
        //post
        debugger;
        this.resetForm(form);
        this.service.refreshList();
        this.ngRoute.navigate(['/loan-data']);
      },
      err => { console.log(err); }
    )
  }
}
