import { LoanDetailService } from './../loan-details.service';
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { ToastrService } from 'ngx-toastr';

@Component({
  selector: 'app-loan-details',
  templateUrl: './loan-data.component.html',
  styles: []
})
export class LoanDetailListComponent implements OnInit {
  filterterm: string;
  constructor(public service: LoanDetailService, private router: Router, private toastr: ToastrService) { }

  ngOnInit() {
    this.service.refreshList();
  }

  onDelete(Id) {
    if (confirm('Are you sure to delete this record ?')) {
      this.service.deleteLoanDetail(Id)
        .subscribe(res => {
          this.toastr.success('Successfully Deleted');
          this.service.refreshList();
        },
          err => { console.log(err); })
    }
  }

  onEdit(id) {
    this.router.navigate(['/loan-edit-form' , id ]);
  }
}



