<?php

namespace App\View\Components\Admin\Controls;

use Illuminate\View\Component;

class Datepicker extends Component
{

    // protected $except = ['id'];

    /**
     * Create a new component instance.
     *
     * @return void
     */
    public function __construct(public int $id, public string $placeholder) {}

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
