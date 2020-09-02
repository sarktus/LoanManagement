import { LoanDetails } from './loan-data/loan-details.model';
import { loginDetails } from './home/home.model';
import { Injectable } from '@angular/core';
import { HttpClient } from "@angular/common/http";

@Injectable({
  providedIn: 'root'
})
export class LoanDetailService {

  formData: LoanDetails = new LoanDetails();
  loginData: loginDetails = new loginDetails();
  //readonly rootURL = 'http://localhost:54604/api';
  readonly rootURL = 'http://localhost:57213';
  readonly loginrootURL = 'http://localhost:64722';
  list: LoanDetails[]=[];

  constructor(private http: HttpClient) { }

  refreshList() {
    
    this.http.get(`${this.rootURL}/loan`)
      .subscribe(
        res => { this.list = res as LoanDetails[];})
  }

  postLoanDetail() {
    return this.http.post(`${this.rootURL}/loan`, this.formData);
  }
  putLoanDetail(id) {
    this.formData.id = parseInt(id);
    return this.http.put(`${this.rootURL}/Loanput/${id}`, this.formData);
  }
  deleteLoanDetail(id) {
    return this.http.delete(`${this.rootURL}/Loanput/${id}`);
  }

  loginDetail() {
    debugger;
    return this.http.post(`${this.loginrootURL}/login`, this.loginData);
  }
}
