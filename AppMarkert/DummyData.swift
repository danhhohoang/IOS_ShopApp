//
//  DummyData.swift
//  AppMarkert
//
//  Created by Hoang Danh on 19/05/2023.
//

import Foundation

struct Dumydata {
    
    static let Baskets = Basket(id: UUID().uuidString, items: [])
    static let Users = User(id: UUID().uuidString, name: "Danh", address: "Thu Duc", mobile: "0914949467")
    static let Moblies: [Mobile] = [
        Mobile(id: UUID().uuidString,
               name: "Iphone 14 pro",
               description: "Cụ thể, iPhone 14 thường vẫn được trang bị màn hình Super Retina XDR OLED với kích thước 6.1 inch. Đây vẫn là kiểu màn hình tai thỏ quen thuộc. Độ phân giải 1170 x 2532 pixels, mật độ điểm ảnh 460 ppi, tần số quét 60Hz, gần như các thông số, tính năng vẫn được giữ nguyên.",
               ImageLink: "https://i0.wp.com/abizot.com.ng/wp-content/uploads/2022/09/Apple-iPhone-14-%E2%80%93-Dual-128GBgd.png?fit=857%2C1200&ssl=1",
               price: 29790000,
               category: Category.mobile),
        Mobile(id: UUID().uuidString,
               name: "OPPO Find N2 Flip 5G",
               description: "OPPO Find N2 Flip, chiếc điện thoại gập đầu tiên của OPPO được giới thiệu chính thức vào tháng 03/2023. Với cấu hình mạnh mẽ bao gồm con chip Dimensity 9000+ và bộ camera nổi trội, đây được xem là một trong những mẫu điện thoại đáng chú ý ở thời điểm hiện tại khi sở hữu bộ cấu hình tốt trong tầm giá.",
               ImageLink: "https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/42/299034/oppo-find-n2-flip-purple-thumb-1-600x600-1-600x600.jpg",
               price: 19990000,
               category: Category.mobile),
        Mobile(id: UUID().uuidString,
               name: "OPPO A57 128GB",
               description: "OPPO đã bổ sung thêm vào dòng sản phẩm OPPO A giá rẻ một thiết bị mới có tên OPPO A57 128GB. Khác với mẫu A57 5G đã được ra mắt trước đó, điện thoại dòng A mới có màn hình HD+, camera chính 13 MP và pin 5000 mAh.",
               ImageLink: "https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/42/285082/oppo-a57-den-thumb-600x600.jpeg",
               price: 4990000,
               category: Category.mobile),
        Mobile(id: UUID().uuidString,
               name: "Laptop MSI Gaming GF63 Thin 11SC i5",
               description: "Mang trong mình sức mạnh hiệu năng của bộ vi xử lý Intel Core i5 dòng H mạnh mẽ và card đồ họa rời NVIDIA GeForce GTX, laptop MSI Gaming GF63 Thin 11SC i5 (664VN) có khả năng chiến game nặng và thiết kế đồ họa một cách mượt mà.",
               ImageLink: "https://cdn.tgdd.vn/Products/Images/44/303500/TimerThumb/msi-gaming-gf63-thin-11sc-i5-664vn-(10).jpg",
               price: 16490000,
               category: Category.laptop),
        Mobile(id: UUID().uuidString,
               name: "Laptop Dell Vostro 5620 i5",
               description: "Laptop Dell Vostro 5620 i5 1240P (70296963) là mẫu laptop học tập - văn phòng sở hữu cấu hình mạnh mẽ khi được trang bị Intel Core i5 thế hệ 12, card màn hình NVIDIA GeForce MX570 cùng thiết kế hiện đại, chắc chắn sẽ là chiếc laptop không thể bỏ lỡ.",
               ImageLink: "https://cdn.tgdd.vn/Products/Images/44/292592/dell-vostro-5620-i5-70296963-thumb-laptop-600x600.jpg",
               price: 21990000,
               category: Category.laptop),
        Mobile(id: UUID().uuidString,
               name: "Laptop HP Elitebook Dragonfly G3 i7",
               description: "Laptop HP Elitebook Dragonfly G3 i7 1255U (6Z980PA) thuộc dòng sản phẩm laptop cao cấp - sang trọng của nhà sản xuất HP, mang những đặc tính thiết kế nhằm đáp ứng cho nhu cầu của đối tượng người dùng thường xuyên di chuyển, cần một chiếc máy có tính di động cao đồng thời sở hữu cấu hình mạnh mẽ, ngoại hình thời thượng.",
               ImageLink: "https://cdn.tgdd.vn/Products/Images/44/302984/hp-elitebook-dragonfly-g3-i7-6z980pa-070323-114211-600x600.jpg",
               price: 47490000,
               category: Category.laptop),
        Mobile(id: UUID().uuidString,
               name: "iPad Pro M1 11 inch WiFi 2TB (2021)",
               description: "Máy tính bảng iPad Pro M1 11 inch WiFi 2TB (2021) được giới thiệu với 2 màu xám và bạc hiện đại, chất liệu nhôm nguyên khối sang trọng cùng thiết kế thanh lịch, tinh tế, phù hợp trong mọi không gian sử dụng.",
               ImageLink: "https://cdn.tgdd.vn/Products/Images/522/269328/ipad-pro-m1-11-inch-wifi-2tb-2021-bac-thumb-600x600.jpeg",
               price: 44990000,
               category: Category.tablet),
        Mobile(id: UUID().uuidString,
               name: "Samsung Galaxy Tab S8 Ultra 5G",
               description: "Samsung Galaxy Tab S8 Ultra ra mắt với kích thước màn hình siêu to cùng một cấu hình mạnh mẽ, được xem là thiết bị phù hợp đối với những ai thường xuyên làm các công việc thiết kế hay thao tác trên trình duyệt web, bên cạnh đó Tab S8 Ultra còn mang đến những trải nghiệm tương tự một chiếc laptop khi sử dụng kèm với bàn phím.",
               ImageLink: "https://cdn.tgdd.vn/Products/Images/522/247513/samsung-tab-s8-ultra-thumb-600x600.jpg",
               price: 30990000,
               category: Category.tablet),
        Mobile(id: UUID().uuidString,
               name: "OPPO Pad Air 128GB",
               description: "OPPO Pad Air 128GB là một máy tính bảng đáng chú ý, được thiết kế để đáp ứng nhu cầu đa dạng của người dùng. Với một số thông tin nổi bật như màn hình lớn và hiệu năng ổn định, OPPO Pad Air có thể là lựa chọn tuyệt vời cho những người dùng cần một máy tính bảng đa năng và tiện lợi.",
               ImageLink: "https://cdn.tgdd.vn/Products/Images/522/305838/oppo-pad-air-128gb-thumbnew-600x600.jpeg",
               price: 790000,
               category: Category.tablet),
    ]
}
