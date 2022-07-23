export interface Comments {
    data: CommentsInf[];
    meta: number;
}

export interface CommentsInf {
    id:      number;
    comment: string;
    user:    string;
    idpost:  number;
}