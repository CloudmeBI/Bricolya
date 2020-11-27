<?php

use App\Product;

$refsData = collect([
    [
        "ref" => "MC 1824", "quantity" => 1,
        "sub" => ["ref" => "MC1303", "quantity" => 1],
    ],
    [
        "ref" => "MC 1844", "quantity" => 1,
        "sub" => ["ref" => "MC1303", "quantity" => 1],
    ],
    [
        "ref" => "MC 1717", "quantity" => 2,
        "sub" => ["ref" => "MC1518", "quantity" => 1],
    ],
    [
        "ref" => "ARTESDB", "quantity" => 1,
        "sub" => ["ref" => "MC1613-3", "quantity" => 1],
    ],
    [
        "ref" => "STME27P", "quantity" => 1,
        "sub" => ["ref" => "MC1613-4", "quantity" => 1],
    ],
    [
        "ref" => "MSTBCS-04", "quantity" => 1,
        "sub" => ["ref" => "MC1613-5", "quantity" => 1],
    ],
    [
        "ref" => "SNRF2SL", "quantity" => 2,
        "sub" => ["ref" => "ARTKSP", "quantity" => 1],
    ],
    [
        "ref" => "MC 1526", "quantity" => 1,
        "sub" => ["ref" => "MC12-19", "quantity" => 1],
    ],
    [
        "ref" => "MSTBCM-04", "quantity" => 1,
        "sub" => ["ref" => "MC1613-3", "quantity" => 1],
    ],
    [
        "ref" => "MC 1528", "quantity" => 1,
        "sub" => ["ref" => "MC12-18", "quantity" => 1],
    ],
    [
        "ref" => "MC 1832-70", "quantity" => 2,
        "sub" => ["ref" => "MC1831-L40", "quantity" => 1],
    ],
    [
        "ref" => "MC 1831-80", "quantity" => 2,
        "sub" => ["ref" => "MC1831-L50", "quantity" => 1],
    ],
    [
        "ref" => "MC 1832-90", "quantity" => 2,
        "sub" => ["ref" => "MC1831-L60", "quantity" => 1],
    ],
    [
        "ref" => "DIS8081BH", "quantity" => 1,
        "sub" => ["ref" => "MC1613-3", "quantity" => 1],
    ],
    [
        "ref" => "DIS8081BL", "quantity" => 1,
        "sub" => ["ref" => "MC1613-4", "quantity" => 1],
    ],
    [
        "ref" => "DIS 8081B", "quantity" => 1,
        "sub" => ["ref" => "MC1613-5", "quantity" => 1],
    ],
    [
        "ref" => "INNP AP SOL 2", "quantity" => 1,
        "sub" => ["ref" => "INNO LED 9WE27", "quantity" => 2],
    ],
    [
        "ref" => "INNO PR CLR", "quantity" => 1,
        "sub" => ["ref" => "INNO LED 9WE27", "quantity" => 2],
    ],
    [
        "ref" => "PRO RC", "quantity" => 2,
        "sub" => ["ref" => "INNO LED 30WE27", "quantity" => 2],
    ],
    [
        "ref" => "INNO BL SC 7681", "quantity" => 1,
        "sub" => ["ref" => "INNO LED 9WE27", "quantity" => 2],
    ],
    [
        "ref" => "VSTE CHN", "quantity" => 1,
        "sub" => ["ref" => "VSTE MSH 10", "quantity" => 10],
    ],
    [
        "ref" => "VSTE ML EL", "quantity" => 1,
        "sub" => ["ref" => "VSTE DSQ 115X6.0 ", "quantity" => 5],
    ],
    [
        "ref" => "VSTE VIS/BT/CHR", "quantity" => 2,
        "sub" => ["ref" => "VSTE VIS 4X20 ", "quantity" => 2],
    ],
    [
        "ref" => "VSTE VIS/BT/NR", "quantity" => 2,
        "sub" => ["ref" => "VSTE VIS 4X20 ", "quantity" => 2],
    ],
    [
        "ref" => "VSTE VS1 GM", "quantity" => 1,
        "sub" => ["ref" => "VSTE VIS 4X20 ", "quantity" => 2],
    ],
    [
        "ref" => "VSTE VS1 PM", "quantity" => 1,
        "sub" => ["ref" => "VSTE VIS 4X20 ", "quantity" => 2],
    ],
]);

$refsData->map(fn($refData) => (Product::where('ref', 'like', $refData["sub"]["ref"])->first() && Product::where('ref', 'like', $refData["ref"])->first()) ? ([
    "title" => Product::where('ref', 'like', $refData["ref"])->first()->name ?? $refData["ref"],
    "conditions" => ["type" => "product_bought", "quantity" => $refData["quantity"]],
    "data" => ["quantity" => $refData["sub"]["quantity"], "product_id" => Product::where('ref', 'like', $refData["sub"]["ref"])->first()->id ?? null],
    "product_id" => Product::where('ref', 'like', $refData["ref"])->first()->id ?? null,
]) : null);

// -------------

$results = [
    [
        "title" => "ENSEMBLE DE CLEF PLAT CRENEAU 7 PIECES",
        "conditions" => [
            "type" => "product_bought",
            "quantity" => 1,
        ],
        "data" => [
            "quantity" => 1,
            "product_id" => 329,
        ],
        "product_id" => 452,
    ],
    [
        "title" => "ENSEMBLE DE CLEF A PIPE POWER",
        "conditions" => [
            "type" => "product_bought",
            "quantity" => 1,
        ],
        "data" => [
            "quantity" => 1,
            "product_id" => 329,
        ],
        "product_id" => 467,
    ],
    [
        "title" => "ENSEMBLE S.D.B NS123781",
        "conditions" => [
            "type" => "product_bought",
            "quantity" => 1,
        ],
        "data" => [
            "quantity" => 1,
            "product_id" => 373,
        ],
        "product_id" => 155,
    ],
    [
        "title" => "ENSEMBLE 123052- 5PIECE DI BANYO",
        "conditions" => [
            "type" => "product_bought",
            "quantity" => 1,
        ],
        "data" => [
            "quantity" => 1,
            "product_id" => 374,
        ],
        "product_id" => 545,
    ],
    [
        "title" => "FLEXIBLE 1.5M BLISTER IFOULKI",
        "conditions" => [
            "type" => "product_bought",
            "quantity" => 2,
        ],
        "data" => [
            "quantity" => 1,
            "product_id" => 92,
        ],
        "product_id" => 544,
    ],
    [
        "title" => "ENSEMBLE DE LIMES",
        "conditions" => [
            "type" => "product_bought",
            "quantity" => 1,
        ],
        "data" => [
            "quantity" => 1,
            "product_id" => 324,
        ],
        "product_id" => 359,
    ],
    [
        "title" => "DOUCHETTE+FLEXIBLE BIDALUX BCM-04",
        "conditions" => [
            "type" => "product_bought",
            "quantity" => 1,
        ],
        "data" => [
            "quantity" => 1,
            "product_id" => 373,
        ],
        "product_id" => 482,
    ],
    [
        "title" => "ENSEMBLE 121072 7PIECES+MIROIR",
        "conditions" => [
            "type" => "product_bought",
            "quantity" => 1,
        ],
        "data" => [
            "quantity" => 1,
            "product_id" => 373,
        ],
        "product_id" => 228,
    ],
    [
        "title" => "APPLIQUE SOLAIRE2X2",
        "conditions" => [
            "type" => "product_bought",
            "quantity" => 1,
        ],
        "data" => [
            "quantity" => 2,
            "product_id" => 573,
        ],
        "product_id" => 578,
    ],
    [
        "title" => "PROJECTEUR RVA COULEUR",
        "conditions" => [
            "type" => "product_bought",
            "quantity" => 1,
        ],
        "data" => [
            "quantity" => 2,
            "product_id" => 573,
        ],
        "product_id" => 579,
    ],
    [
        "title" => "BLOC SECOURS LAMPE 7681",
        "conditions" => [
            "type" => "product_bought",
            "quantity" => 1,
        ],
        "data" => [
            "quantity" => 2,
            "product_id" => 573,
        ],
        "product_id" => 580,
    ],
    [
        "title" => "CHINIEUL",
        "conditions" => [
            "type" => "product_bought",
            "quantity" => 1,
        ],
        "data" => [
            "quantity" => 10,
            "product_id" => 604,
        ],
        "product_id" => 606,
    ],
];

collect($results)->each(function ($item) {
    // print($item["title"] . "\n");
    $flashDeal = FlashDeal::create([
        "title" => $item["title"],
        "status" => 1,
        "featured" => 1,
        "conditions" => $item["conditions"],
        "data" => $item["data"],
        "product_id" => $item["product_id"],
    ]);
    FlashDealProduct::create([
        "flash_deal_id" => $flashDeal->id,
        "product_id" => $item["data"]["product_id"],
        "discount" => 100,
        "discount_type" => "precent",
    ]);
});
