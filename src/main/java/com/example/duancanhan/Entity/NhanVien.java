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
@Table(name = "nhan_vien")
public class NhanVien {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "ho_ten_nhan_vien")
    private String ho_ten_nhan_vien;

    @Column(name = "dia_chi")
    private String dia_chi;

    @Column(name = "sdt")
    private String sdt;

    @Column(name = "trang_thai")
    private String trang_thai;

    @Column(name = "ngay_tao")
    private LocalDate ngay_tao;

    @Column(name = "ngay_sua")
    private LocalDate ngay_sua;
}
