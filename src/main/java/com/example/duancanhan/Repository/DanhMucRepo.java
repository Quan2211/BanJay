package com.example.duancanhan.Repository;

import com.example.duancanhan.Entity.DanhMuc;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DanhMucRepo extends JpaRepository<DanhMuc ,Integer> {
}
