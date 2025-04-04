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
@Table(name = "san_pham")


public class SanPham {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "ma_san_pham")
    private String ma_san_pham;

    @Column(name = "ten_san_pham")
    private String ten_san_pham;

    @Column(name = "mo_ta")
    private String mo_ta;

    @Column(name = "trang_thai")
    private String trang_thai;

    @Column(name = "ngay_tao")
    private LocalDate ngay_tao;

    @Column(name = "ngay_sua")
    private LocalDate ngay_sua;

    @Column(name = "id_danh_muc")
    private Integer id_danh_muc;
}
