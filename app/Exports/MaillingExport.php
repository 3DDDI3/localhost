<?php

namespace App\Exports;

use App\Models\Mailler;
use App\Models\Services\SamotourTour;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithEvents;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Events\AfterExport;
use Maatwebsite\Excel\Concerns\WithStyles;
use PhpOffice\PhpSpreadsheet\Worksheet\Worksheet;
use PhpOffice\PhpSpreadsheet\Style\Color;
use PhpOffice\PhpSpreadsheet\Style\Border;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;
use Maatwebsite\Excel\Concerns\WithColumnWidths;
use Maatwebsite\Excel\Events\BeforeExport;
use Maatwebsite\Excel\Events\AfterSheet;
use PhpOffice\PhpSpreadsheet\Style\Alignment;

class MaillingExport implements FromCollection, WithHeadings, ShouldAutoSize, WithStyles, WithColumnWidths
{
    /**
     * @return \Illuminate\Support\Collection
     */
    public function collection()
    {
        $samotour = collect();

        $samotour->push(SamotourTour::query()
            ->orderBy('created_at', 'desc')
            ->get());

        $samotour->push(SamotourTour::query()
            ->orderBy('created_at', 'desc')
            ->get());

        $samotour->push(SamotourTour::query()
            ->orderBy('created_at', 'desc')
            ->get());

        return $samotour;
    }

    public function headings(): array
    {
        return [
            '№',
            'Имя',
            'Тип пользователя',
            'Город',
            'Email',
            'Дата'
        ];
    }

    public function columnWidths(): array
    {
        return [
            'A' => 5,
            'B' => 20,
            'C' => 30,
            'D' => 30,
            'E' => 30
        ];
    }

    public function styles(Worksheet $sheet)
    {
        return [
            // Style the first row as bold text.
            'A1' => ['font' => ['bold' => true, 'size' => 14]],

            // Styling a specific cell by coordinate.
            'B1' => ['font' => ['bold' => true, 'size' => 14]],

            // Styling an entire column.
            'C1'  => ['font' => ['bold' => true, 'size' => 14]],

            'D1'  => ['font' => ['bold' => true, 'size' => 14]],

            'E1'  => ['font' => ['bold' => true, 'size' => 14]],

            'F1'  => ['font' => ['bold' => true, 'size' => 14]],
        ];
    }
}
