<!DOCTYPE html>
<html lang="zh-TW">
<head>
<meta charset="UTF-8">
<title>可收合 DOM Tree</title>
<style>
body {
    font-family: monospace;
}

.tree ul {
    padding-left: 20px;
    position: relative;
}

.tree ul::before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    border-left: 1px solid #555;
    height: 100%;
}

.tree li {
    list-style: none;
    position: relative;
    padding-left: 20px;
    margin: 6px 0;
    cursor: pointer;
}

.tree li::before {
    content: "";
    position: absolute;
    top: 12px;
    left: 0;
    width: 20px;
    border-top: 1px solid #555;
}

.box {
    display: inline-block;
    padding: 4px 10px;
    border: 1px solid #333;
    border-radius: 6px;
    background: #f5f5f5;
    transition: 0.2s;
}

.box:hover {
    background: #e0e0e0;
}

.collapsed > ul {
    display: none;
}
</style>
</head>
<body>

<h2>點節點可以收合 👇</h2>

<div class="tree">
<ul>
<li><span class="box">html</span>
    <ul>
        <li><span class="box">head</span>
            <ul>
                <li><span class="box">meta</span></li>
                <li><span class="box">title: 我的大賣場</span></li>
            </ul>
        </li>
        <li><span class="box">body</span>
            <ul>
                <li><span class="box">header #top-menu</span>
                    <ul>
                        <li><span class="box">button: 購物車</span></li>
                    </ul>
                </li>
                <li><span class="box">main #shopping-area</span>
                    <ul>
                        <li><span class="box">section #electronics</span>
                            <ul>
                                <li><span class="box">h2: 3C產品區</span></li>
                                <li><span class="box">div.product: 手機</span></li>
                                <li><span class="box">div.product: 筆電</span></li>
                            </ul>
                        </li>
                        <li><span class="box">section #clothing</span>
                            <ul>
                                <li><span class="box">h2: 服飾區</span></li>
                                <li><span class="box">div #mens-wear</span>
                                    <ul>
                                        <li><span class="box">h3: 男裝</span></li>
                                        <li><span class="box">span.product: 牛仔褲</span></li>
                                        <li><span class="box">span.product: T-shirt</span></li>
                                    </ul>
                                </li>
                                <li><span class="box">div #womens-wear</span>
                                    <ul>
                                        <li><span class="box">h3: 女裝</span></li>
                                        <li><span class="box">span.product: 洋裝</span></li>
                                        <li><span class="box">span.product: 裙子</span></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
            </ul>
        </li>
    </ul>
</li>
</ul>
</div>

<script>
document.querySelectorAll(".tree li").forEach(li => {
    li.addEventListener("click", function(e) {
        e.stopPropagation(); // 防止點擊影響父層
        this.classList.toggle("collapsed");
    });
});
</script>

</body>
</html>
