package com.devpro.treeshop.model;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "cart_product")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Cart_Product {
    @EmbeddedId
    private CartProductID id;

    @ManyToOne
    @MapsId("cartId")
    @JoinColumn(name = "cart_id")
    private Cart cart;

    @ManyToOne
    @MapsId("productId")
    @JoinColumn(name = "product_id")
    private Products product;

    @Column(name = "quantity", nullable = false)
    private Integer quantity = 1;

    @Column(name = "price")
    private Float price;
}