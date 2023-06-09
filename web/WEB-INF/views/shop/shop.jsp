<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Breadcrumb Begin -->
<div class="breadcrumb-option">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="breadcrumb__text">
                    <h2>Shop</h2>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="breadcrumb__links">
                    <a href="<c:url value="/cakestore/index.do"/>">Home</a>
                    <span>Shop</span>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb End -->

<!-- Shop Section Begin -->
<section class="shop spad">
    <div class="container">
        <div class="shop__option">
            <div class="row">
                <div class="col-lg-7 col-md-7">
                    <div class="shop__option__search">
                        <form action="<c:url value="/shop/shop.do"/>" method="post">
                            <select name="category">
                                <option value="None">None</option>
                                <c:forEach var="category" items="${category}">
                                    <option value="${category}" ${category==param.category?"selected":""}>${category}</option>
                                </c:forEach>
                            </select>
                            <input type="text" name="search" placeholder="Search" value="${param.search}">
                            <button type="submit"><i class="fa fa-search"></i></button>
                        </form>
                    </div>
                </div>
                <div class="col-lg-5 col-md-5">
                    <div class="shop__option__right">
                        <select>
                            <option value="">Default sorting</option>
                            <option value="">A to Z</option>
                            <option value="">1 - 8</option>
                            <option value="">Name</option>
                        </select>
                        <a href="#"><i class="fa fa-list"></i></a>
                        <a href="#"><i class="fa fa-reorder"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <c:forEach var="Products" items="${list}">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="${Products.image}">
                            <div class="product__label">
                                <span>${Products.category}</span>
                            </div>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">${Products.name}</a></h6>
                            <div class="product__item__price">$ ${Products.price}</div>
                            <div class="cart_add">
                                <a href="<c:url value="/detail/detail.do?pid=${products.id}"/>">Add to cart</a>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
        <div class="shop__last__option">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="shop__pagination">
                        <a href="#">1</a>
                        <a href="#">2</a>
                        <a href="#">3</a>
                        <a href="#"><span class="arrow_carrot-right"></span></a>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="shop__last__text">
                        <p>Showing 1-9 of 10 results</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Shop Section End -->