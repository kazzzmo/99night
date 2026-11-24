-- Voidware VI / EN | Mobile Lite V4 | Local UI translation + startup credit + Discord copy
-- Default: Vietnamese. Original title and theme unchanged.
-- Scope: menu text + TextBox placeholder only; no gameplay logic changed.
-- Not tested in Roblox / Delta. The upstream loader is remote and may change.
-- Run this file once. If Voidware is already open, the wrapper attaches to it.
local DICT = {
    ["Information"] = "Thông tin",
    ["Fun"] = "Giải trí",
    ["Main"] = "Chính",
    ["Auto"] = "Tự động",
    ["Update Focused"] = "Cập nhật sự kiện",
    ["Day Farm"] = "Farm ngày",
    ["Auto Stronghold"] = "Tự động pháo đài",
    ["Bring Stuff"] = "Thu gom vật phẩm",
    ["Performance"] = "Hiệu năng",
    ["Teleport"] = "Dịch chuyển",
    ["Visuals"] = "Hiển thị",
    ["Local Player"] = "Nhân vật",
    ["Misc"] = "Khác",
    ["Miscellaneous"] = "Khác",
    ["Theme"] = "Giao diện",
    ["Config"] = "Cấu hình",
    ["Search..."] = "Tìm kiếm...",
    ["Search"] = "Tìm kiếm",
    ["Tìm Kiếm"] = "Tìm kiếm",
    ["Reveal Map"] = "Mở toàn bộ bản đồ",
    ["Loops you in circle around the map to let everything load 🔥 Must upgrade the fire constantly or the map won't load!"] = "Di chuyển vòng quanh bản đồ để tải mọi khu vực 🔥 Phải liên tục nâng cấp lửa để bản đồ tải đầy đủ!",
    ["Teleport All Trees"] = "Dịch chuyển tất cả cây",
    ["Teleport All BIG Trees"] = "Dịch chuyển tất cả cây lớn",
    ["Patched"] = "Đã bị vá",
    ["Teleport All Chests"] = "Dịch chuyển tất cả rương",
    ["Teleport All Children [BETA]"] = "Dịch chuyển tất cả trẻ em [BETA]",
    ["Teleport Entities"] = "Dịch chuyển thực thể",
    ["Teleport The Entities"] = "Dịch chuyển các thực thể",
    ["Freeze the movement of something :3"] = "Đóng băng chuyển động của đối tượng :3",
    ["Freeze The Thingys"] = "Đóng băng các đối tượng",
    ["Boar"] = "Lợn rừng",
    ["Jungle Cultist"] = "Giáo đồ rừng rậm",
    ["Darkstring Cultist"] = "Giáo đồ Darkstring",
    ["Shadow Cultist"] = "Giáo đồ bóng tối",
    ["Brutal Cultist"] = "Giáo đồ tàn bạo",
    ["Kiwi"] = "Chim Kiwi",
    ["Mossy Wolf"] = "Sói phủ rêu",
    ["Turret"] = "Tháp súng",
    ["Impostor Santa"] = "Ông già Noel giả mạo",
    ["Turkey"] = "Gà tây",
    ["FrogKing"] = "Vua ếch",
    ["Frog"] = "Ếch",
    ["Scorpion"] = "Bọ cạp",
    ["Hellephant"] = "Voi địa ngục",
    ["Nail"] = "Đinh",
    ["FrogBlue"] = "Ếch xanh dương",
    ["FrogPurple"] = "Ếch tím",
    ["Wolf"] = "Sói",
    ["Bear"] = "Gấu",
    ["Bunny"] = "Thỏ",
    ["Mammoth"] = "Voi ma mút",
    ["Cultist"] = "Giáo đồ",
    ["Crossbow Cultist"] = "Giáo đồ dùng nỏ",
    ["Juggernaut Cultist"] = "Giáo đồ giáp nặng",
    ["Alpha Wolf"] = "Sói đầu đàn",
    ["Alien"] = "Người ngoài hành tinh",
    ["Alien Elite"] = "Người ngoài hành tinh tinh nhuệ",
    ["Infinte Saplings"] = "Cây non vô hạn",
    ["Infinite Saplings"] = "Cây non vô hạn",
    ["Infinite Saplings Exploit!"] = "Cây non vô hạn!",
    ["Spam Plant"] = "Trồng cây liên tục",
    ["Restart Exploit"] = "Khởi động lại tính năng",
    ["This fixes most bugs in case the inf saplings bugs out :D"] = "Khắc phục phần lớn lỗi khi cây non vô hạn gặp sự cố :D",
    ["Entity Godmode"] = "Bất tử trước thực thể",
    ["Become Invincible"] = "Trở nên bất tử",
    ["Makes you unhitable by other entities You also can't die from hunger 🔥"] = "Thực thể khác không thể đánh trúng bạn, bạn cũng không thể chết vì đói 🔥",
    ["Enabled"] = "Đã bật",
    ["Enable"] = "Bật",
    ["Disabled"] = "Đã tắt",
    ["Disable"] = "Tắt",
    ["Hip Height Changer"] = "Điều chỉnh độ cao nhân vật",
    ["Aura"] = "Hào quang",
    ["Kill Aura"] = "Tự động tấn công xung quanh",
    ["Ice Aura"] = "Hào quang băng",
    ["Ore Aura"] = "Tự động khai thác quặng",
    ["Range Circle"] = "Vòng hiển thị phạm vi",
    ["RangeCircleColor"] = "Màu vòng phạm vi",
    ["Killaura Targets"] = "Mục tiêu tự động tấn công",
    ["Aura Range"] = "Phạm vi hào quang",
    ["Require Hand Check"] = "Yêu cầu cầm công cụ",
    ["If disabled, it will let all Auras to work without you holding any tool 🔥"] = "Nếu tắt, mọi hào quang sẽ hoạt động mà không cần cầm công cụ 🔥",
    ["Auto TP to Targets"] = "Tự động dịch chuyển đến mục tiêu",
    ["Tree Farm"] = "Farm gỗ",
    ["Auto Chop Trees"] = "Tự động chặt cây",
    ["Auto Chop Tree Type"] = "Loại cây tự động chặt",
    ["Auto Chop Trees Range"] = "Phạm vi chặt cây",
    ["Auto Plant Saplings"] = "Tự động trồng cây non",
    ["Chop Status Visualiser"] = "Hiển thị trạng thái chặt cây",
    ["Small"] = "Nhỏ",
    ["Big"] = "Lớn",
    ["Auto Eat"] = "Tự động ăn",
    ["Auto Eat Food"] = "Thức ăn tự động ăn",
    ["Eat When Hunger Below"] = "Ăn khi độ no dưới",
    ["Auto Bandage"] = "Tự động dùng băng gạc",
    ["MedKit included"] = "Bao gồm túi cứu thương",
    ["Heal When Below"] = "Hồi máu khi dưới",
    ["Hitbox Expansion"] = "Mở rộng vùng va chạm",
    ["Enable Hitbox Expansion"] = "Bật mở rộng vùng va chạm",
    ["Hitbox Size Multiplier"] = "Hệ số kích thước vùng va chạm",
    ["Security"] = "Bảo mật",
    ["Anti AFK"] = "Chống treo máy",
    ["Instant Open Chests"] = "Mở rương tức thì",
    ["Auto TP to Camp at Night"] = "Tự động về trại khi trời tối",
    ["Pickup All Flowers"] = "Nhặt tất cả hoa",
    ["Collect All Gold Stacks"] = "Thu thập tất cả chồng vàng",
    ["Auto Stun"] = "Tự động làm choáng",
    ["Range"] = "Phạm vi",
    ["Monster Choice"] = "Chọn quái vật",
    ["Ram"] = "Cừu đực",
    ["Bring Flashlights"] = "Thu gom đèn pin",
    ["Auto Crock Pot"] = "Tự động nấu ăn",
    ["Food Choice"] = "Chọn thức ăn",
    ["Bring Food To Cook Pot"] = "Đưa thức ăn vào nồi nấu",
    ["Auto Campfire"] = "Tự động lửa trại",
    ["Fuel Type"] = "Loại nhiên liệu",
    ["Auto Fill Campfire"] = "Tự động tiếp nhiên liệu lửa trại",
    ["Start Fueling when (Fire HP)"] = "Tiếp nhiên liệu khi mức lửa dưới",
    ["Auto Scrap Logs"] = "Tự động tái chế gỗ",
    ["Auto Scrap Gears"] = "Tự động tái chế linh kiện",
    ["Auto Collect"] = "Tự động thu thập",
    ["Auto Pickup Flowers"] = "Tự động nhặt hoa",
    ["Auto Collect Coin Stacks"] = "Tự động thu thập chồng xu",
    ["Auto Open Seed Boxes"] = "Tự động mở hộp hạt giống",
    ["Auto Chest [BETA]"] = "Tự động mở rương [BETA]",
    ["Bring Location"] = "Vị trí tập kết",
    ["Loot Mode"] = "Chế độ nhặt đồ",
    ["Loot Radius"] = "Bán kính nhặt đồ",
    ["Chest Delay (sec)"] = "Độ trễ mở rương (giây)",
    ["Player"] = "Người chơi",
    ["Safe"] = "An toàn",
    ["Plant & Build Stuff"] = "Trồng cây & xây dựng",
    ["Plant/Build Radius"] = "Bán kính trồng/xây dựng",
    ["Angle Increment"] = "Bước tăng góc",
    ["Plant Height"] = "Độ cao trồng cây",
    ["Easter Update"] = "Cập nhật Phục Sinh",
    ["NEW"] = "MỚI",
    ["Easter Egg Choice"] = "Chọn trứng Phục Sinh",
    ["Bring Easter Eggs"] = "Thu gom trứng Phục Sinh",
    ["Enable Egg Hunter Class"] = "Bật lớp thợ săn trứng",
    ["Deposit All Easter Eggs"] = "Nộp tất cả trứng Phục Sinh",
    ["Fill Up Egg Basket"] = "Lấp đầy giỏ trứng",
    ["Teleport To Easter Bunny House"] = "Dịch chuyển đến nhà thỏ Phục Sinh",
    ["Easter Egg Teleport"] = "Dịch chuyển đến trứng Phục Sinh",
    ["Teleport To Chosen Easter Egg"] = "Dịch chuyển đến trứng đã chọn",
    ["Basic"] = "Cơ bản",
    ["Jungle Update"] = "Cập nhật rừng rậm",
    ["Bring Skull Keys (bypasses all temples)"] = "Thu gom chìa khóa đầu lâu (bỏ qua mọi đền)",
    ["Useful for the jungle mini temples!"] = "Hữu ích cho các đền nhỏ trong rừng rậm!",
    ["[OP] Disable ALL temple spikes!"] = "[OP] Tắt toàn bộ gai trong đền!",
    ["[OP] Disable Arrow Traps"] = "[OP] Tắt bẫy mũi tên",
    ["[FREE] Disable Dropping Tiles"] = "[MIỄN PHÍ] Tắt gạch sập",
    ["[OP] Disable Spike Traps"] = "[OP] Tắt bẫy gai",
    ["Disable Quicksand slowmode [FREE]"] = "Tắt làm chậm do cát lún [MIỄN PHÍ]",
    ["TP Choice"] = "Chọn điểm dịch chuyển",
    ["Teleport to selected structure"] = "Dịch chuyển đến công trình đã chọn",
    ["Jungle"] = "Rừng rậm",
    ["Valentines Update"] = "Cập nhật Lễ Tình Nhân",
    ["Open Bouquet Creator"] = "Mở công cụ tạo bó hoa",
    ["Bring Choice"] = "Chọn vật phẩm thu gom",
    ["Bring Selected Items"] = "Thu gom vật phẩm đã chọn",
    ["Bring Selected Vật phẩm"] = "Thu gom vật phẩm đã chọn",
    ["Instant Take Flower"] = "Nhặt hoa tức thì",
    ["Teleport To"] = "Dịch chuyển đến",
    ["Teleport to selected place"] = "Dịch chuyển đến nơi đã chọn",
    ["White"] = "Trắng",
    ["Valentine"] = "Lễ Tình Nhân",
    ["Hard Mode Update"] = "Cập nhật chế độ khó",
    ["Hard Mode Status"] = "Trạng thái chế độ khó",
    ["Corruption"] = "Mức tha hóa",
    ["Rifts"] = "Khe nứt",
    ["Teleport to Research Outpost"] = "Dịch chuyển đến tiền đồn nghiên cứu",
    ["Rift Teleport"] = "Dịch chuyển đến khe nứt",
    ["Teleport To Chosen Rift"] = "Dịch chuyển đến khe nứt đã chọn",
    ["Teleport to Camp"] = "Dịch chuyển về trại",
    ["FullBright"] = "Tăng độ sáng",
    ["Useful for dark places"] = "Hữu ích tại những nơi tối",
    ["Killaura"] = "Tự động tấn công xung quanh",
    ["TreeAura"] = "Tự động chặt cây xung quanh",
    ["Corrupted Big Trees are targeted automatically :D"] = "Tự động nhắm đến cây lớn bị tha hóa :D",
    ["Open All Chests via Auto Chest"] = "Mở mọi rương bằng tính năng tự động mở rương",
    ["By opening all chests you have a chance of getting Chainsaw to help you with the trees 🌳"] = "Mở mọi rương để có cơ hội nhận cưa máy hỗ trợ chặt cây 🌳",
    ["Tạo bởi opening all chests you have a chance of getting Chainsaw to help you with the trees 🌳"] = "Mở mọi rương để có cơ hội nhận cưa máy hỗ trợ chặt cây 🌳",
    ["Fairy Update"] = "Cập nhật tiên nữ",
    ["Teleport to Fairy Tree"] = "Dịch chuyển đến cây tiên",
    ["Acorn"] = "Quả sồi",
    ["Christmas"] = "Giáng Sinh",
    ["Teleport to random christmas present"] = "Dịch chuyển đến quà Giáng Sinh ngẫu nhiên",
    ["Amazing for farming those presents :D"] = "Rất hữu ích để farm quà :D",
    ["Presents Farm"] = "Farm quà",
    ["Bring All Christmas Lights"] = "Thu gom tất cả đèn Giáng Sinh",
    ["Perfect for decorating pines :D"] = "Hoàn hảo để trang trí cây thông :D",
    ["Teleport to Random Tree with Lights"] = "Dịch chuyển đến cây có đèn ngẫu nhiên",
    ["Use this to get Christmas Lights"] = "Dùng để lấy đèn Giáng Sinh",
    ["Light Random Christmas Pine"] = "Thắp sáng cây thông Giáng Sinh ngẫu nhiên",
    ["Use this with christmas lights :D"] = "Dùng cùng đèn Giáng Sinh :D",
    ["Teleport to Santa's Sack"] = "Dịch chuyển đến túi quà của ông già Noel",
    ["Teleport to Santa's Workshop"] = "Dịch chuyển đến xưởng ông già Noel",
    ["Claim All Gold Stacks"] = "Nhận tất cả chồng vàng",
    ["Automatically claims all gold stacks over the map!"] = "Tự động nhận mọi chồng vàng trên bản đồ!",
    ["Elf Teleport"] = "Dịch chuyển đến yêu tinh",
    ["Teleport To Chosen Elf"] = "Dịch chuyển đến yêu tinh đã chọn",
    ["Classes"] = "Lớp nhân vật",
    ["No idea what else to add to this empty update :/"] = "Chưa biết thêm gì vào bản cập nhật này :/",
    ["No idea what else to add to this empty update ._."] = "Chưa biết thêm gì vào bản cập nhật này ._.",
    ["Enable Explorer Class"] = "Bật lớp nhà thám hiểm",
    ["This enables the explorer class' functions for FREE!"] = "Bật chức năng của lớp nhà thám hiểm MIỄN PHÍ!",
    ["Thanksgiving"] = "Lễ Tạ Ơn",
    ["Teleport to Thanksgiving Plot"] = "Dịch chuyển đến khu Lễ Tạ Ơn",
    ["You can also use the Fishing exploits by searching for the 'Fishing' tab :D"] = "Bạn cũng có thể dùng tính năng câu cá bằng cách tìm mục Câu cá :D",
    ["Injured Deer"] = "Hươu bị thương",
    ["Teleport All Food"] = "Dịch chuyển tất cả thức ăn",
    ["Bring Fur Tuft"] = "Thu gom búi lông",
    ["Candy Farm"] = "Farm kẹo",
    ["The most op candy farm ever 🍬 !"] = "Farm kẹo cực mạnh 🍬 !",
    ["Infinite Candy 🍬 🍭"] = "Kẹo vô hạn 🍬 🍭",
    ["Infinite Candy"] = "Kẹo vô hạn",
    ["Server Hop"] = "Đổi máy chủ",
    ["Use this to get as much candy as possible from different games as fast as possible 🍭 !"] = "Dùng để lấy nhiều kẹo nhất có thể từ các máy chủ khác nhau 🍭 !",
    ["Maze"] = "Mê cung",
    ["TP to end"] = "Dịch chuyển đến đích",
    ["Taming"] = "Thuần hóa",
    ["Equip Zookeeper class"] = "Trang bị lớp người chăm sóc thú",
    ["Bring Carrots"] = "Thu gom cà rốt",
    ["Bring Steak"] = "Thu gom thịt bò",
    ["100% Taming Success Rate"] = "Tỷ lệ thuần hóa thành công 100%",
    ["Instant Taming Minigame"] = "Hoàn thành trò thuần hóa tức thì",
    ["Fishing"] = "Câu cá",
    ["Teleport to Fishing Hut"] = "Dịch chuyển đến chòi câu cá",
    ["100% Fishing Success Rate"] = "Tỷ lệ câu cá thành công 100%",
    ["Instant Catch Fish"] = "Bắt cá tức thì",
    ["Day Statistics"] = "Thống kê ngày",
    ["Cultist Attack"] = "Giáo đồ tấn công",
    ["Time"] = "Thời gian",
    ["Cycle"] = "Chu kỳ",
    ["Weather"] = "Thời tiết",
    ["Biome"] = "Quần xã sinh vật",
    ["Real Day"] = "Ngày thực tế",
    ["Day"] = "Ngày",
    ["Night"] = "Đêm",
    ["Clear"] = "Quang đãng",
    ["Volcanic"] = "Núi lửa",
    ["No"] = "Không",
    ["Yes"] = "Có",
    ["Day Farm Status"] = "Trạng thái farm ngày",
    ["Skipped Steps"] = "Các bước bỏ qua",
    ["Start Day Farm"] = "Bắt đầu farm ngày",
    ["Stop Find Task"] = "Dừng tác vụ tìm kiếm",
    ["Map Exploration"] = "Khám phá bản đồ",
    ["Children Rescue"] = "Giải cứu trẻ em",
    ["Children Rescue v2"] = "Giải cứu trẻ em v2",
    ["Buy 3 beds"] = "Mua 3 giường",
    ["Buy 3 Lightning Rods"] = "Mua 3 cột thu lôi",
    ["Buy Crockpot"] = "Mua nồi nấu",
    ["Clean up the Map"] = "Dọn dẹp bản đồ",
    ["Stronghold Statistics"] = "Thống kê pháo đài",
    ["Tracking"] = "Theo dõi",
    ["Status"] = "Trạng thái",
    ["Level"] = "Cấp độ",
    ["Time till open"] = "Thời gian đến khi mở",
    ["Stronghold not found yet :c"] = "Chưa tìm thấy pháo đài :c",
    ["Auto Stronghold Status"] = "Trạng thái tự động pháo đài",
    ["Waiting..."] = "Đang chờ...",
    ["Enable Auto Stronghold"] = "Bật tự động pháo đài",
    ["Stop Auto Stronghold Task"] = "Dừng tác vụ tự động pháo đài",
    ["Bring Settings"] = "Cài đặt thu gom",
    ["Use Freecam for Bring Items"] = "Dùng camera tự do để thu gom vật phẩm",
    ["Use Freecam for Bring Vật phẩm"] = "Dùng camera tự do để thu gom vật phẩm",
    ["Untouchable by Others"] = "Người khác không thể chạm",
    ["Makes the brought items untouchable by other players"] = "Khiến người chơi khác không thể chạm vào vật phẩm đã thu gom",
    ["Bring Method"] = "Phương thức thu gom",
    ["Max Per Item"] = "Số lượng tối đa mỗi loại",
    ["Bring Cooldown"] = "Thời gian chờ thu gom",
    ["No Bring Amount Limit"] = "Không giới hạn số lượng thu gom",
    ["Bring Height"] = "Độ cao tập kết",
    ["Fire"] = "Lửa trại",
    ["Slow"] = "Chậm",
    ["Fast"] = "Nhanh",
    ["Ultra Fast"] = "Siêu nhanh",
    ["Cultist Choice"] = "Chọn giáo đồ",
    ["Bring Cultists"] = "Thu gom giáo đồ",
    ["Bring Meteor Items"] = "Thu gom vật phẩm thiên thạch",
    ["Bring Meteor Vật phẩm"] = "Thu gom vật phẩm thiên thạch",
    ["Items Choice"] = "Chọn vật phẩm",
    ["Raw"] = "Thô",
    ["Bring Fuel [BETA]"] = "Thu gom nhiên liệu [BETA]",
    ["Fuel"] = "Nhiên liệu",
    ["Coal"] = "Than",
    ["Log"] = "Khúc gỗ",
    ["Bring Logs [BETA]"] = "Thu gom khúc gỗ [BETA]",
    ["Bring Food"] = "Thu gom thức ăn",
    ["Food"] = "Thức ăn",
    ["Bring Healing"] = "Thu gom đồ hồi máu",
    ["Healing"] = "Hồi máu",
    ["Bring Gears"] = "Thu gom linh kiện",
    ["Gears"] = "Linh kiện",
    ["Bolt"] = "Bu lông",
    ["Tyre"] = "Lốp xe",
    ["Bring Guns & Armor"] = "Thu gom súng & giáp",
    ["Guns & Armor"] = "Súng & giáp",
    ["Bring Others"] = "Thu gom đồ khác",
    ["Others"] = "Khác",
    ["Other"] = "Khác",
    ["All"] = "Tất cả",
    ["Sweet Potato"] = "Khoai lang",
    ["Stuffing"] = "Nhân nhồi",
    ["Turkey Leg"] = "Đùi gà tây",
    ["Carrot"] = "Cà rốt",
    ["Pumpkin"] = "Bí ngô",
    ["Mackerel"] = "Cá thu",
    ["Salmon"] = "Cá hồi",
    ["Swordfish"] = "Cá kiếm",
    ["Berry"] = "Quả mọng",
    ["Ribs"] = "Sườn",
    ["Stew"] = "Món hầm",
    ["Steak Dinner"] = "Bữa ăn bít tết",
    ["Morsel"] = "Miếng thịt nhỏ",
    ["Steak"] = "Thịt bò",
    ["Corn"] = "Ngô",
    ["Cooked Morsel"] = "Miếng thịt nhỏ đã nấu",
    ["Cooked Steak"] = "Thịt bò đã nấu",
    ["Chilli"] = "Ớt",
    ["Apple"] = "Táo",
    ["Cake"] = "Bánh ngọt",
    ["Laser"] = "Laser",
    ["Gem of"] = "Viên ngọc của",
    ["Crystal Skull Key"] = "Chìa khóa đầu lâu pha lê",
    ["Poison Claws"] = "Móng vuốt độc",
    ["Impact Grenade"] = "Lựu đạn va chạm",
    ["Christmas Lights"] = "Đèn Giáng Sinh",
    ["Scythe"] = "Lưỡi hái",
    ["Obsidiron Hammer"] = "Búa Obsidiron",
    ["Purple Fur Tuft"] = "Búi lông tím",
    ["Halloween Candle"] = "Nến Halloween",
    ["Candy"] = "Kẹo",
    ["Frog Key"] = "Chìa khóa ếch",
    ["Feather"] = "Lông vũ",
    ["Low GFX"] = "Đồ họa thấp",
    ["Cleanup Big Trees"] = "Dọn cây lớn",
    ["Cleanup Logs"] = "Dọn khúc gỗ",
    ["This delets ALL logs from the map PERMANENTLY!"] = "Xóa VĨNH VIỄN tất cả khúc gỗ khỏi bản đồ!",
    ["Select Structure"] = "Chọn công trình",
    ["Teleport To Selected Structure"] = "Dịch chuyển đến công trình đã chọn",
    ["Other TP"] = "Dịch chuyển khác",
    ["Teleport to Stronghold"] = "Dịch chuyển đến pháo đài",
    ["Teleport to Cultist Generator Base"] = "Dịch chuyển đến căn cứ máy tạo giáo đồ",
    ["Teleport to Stronghold Diamond Chest"] = "Dịch chuyển đến rương kim cương pháo đài",
    ["Teleport to Caravan"] = "Dịch chuyển đến đoàn xe",
    ["Teleport to Fairy"] = "Dịch chuyển đến tiên nữ",
    ["Teleport to Anvil"] = "Dịch chuyển đến đe",
    ["Bank"] = "Ngân hàng",
    ["Fishing Hut"] = "Chòi câu cá",
    ["Cultist Generator Base"] = "Căn cứ máy tạo giáo đồ",
    ["Volcano"] = "Núi lửa",
    ["King Statue"] = "Tượng vua",
    ["Thanksgiving Plot"] = "Khu Lễ Tạ Ơn",
    ["Workshop Foundations"] = "Nền xưởng",
    ["AlienMothership"] = "Tàu mẹ ngoài hành tinh",
    ["AlienCrash_Active"] = "Điểm tàu ngoài hành tinh rơi",
    ["Military Base"] = "Căn cứ quân sự",
    ["Snow Clothing Shop"] = "Cửa hàng đồ giữ ấm",
    ["Testing Facility"] = "Cơ sở thử nghiệm",
    ["ToolWorkshop"] = "Xưởng công cụ",
    ["Fairy House"] = "Nhà tiên",
    ["Characters ESP"] = "Hiển thị vị trí thực thể (ESP)",
    ["Characters"] = "Thực thể",
    ["CharactersEspColor"] = "Màu ESP thực thể",
    ["Characters Items"] = "Chọn thực thể",
    ["Characters Vật phẩm"] = "Chọn thực thể",
    ["ESP Settings"] = "Cài đặt ESP",
    ["Enable Highlight"] = "Bật làm nổi bật",
    ["Show Distance"] = "Hiện khoảng cách",
    ["Fill Transparency"] = "Độ trong suốt phần tô",
    ["Outline Transparency"] = "Độ trong suốt viền",
    ["Text Size"] = "Cỡ chữ",
    ["Self"] = "Bản thân",
    ["FOV"] = "Góc nhìn (FOV)",
    ["Movement"] = "Di chuyển",
    ["Walk Speed"] = "Tốc độ đi bộ",
    ["Speed"] = "Tốc độ",
    ["Tốc Độ"] = "Tốc độ",
    ["Fly"] = "Bay",
    ["Fly Speed"] = "Tốc độ bay",
    ["TP Walk Speed"] = "Tốc độ đi dịch chuyển",
    ["TP Walk"] = "Đi bằng dịch chuyển",
    ["Noclip"] = "Đi xuyên vật thể",
    ["Infinite Jump"] = "Nhảy vô hạn",
    ["Ambient"] = "Môi trường",
    ["Rich Shader"] = "Hiệu ứng đổ bóng đẹp",
    ["Shader Color"] = "Màu đổ bóng",
    ["Lighting Theme"] = "Chủ đề ánh sáng",
    ["Enable Lighting Theme"] = "Bật chủ đề ánh sáng",
    ["Aesthetic Lighting"] = "Ánh sáng thẩm mỹ",
    ["Purple"] = "Tím",
    ["Reset Camera [Might Break your camera!]"] = "Đặt lại camera [Có thể gây lỗi camera!]",
    ["Useful Stuff"] = "Tiện ích",
    ["Fullbright"] = "Tăng độ sáng",
    ["Remove Fog"] = "Xóa sương mù",
    ["Remove Sky"] = "Xóa bầu trời",
    ["Coordinates"] = "Tọa độ",
    ["Show Coordinates"] = "Hiện tọa độ",
    ["Credits"] = "Ghi công",
    ["erchodev#0 - script dev"] = "erchodev#0 - nhà phát triển script",
    ["Select Theme"] = "Chọn giao diện",
    ["Easter"] = "Phục Sinh",
    ["Toggle Window Transparency"] = "Bật/tắt độ trong suốt cửa sổ",
    ["Theme Name"] = "Tên giao diện",
    ["Background Color"] = "Màu nền",
    ["Outline Color"] = "Màu viền",
    ["Text Color"] = "Màu chữ",
    ["Placeholder Text Color"] = "Màu chữ gợi ý",
    ["Update Theme"] = "Cập nhật giao diện",
    ["Save"] = "Lưu",
    ["Saves elements to config"] = "Lưu thiết lập vào cấu hình",
    ["Load"] = "Tải",
    ["Loads elements from config"] = "Tải thiết lập từ cấu hình",
    ["This deletes ALL logs from the map PERMANENTLY!"] = "Xóa VĨNH VIỄN tất cả khúc gỗ khỏi bản đồ!",
    ["☀️ Day Statistics"] = "☀️ Thống kê ngày",
    ["🌅 Day Statistics"] = "🌅 Thống kê ngày",
    ["🌀 Hard Mode Status"] = "🌀 Trạng thái chế độ khó",
    ["Khác"] = "Khác",
    ["Vật phẩm"] = "Vật phẩm",
    ["Items"] = "Vật phẩm",
    ["No idea what else to add to this empty update .-."] = "Chưa biết thêm gì vào bản cập nhật này .-.",
    ["NailI"] = "Đinh",
    ["Naill"] = "Đinh",
    ["MedKit"] = "Túi cứu thương",
    ["Bandage"] = "Băng gạc",
    ["Bring Logs"] = "Thu gom khúc gỗ",
    ["Default"] = "Mặc định",
    ["Small..."] = "Nhỏ...",
    ["Basic..."] = "Cơ bản...",
    ["Raw..."] = "Thô...",
    ["White..."] = "Trắng...",
    ["Valentine..."] = "Lễ Tình Nhân...",
    ["Jungle..."] = "Rừng rậm...",
    ["Laser..."] = "Laser...",
    ["Gem of..."] = "Viên ngọc của...",
    ["Boar,..."] = "Lợn rừng,...",
    ["Ram,..."] = "Cừu đực,...",
    ["Carrot,..."] = "Cà rốt,...",
    ["Coal, Fuel..."] = "Than, Nhiên liệu...",
    ["Log,..."] = "Khúc gỗ,...",
    ["Bolt, Tyre,..."] = "Bu lông, Lốp xe,...",
    ["Stuffing,..."] = "Nhân nhồi,...",
}

local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local env = (type(getgenv) == "function" and getgenv()) or _G
local KEY = "__VOIDWARE_VI_EN_LOCAL_V1"
if type(env[KEY]) == "table" and type(env[KEY].Stop) == "function" then
    pcall(env[KEY].Stop)
end
local state = {active = true, lang = "VI", root = nil}
env[KEY] = state
local records, connections = {}, {}
local bar, buttons, selector
local pending, queue, head, tail = {}, {}, 1, 0
local generation, running = 0, false
-- One cooperative worker; no per-frame scanning or animation.
local MAX_PER_SLICE, SLICE_SECONDS = 28, 0.0025
local originalLoader = "https://raw.githubusercontent.com/VapeVoidware/VW-Add/main/loader.lua"

-- Repair labels already partially translated by the upstream UI.
local canonical = {
    ["Tìm Kiếm"] = "Search", ["Tìm kiếm"] = "Search",
    ["Tìm kiếm..."] = "Search...", ["Khác"] = "Misc",
    ["Tốc Độ"] = "Speed", ["Tốc độ"] = "Speed",
    ["Vật phẩm"] = "Items",
    ["Bring Selected Vật phẩm"] = "Bring Selected Items",
    ["Use Freecam for Bring Vật phẩm"] = "Use Freecam for Bring Items",
    ["Bring Meteor Vật phẩm"] = "Bring Meteor Items",
    ["Characters Vật phẩm"] = "Characters Items",
    ["Tạo bởi opening all chests you have a chance of getting Chainsaw to help you with the trees 🌳"] = "By opening all chests you have a chance of getting Chainsaw to help you with the trees 🌳",
}
local lower = {}
for k,v in pairs(DICT) do lower[string.lower(k)] = v end
local function lookup(s)
    return DICT[s] or lower[string.lower(s)]
end
local function english(s)
    return canonical[s] or s
end
local function trim(s)
    return (s:gsub("^%s+", ""):gsub("%s+$", ""))
end
local function exact(s)
    local t = lookup(s)
    if t then return t end
    local left, middle, right = s:match("^(%s*)(.-)(%s*)$")
    if middle and middle ~= s then
        t = lookup(middle)
        if t then return left .. t .. right end
    end
    return nil
end
local dynamic = {"Time till open", "Cultist Attack", "Corruption", "Real Day", "Tracking", "Weather", "Status", "Biome", "Cycle", "Level", "Rifts", "Time", "Day"}
local function translateLine(line)
    local t = exact(line)
    if t then return t end
    -- Status lines may contain an emoji before the English label.
    for _, key in ipairs(dynamic) do
        local a,b = line:find(key .. ":", 1, true)
        if a and a <= 12 then
            local prefix = line:sub(1,a-1)
            if not prefix:find("[%w]") then
                local value = line:sub(b+1)
                local translated = exact(value) or value
                for _, phrase in ipairs({"Stronghold not found yet :c", "Volcanic", "Clear", "Night", "Day", "No", "Yes"}) do
                    local v = lookup(phrase)
                    if v and translated == value then
                        local pos, e = value:find(phrase,1,true)
                        if pos and not value:sub(pos-1,pos-1):match("%w") and not value:sub(e+1,e+1):match("%w") then
                            translated = value:sub(1,pos-1)..v..value:sub(e+1)
                        end
                    end
                end
                return prefix .. (lookup(key) or key) .. ":" .. translated
            end
        end
    end
    -- Emoji-prefixed headings; don't perform broad substring replacements.
    for _, key in ipairs({"Day Statistics", "Hard Mode Status", "Infinite Candy"}) do
        local a,b = line:find(key,1,true)
        if a and a <= 12 and not line:sub(1,a-1):find("[%w]") then
            return line:sub(1,a-1)..lookup(key)..line:sub(b+1)
        end
    end
    -- Multi-select display, e.g. Carrot, ... . Only known entries are translated.
    if #line <= 160 and (line:find(",",1,true) or line:sub(-3) == "...") then
        local count, known = 0, 0
        local out = line:gsub("[^,]+", function(piece)
            local l,mid,r = piece:match("^(%s*)(.-)(%s*)$")
            if not mid or mid == "" or mid == "..." then return piece end
            count = count + 1
            local ell = mid:sub(-3) == "..."
            local core = ell and mid:sub(1,-4) or mid
            local v = lookup(core)
            if v then
                known = known + 1
                return l .. v .. (ell and "..." or "") .. r
            end
            return piece
        end)
        if count > 0 and count == known then return out end
    end
    return line
end
local function translateUncached(s)
    if #s == 0 or #s > 1600 then return s end
    local t = exact(s)
    if t then return t end
    if s:find("\n",1,true) then
        return (s:gsub("[^\n]+",translateLine))
    end
    return translateLine(s)
end
-- Bounded cache: avoids repeatedly translating identical labels.
local cache, cacheCount = {}, 0
local function desired(s)
    if state.lang == "EN" then return english(s) end
    local cached = cache[s]
    if cached ~= nil then return cached end
    local value = translateUncached(s)
    -- Do not cache changing timers/counters or very large strings.
    if #s <= 256 and not s:find("%d") then
        if cacheCount >= 768 then cache, cacheCount = {}, 0 end
        cache[s], cacheCount = value, cacheCount + 1
    end
    return value
end
local function writeRecord(obj, rec)
    if not state.active or not obj.Parent then return end
    local current = obj[rec.prop]
    if current ~= rec.last then rec.source = current end
    local value = desired(rec.source)
    rec.last = value
    if current ~= value then
        local ok = pcall(function() obj[rec.prop] = value end)
        if not ok then rec.last = current end
    end
end
local function disconnectAll()
    for _,c in ipairs(connections) do c:Disconnect() end
    connections = {}
    for _,r in pairs(records) do if r.conn then r.conn:Disconnect() end end
end
local enqueue
local function process(node)
    if not node.Parent or not state.root or not node:IsDescendantOf(state.root) then return end
    if bar and node:IsDescendantOf(bar) then return end
    local rec = records[node]
    if not rec then
        local prop = node:IsA("TextBox") and "PlaceholderText" or "Text"
        local value = node[prop]
        rec = {prop = prop, source = value, last = value}
        records[node] = rec
        rec.conn = node:GetPropertyChangedSignal(prop):Connect(function()
            if state.active and records[node] == rec and node[prop] ~= rec.last then
                enqueue(node)
            end
        end)
    end
    writeRecord(node,rec)
end
local function startWorker()
    if running or not state.active then return end
    running = true
    local epoch = generation
    task.defer(function()
        while state.active and generation == epoch and head <= tail do
            local started, count = os.clock(), 0
            repeat
                local node = queue[head]
                queue[head] = nil
                head = head + 1
                if node and pending[node] then
                    pending[node] = nil
                    process(node)
                end
                count = count + 1
            until head > tail or count >= MAX_PER_SLICE or os.clock() - started >= SLICE_SECONDS
            if head <= tail then task.wait() end
        end
        if generation == epoch then
            queue, pending, head, tail, running = {}, {}, 1, 0, false
        end
    end)
end
enqueue = function(obj)
    if not state.active or not state.root or not obj.Parent then return end
    if not records[obj] then
        if not (obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox")) then return end
        if bar and (obj == bar or obj:IsDescendantOf(bar)) then return end
    end
    if pending[obj] then return end
    pending[obj] = true
    tail = tail + 1
    queue[tail] = obj
    startWorker()
end
local function refreshBar()
    if not bar or not bar.Parent then return end
    local vi = state.lang == "VI"
    selector.Position = UDim2.fromOffset(vi and 4 or 74,4)
    buttons.VI.TextColor3 = vi and Color3.fromRGB(255,255,255) or Color3.fromRGB(197,174,205)
    buttons.EN.TextColor3 = vi and Color3.fromRGB(197,174,205) or Color3.fromRGB(255,255,255)
end
local function setLanguage(lang)
    if not state.active or (lang ~= "VI" and lang ~= "EN") or state.lang == lang then return end
    state.lang = lang
    refreshBar()
    -- Queue deduplicates rapid taps; processing always uses current language.
    for obj in pairs(records) do enqueue(obj) end
end
local function corner(parent,px)
    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0,px)
    c.Parent = parent
end
local function makeBar(root)
    local f = Instance.new("Frame")
    bar = f -- assign before parenting so own descendants are ignored
    f.Name = "VoidwareLanguageBarLocal"
    f.AnchorPoint = Vector2.new(0.5,0)
    f.Position = UDim2.new(0.5,0,0,10)
    f.Size = UDim2.fromOffset(144,36)
    f.BackgroundColor3 = Color3.fromRGB(40,21,44)
    f.BackgroundTransparency = 0.07
    f.BorderSizePixel = 0
    f.ZIndex = 100
    corner(f,19)
    local stroke = Instance.new("UIStroke")
    stroke.Color = Color3.fromRGB(218,132,196)
    stroke.Thickness = 1
    stroke.Transparency = 0.45
    stroke.Parent = f
    selector = Instance.new("Frame")
    selector.Name = "Selection"
    selector.Size = UDim2.fromOffset(66,28)
    selector.Position = UDim2.fromOffset(4,4)
    selector.BackgroundColor3 = Color3.fromRGB(184,67,145)
    selector.BorderSizePixel = 0
    selector.ZIndex = 101
    selector.Parent = f
    corner(selector,15)
    buttons = {}
    for index,lang in ipairs({"VI","EN"}) do
        local b = Instance.new("TextButton")
        b.Name = lang
        b.Size = UDim2.fromOffset(66,28)
        b.Position = UDim2.fromOffset(index == 1 and 4 or 74,4)
        b.BackgroundTransparency = 1
        b.Text = lang == "VI" and "🇻🇳 VI" or "🇬🇧 EN"
        b.Font = Enum.Font.GothamBold
        b.TextSize = 13
        b.AutoButtonColor = false
        b.ZIndex = 102
        b.Parent = f
        buttons[lang] = b
        local selected = lang
        table.insert(connections,b.Activated:Connect(function() setLanguage(selected) end))
    end
    f.Parent = root
    refreshBar()
end
local function detach(restore)
    disconnectAll()
    if restore then
        for obj,rec in pairs(records) do
            if obj.Parent and obj[rec.prop] == rec.last then
                pcall(function() obj[rec.prop] = rec.source end)
            end
        end
    end
    records = {}
    generation = generation + 1
    pending, queue, head, tail, running = {}, {}, 1, 0, false
    if bar then bar:Destroy(); bar = nil end
    state.root = nil
end
local function attach(root)
    if state.root == root then return end
    if state.root then detach(true) end
    state.root = root
    makeBar(root)
    table.insert(connections,root.DescendantAdded:Connect(enqueue))
    table.insert(connections,root.DescendantRemoving:Connect(function(obj)
        local rec = records[obj]
        if rec then
            records[obj] = nil
            if rec.conn then rec.conn:Disconnect() end
            if obj[rec.prop] == rec.last then pcall(function() obj[rec.prop] = rec.source end) end
        end
        pending[obj] = nil
    end))
    local epoch = generation
    task.defer(function()
        local descendants = root:GetDescendants()
        for i,obj in ipairs(descendants) do
            if not state.active or generation ~= epoch or state.root ~= root then return end
            enqueue(obj)
            if i % 100 == 0 then task.wait() end
        end
    end)
end
function state.Stop()
    if not state.active then return end
    state.active = false
    detach(true)
    if env[KEY] == state then env[KEY] = nil end
end

-- Detect the menu only, not the game interface or unrelated ScreenGuis.
local tabs = {Information=true,Fun=true,Main=true,Auto=true,Performance=true,Teleport=true,Visuals=true,Config=true,["Thông tin"]=true,["Giải trí"]=true,["Hiệu năng"]=true,["Dịch chuyển"]=true,["Cấu hình"]=true}
local function findMenu()
    local containers = {}
    local player = Players.LocalPlayer
    if player then
        local pg = player:FindFirstChildOfClass("PlayerGui")
        if pg then table.insert(containers,pg) end
    end
    if type(gethui) == "function" then
        local ok,h = pcall(gethui)
        if ok and typeof(h) == "Instance" then table.insert(containers,h) end
    end
    table.insert(containers,CoreGui)
    local seen = {}
    for _,container in ipairs(containers) do
        local ok,children = pcall(function() return container:GetChildren() end)
        if ok then
            for _,root in ipairs(children) do
                if root:IsA("ScreenGui") and not seen[root] then
                    seen[root] = true
                    local gotTitle, gotLink, tabCount = false,false,0
                    local success,desc = pcall(function() return root:GetDescendants() end)
                    if success then
                        local foundTabs = {}
                        for index,obj in ipairs(desc) do
                            if obj:IsA("TextLabel") or obj:IsA("TextButton") then
                                local s = trim(obj.Text)
                                if s == "Voidware" then gotTitle = true end
                                if string.lower(s):find("discord.gg/voidware",1,true) then gotLink = true end
                                if tabs[s] and not foundTabs[s] then foundTabs[s]=true; tabCount=tabCount+1 end
                                if (gotTitle or gotLink) and tabCount >= 2 then return root end
                            end
                            if index % 160 == 0 then
                                task.wait()
                                if not state.active then return nil end
                            end
                        end
                        if (gotTitle or gotLink) and tabCount >= 2 then return root end
                    end
                end
            end
        end
    end
    return nil
end

-- Lightweight startup credit: one temporary GUI, no loops or animation.
local function showStartupCredit()
    local gui, signal
    local accepted, finished = false, false
    local listeners = {}
    local ok, err = pcall(function()
        local player = Players.LocalPlayer
        local pg = player and player:FindFirstChildOfClass("PlayerGui")
        if not pg and player then pg = player:WaitForChild("PlayerGui", 3) end
        if not state.active then return end
        gui = Instance.new("ScreenGui")
        gui.Name = "RubuRobloxStartupCredit"
        gui.ResetOnSpawn = false
        gui.DisplayOrder = 10000
        gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        local frame = Instance.new("Frame")
        frame.AnchorPoint = Vector2.new(0.5, 0.5)
        frame.Position = UDim2.fromScale(0.5, 0.5)
        frame.Size = UDim2.new(0.88, 0, 0, 288)
        frame.BackgroundColor3 = Color3.fromRGB(55, 18, 48)
        frame.BorderSizePixel = 0
        frame.Parent = gui
        corner(frame, 18)
        local limit = Instance.new("UISizeConstraint")
        limit.MaxSize = Vector2.new(400, 288)
        limit.Parent = frame
        local camera = workspace.CurrentCamera
        if camera and camera.ViewportSize.Y > 0 and camera.ViewportSize.Y < 340 then
            local scale = Instance.new("UIScale")
            scale.Scale = math.min(1, math.max(0.5, (camera.ViewportSize.Y - 36) / 288))
            scale.Parent = frame
        end
        local stroke = Instance.new("UIStroke")
        stroke.Color = Color3.fromRGB(232, 109, 182)
        stroke.Thickness = 1.5
        stroke.Parent = frame
        local function label(text, y, height, size, color, font)
            local t = Instance.new("TextLabel")
            t.BackgroundTransparency = 1
            t.Position = UDim2.new(0, 14, 0, y)
            t.Size = UDim2.new(1, -28, 0, height)
            t.Font = font
            t.Text = text
            t.TextSize = size
            t.TextColor3 = color
            t.TextWrapped = true
            t.Parent = frame
            return t
        end
        label("THÔNG BÁO / NOTICE", 12, 24, 15, Color3.fromRGB(244, 139, 202), Enum.Font.GothamBold)
        label("Script được dịch và mod bởi YouTuber rubu roblox", 39, 58, 18, Color3.fromRGB(255, 242, 252), Enum.Font.GothamBold)
        label("Script translated and modified by YouTuber rubu roblox", 100, 52, 15, Color3.fromRGB(221, 183, 212), Enum.Font.Gotham)
        local discordUrl = "https://discord.gg/zv9T5bbnSj"
        local discord = Instance.new("TextButton")
        discord.Name = "JoinDiscord"
        discord.Position = UDim2.new(0, 22, 0, 151)
        discord.Size = UDim2.new(1, -44, 0, 55)
        discord.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
        discord.BorderSizePixel = 0
        discord.Text = "Hãy tham gia Discord / Join Discord\n" .. discordUrl
        discord.TextColor3 = Color3.fromRGB(255, 255, 255)
        discord.TextWrapped = true
        discord.Font = Enum.Font.GothamBold
        discord.TextSize = 14
        discord.Parent = frame
        corner(discord, 12)
        local feedback = label("Nhấn để sao chép / Tap to copy", 207, 24, 12, Color3.fromRGB(221, 183, 212), Enum.Font.Gotham)
        local manual = Instance.new("TextBox")
        manual.Name = "ManualDiscordCopy"
        manual.Position = discord.Position
        manual.Size = discord.Size
        manual.BackgroundColor3 = discord.BackgroundColor3
        manual.BorderSizePixel = 0
        manual.ClearTextOnFocus = false
        manual.Text = discordUrl
        manual.TextColor3 = discord.TextColor3
        manual.TextSize = 13
        manual.Font = Enum.Font.Gotham
        manual.Visible = false
        manual.Parent = frame
        corner(manual, 12)
        table.insert(listeners, manual.FocusLost:Connect(function()
            manual.Text = discordUrl
        end))
        table.insert(listeners, discord.Activated:Connect(function()
            local copied = false
            local function tryCopy(fn)
                if copied or type(fn) ~= "function" then return end
                local success, result = pcall(fn, discordUrl)
                copied = success and result ~= false
            end
            tryCopy(setclipboard)
            tryCopy(toclipboard)
            tryCopy(set_clipboard)
            if not copied and type(Clipboard) == "table" then
                tryCopy(Clipboard.set)
            end
            if copied then
                feedback.Text = "Đã sao chép! / Copied!"
                feedback.TextColor3 = Color3.fromRGB(167, 243, 190)
            else
                feedback.Text = "Giữ link để sao chép / Copy manually"
                discord.Visible = false
                manual.Visible = true
            end
        end))
        local button = Instance.new("TextButton")
        button.Name = "Confirm"
        button.AnchorPoint = Vector2.new(0.5, 0)
        button.Position = UDim2.new(0.5, 0, 0, 234)
        button.Size = UDim2.new(1, -44, 0, 44)
        button.BackgroundColor3 = Color3.fromRGB(196, 65, 144)
        button.BorderSizePixel = 0
        button.Text = "OK"
        button.TextColor3 = Color3.fromRGB(255, 255, 255)
        button.Font = Enum.Font.GothamBold
        button.TextSize = 18
        button.Parent = frame
        corner(button, 14)
        signal = Instance.new("BindableEvent")
        local function finish(confirm)
            if finished then return end
            finished = true
            accepted = confirm
            signal:Fire()
        end
        table.insert(listeners, button.Activated:Connect(function() finish(true) end))
        table.insert(listeners, gui.Destroying:Connect(function() finish(false) end))
        local parents = {}
        if pg then table.insert(parents, pg) end
        if type(gethui) == "function" then
            local found, h = pcall(gethui)
            if found and typeof(h) == "Instance" then table.insert(parents, h) end
        end
        table.insert(parents, CoreGui)
        local attached = false
        for _, parent in ipairs(parents) do
            local success = pcall(function()
                local old = parent:FindFirstChild(gui.Name)
                if old and old ~= gui then old:Destroy() end
                gui.Parent = parent
            end)
            if success and gui.Parent == parent then attached = true; break end
        end
        if not attached then error("Cannot display startup notice") end
        table.insert(listeners, gui.AncestryChanged:Connect(function(_, parent)
            if not parent then finish(false) end
        end))
        if not finished then signal.Event:Wait() end
    end)
    for _, connection in ipairs(listeners) do connection:Disconnect() end
    if gui then pcall(function() gui:Destroy() end) end
    if signal then signal:Destroy() end
    if not ok then warn("[Voidware VI/EN] Startup credit: " .. tostring(err)) end
    return ok and accepted
end

if not showStartupCredit() or not state.active then
    if state.active then state.Stop() end
    return
end

local existing = findMenu()
if not state.active then return end
if existing then
    attach(existing)
else
    -- Original loader is called once, separately from the translation layer.
    task.spawn(function()
        local ok,err = pcall(function()
            local source = game:HttpGet(originalLoader,true)
            local fn,compileError = loadstring(source)
            if not fn then error(compileError or "Loader compile failed") end
            fn()
        end)
        if not ok then warn("[Voidware VI/EN] Original loader: " .. tostring(err)) end
    end)
end
-- While attached, only check root existence; no full GUI scans per frame.
task.spawn(function()
    local attempts = 0
    while state.active do
        if state.root and state.root.Parent then
            attempts = 0
            task.wait(2)
        else
            if state.root then detach(false) end
            local root = findMenu()
            if not state.active then break end
            if root then
                attach(root)
                attempts = 0
            else
                attempts = attempts + 1
                if attempts == 60 then warn("[Voidware VI/EN] Menu not found. Check that the original menu is open.") end
            end
            task.wait(attempts >= 12 and 5 or 1.5)
        end
    end
end)
