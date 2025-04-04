package com.example.duancanhan.Repository;

import com.example.duancanhan.Entity.NhanVien;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface NhanVienRepo extends JpaRepository<NhanVien , Integer> {
}
