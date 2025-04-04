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
@Table(name = "danh_muc")

public class DanhMuc {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "ma_danh_muc")
    private String ma_danh_muc;

    @Column(name = "ten_danh_muc")
    private String ten_danh_muc;

    @Column(name = "trang_thai")
    private String trang_thai;

    @Column(name = "ngay_tao")
    private LocalDate ngay_tao;

    @Column(name = "ngay_sua")
    private LocalDate ngay_sua;

}
