<?php

namespace App\View\Components\Admin\Controls;

use Illuminate\View\Component;

class Datepicker extends Component
{
    public function __construct() {}

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        return view('components.admin.controls.datepicker');
    }
}
