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
    let loanid = this.router.snapshot.paramMap.get('id');
    if (loanid != null) {
      this.service.refreshListByID(loanid).subscribe(
        res => {
          this.service.formData = {
            id: parseInt(res.Id),
            term: res.Term,
            startdate: res.Startdate,
            enddate: res.Enddate,
            type: res.Type,
            amount: res.Amount,
            city: res.City
          }
          //this.resetForm(form);
        },
        err => {
          console.log(err);
        }
      )
    }
    else
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
      amount: 0,
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
        this.resetForm(form);
        this.service.refreshList();
        this.ngRoute.navigate(['/loan-data']);
      },
      err => { console.log(err); }
    )
  }
}
