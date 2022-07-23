import { Component, OnInit } from '@angular/core';
import { Posts, PostsInf } from 'src/app/interfaces/posts';
import { PostsService } from 'src/app/services/posts.service';

@Component({
  selector: 'app-posts',
  templateUrl: './posts.component.html',
  styleUrls: ['./posts.component.css'],
})
export class PostsComponent implements OnInit {
  posts: PostsInf[] = [];



  constructor(private service: PostsService) {
    this.getPosts();
   }

  ngOnInit(): void {
  }

  getPosts() : void {
    this.service.getPosts().subscribe((result: Posts) => {
      console.log(result.data);
      this.posts = result.data;
    });
  }

}
