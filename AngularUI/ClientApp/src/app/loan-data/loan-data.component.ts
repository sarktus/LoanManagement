import { LoanDetailService } from './../loan-details.service';
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';


@Component({
  selector: 'app-loan-details',
  templateUrl: './loan-data.component.html',
  styles: []
})
export class LoanDetailListComponent implements OnInit {
  filterterm: string;
  constructor(public service: LoanDetailService, private router: Router) { }

  ngOnInit() {
    this.service.refreshList();
  }

  onDelete(Id) {
    if (confirm('Are you sure to delete this record ?')) {
      this.service.deleteLoanDetail(Id)
        .subscribe(res => {
          this.service.refreshList();
        },
          err => { console.log(err); })
    }
  }

  onEdit(id) {
    this.router.navigate(['/loan-edit-form' , id ]);
  }
}



