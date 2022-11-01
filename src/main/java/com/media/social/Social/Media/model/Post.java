package com.media.social.Social.Media.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;
import java.util.List;
import java.util.Set;

@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "post_table")
public class Post {

    @Id
    @GeneratedValue(generator = "uuid2")
    @GenericGenerator(name = "uuid2", strategy = "uuid2")
    @Column(name = "id",length = 36)
    private String id;

    @JsonIgnore
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id", referencedColumnName = "id")
    @ToString.Exclude
    private User userId;

    @Column(name = "content")
    private String content;

//    @Column(name = "photo")
//    private String photo;

    @Column(name = "total_like")
    @ElementCollection(targetClass = String.class)
    private Set<String> totalLike;

    @Column(name = "posting_date")
    private Date postingDate;
}
