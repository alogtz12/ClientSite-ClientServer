export interface Posts {
  data: PostsInf[];
  meta: number;
}

export interface PostsInf {
  tittle: string;
  description: string;
  date: string;
  user: string;
  section: string;
  comment: string;
  id: number;
  day: number;
  month: string;
}



