<ul @class(['navbar-nav', $navbarClass ?? null])>
    @php
        $dashboardMenus = DashboardMenu::getAll();
        unset($dashboardMenus['cms-core-plugins']);
    @endphp
{{--    @foreach (DashboardMenu::getAll() as $menu)--}}
    @foreach ($dashboardMenus as $menu)
        @include('core/base::layouts.partials.navbar-nav-item', [
            'menu' => $menu,
            'autoClose' => $autoClose,
            'isNav' => true,
        ])
    @endforeach
</ul>

