import { Component, OnInit } from '@angular/core';
import { PostsInf } from 'src/app/interfaces/posts';
import { CommentsInf,Comments } from 'src/app/interfaces/comments';
import { PostsService } from 'src/app/services/posts.service';

@Component({
  selector: 'app-comments',
  templateUrl: './comments.component.html',
  styleUrls: ['./comments.component.css'],
})
export class CommentsComponent implements OnInit {
  postFound = false;
  post: PostsInf[] = [];
  comments: CommentsInf[] = [];

  constructor(private service: PostsService) {
    const postID = new URLSearchParams(window.location.search).get('id');
    // Get posts
    this.service.getPosts().subscribe(({ data: postsData }) => {
      this.post = postsData.filter(({ id }) => Number(postID) === id);
      const newDate = new Date(this.post[0].date);
      this.post[0].day = newDate.getDay() || 1;
      this.post[0].month = newDate.toLocaleString('default', {
        month: 'short',
      });

      if (this.post.length === 0) return;
      this.postFound = true;
      // Get comments
      this.service
        .getComments()
        .subscribe(({ data: commentsData }: Comments) => {
          this.comments = commentsData.filter(
            ({ idpost }) => Number(postID) === idpost
          );
        });
    });
  }
  ngOnInit(): void {}
}
