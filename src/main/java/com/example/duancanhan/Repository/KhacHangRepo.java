package com.example.duancanhan.Repository;

import com.example.duancanhan.Entity.KhachHang;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface KhacHangRepo extends JpaRepository<KhachHang , Integer> {
}
