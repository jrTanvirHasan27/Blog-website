<aside class="sidebar-wrapper">
    <div class="iconmenu">
        <div class="nav-toggle-box">
            <div class="nav-toggle-icon"><i class="bi bi-list"></i></div>
        </div>
        <ul class="nav nav-pills flex-column">
            <li class="nav-item" data-bs-toggle="tooltip" data-bs-placement="right" title="Dashboards">
                <button class="nav-link" data-bs-toggle="pill" data-bs-target="#pills-dashboards" type="button"><i
                        class="bi bi-house-door-fill"></i></button>
            </li>
            <li class="nav-item" data-bs-toggle="tooltip" data-bs-placement="right" title="Category">
                <button class="nav-link" data-bs-toggle="pill" data-bs-target="#pills-application" type="button"><i
                        class="bi bi-grid-fill"></i></button>
            </li>
            <li class="nav-item" data-bs-toggle="tooltip" data-bs-placement="right" title="Blog">
                <button class="nav-link" data-bs-toggle="pill" data-bs-target="#pills-widgets" type="button"><i
                        class="bi bi-briefcase-fill"></i></button>
            </li>
            <li class="nav-item" data-bs-toggle="tooltip" data-bs-placement="right" title="Author">
                <button class="nav-link" data-bs-toggle="pill" data-bs-target="#pills-ecommerce" type="button"><i
                        class="bi bi-bag-check-fill"></i></button>
            </li>
        </ul>
    </div>
    <div class="textmenu">
        <div class="brand-logo">
            <a href="{{route('dashboard')}}">
                <img src="{{ asset('admin-asset-new') }}/assets/images/INSIGHTS OF TOMORROW.png"
                     style="height: 145px; width: 245px; margin-left: -33px;"/>
            </a>
        </div>
        <div class="tab-content">
            <div class="tab-pane fade" id="pills-dashboards">
                <div class="list-group list-group-flush">
                    <div class="list-group-item">
                        <div class="d-flex w-100 justify-content-between">
                            <h5 class="mb-0">Dashboard</h5>
                        </div>
                    </div>
                    <a href="{{route('dashboard')}}" class="list-group-item"><i class="bi bi-cart-plus"></i>Main
                        Dashboard</a>
                </div>
            </div>
            <div class="tab-pane fade" id="pills-application">
                <div class="list-group list-group-flush">
                    <div class="list-group-item">
                        <div class="d-flex w-100 justify-content-between">
                            <h5 class="mb-0">Category Module</h5>
                        </div>
                    </div>
                    <a href="{{ route('category.add') }}" class="list-group-item"><i class="bi bi-envelope"></i>Add
                        category</a>
                    <a href="{{ route('category.manage') }}" class="list-group-item"><i
                            class="bi bi-chat-left-text"></i>Manage category</a>
                </div>
            </div>
            <div class="tab-pane fade" id="pills-widgets">
                <div class="list-group list-group-flush">
                    <div class="list-group-item">
                        <div class="d-flex w-100 justify-content-between">
                            <h5 class="mb-0">Blog Module</h5>
                        </div>
                    </div>
                    <a href="{{ route('blogpost.add') }}" class="list-group-item"><i class="bi bi-box"></i>Add Blog</a>
                    <a href="{{ route('post.manage') }}" class="list-group-item"><i class="bi bi-bar-chart"></i>Manage
                        Blog</a>
                </div>
            </div>
            <div class="tab-pane fade" id="pills-ecommerce">
                <div class="list-group list-group-flush">
                    <div class="list-group-item">
                        <div class="d-flex w-100 justify-content-between">
                            <h5 class="mb-0">Author Module</h5>
                        </div>
                    </div>
                    <a href="{{ route('user.add') }}" class="list-group-item"><i class="bi bi-box-seam"></i>Add
                        Author</a>
                    <a href="{{ route('user.manage') }}" class="list-group-item"><i class="bi bi-box-seam"></i>Manage
                        Author</a>
                </div>
            </div>
        </div>
    </div>
</aside>
