let titles_type = ["Dataset", "Survey", "Review", "Overview"];
let titles_model = ["Humanoid", "Bipedal", "World Model", "Legged", "VLA"];
let titles_method = ["Pre-train", "Pretrain", "Prompt", "Self-Supervised"];
let titles =  titles_model + titles_method + titles_type;
let authors_array = ["Yann LeCun", "Geoffrey Hinton", "Roland Siegwart", "Maurice Fallon", "Yan Gu", "Guanya Shi", "Shuran Song", "Hao Su", "Xiaolong Wang", "Xuebin Peng", "Fei Gao", "Marco Hutter", ];

let conferences = [
    // AI
    "AAAI", "AAMAS", "ACM MM", "AISTATS", "ALT", "CEC", "ECAI", "FUZZ IEEE", "GECCO", "ICANN", "ICAPS", "ICCBR", "ICONIP", "ICRA", "ICTAI", "IJCAI", "IJCNN", "IROS", "KR", "KSEM", "SIGGRAPH", "STOC", "UAI", "PPSN", "PRICAI", "TAAI",
    // CV
    "3DV", "ACCV", "ACM MM", "BMVC", "CVPR", "ECCV", "ICCV", "ICDAR", "ICIP", "ICME", "ICPR", "IEEE VIS", "MICCAI", "SIGGRAPH", "WACV",
    // ML
    "ICLR", "ICML", "ML4H", "NeurIPS", "NIPS",
    // Robotic
    "ICRA", "IROS", "Humanoids", "RSS"
];

let start = conferences.shift();
let conferences_rg = conferences.reduce(|sum, v| sum + "|" + v, start);
let conferences_rg = "(" + conferences_rg + ")([\\s'-]*\\d+)?";

let start = titles.shift();
let title_rg = titles.reduce(|sum, v| sum + "|" + v, start);

let start = authors_array.shift();
let authors_rg = authors_array.reduce(|sum, v| sum + "|" + v, start);

export title_rg;
export authors_rg;
export conferences_rg;
