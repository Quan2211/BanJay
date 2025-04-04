package com.example.duancanhan.Repository;

import com.example.duancanhan.Entity.MauSac;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MauSacRepo extends JpaRepository<MauSac , Integer> {
}
