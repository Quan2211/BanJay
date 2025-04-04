package com.example.duancanhan.Entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDate;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
@Entity
@Table(name = "size")
public class Size {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "ma_size")
    private String ma_size;

    @Column(name = "ten_size")
    private String ten_size;

    @Column(name = "trang_thai")
    private String trang_thai;

    @Column(name = "ngay_tao")
    private LocalDate ngay_tao;

    @Column(name = "ngay_sua")
    private LocalDate ngay_sua;


}
