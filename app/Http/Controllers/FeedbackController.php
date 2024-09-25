<?php

namespace App\Http\Controllers;

use App\Http\Requests\FeedbackCreateRequest;
use App\Mail\FeedbackMail;
use App\Models\Requests;
use Illuminate\Support\Facades\Mail;

class FeedbackController extends Controller
{
    public function create(FeedbackCreateRequest $request)
    {
        $request->validated();

        $requests = Requests::create([
            'name' => $request->name,
            'phone' => $request->phone,
            'email' => $request->email,
            'range' => $request->input('range'),
            'from' => $request->from,
            'to' => $request->to,
            'nights' => $request->nights,
            'budget' => $request->cost,
            'tourist_count' => $request->tourist,
            'description' => $request->text,
        ]);

        Mail::to(config('mail.from.address'))->send(new FeedbackMail($requests));

        return response()->json(['message' => 'Мы свяжемся с вами в ближайшее время'], 200);
    }
}
