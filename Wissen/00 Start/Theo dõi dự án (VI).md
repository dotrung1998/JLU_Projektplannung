---
titel: Theo dõi dự án (VI)
stand: 2026-11-22
status: aktiv
---

# Theo dõi dự án (VI) — Projektplanung Data Analytics

> Trang này giải thích **toàn bộ dự án bằng tiếng Việt**, đủ chi tiết để hiểu và đủ ngắn để
> dùng hằng ngày. Bản gốc tiếng Đức vẫn là nơi tra cứu khi viết bài nộp:
> [[Start]] · [[Status]] · [[Board]] · [[Offene Entscheidungen]].
>
> **Bản tương tác:** [`dashboard.html`](dashboard.html) — mở bằng trình duyệt, có đếm ngược,
> checklist lưu tiến độ trong máy và máy tính κ.

## 1. Trong 60 giây

- **Môn:** *Projektplanung Data Analytics*, M.Sc. Data Analytics, JLU Gießen, WiSe 2026/27,
  Dr. Sebastian Busse. Mười buổi từ 13.10. đến 15.12.2026, phần lớn vào thứ Ba; **buổi 5
  (Fr 13.11.) và buổi 8 (Fr 04.12.) vào thứ Sáu**, từ buổi 5 học trực tuyến
  ([[Seminarplan]]).
- **Cách tính điểm:** không có bài thi. Bạn viết **10 tờ bài tập**, mỗi tờ **một trang A4**
  (tối đa 2). Cuối kỳ gộp thành **Gesamtportfolio**: 10 trang chính + bìa + phụ lục, nộp
  trên Stud.IP ngày **15.12.2026**. Kết quả **đạt / không đạt**, không có điểm số
  ([[Portfolio-Vorgaben]]).
- **Điều kiện dự thi:** làm ít nhất **50 %** trong 10 tờ, tức **5 tờ** ([[Portfolio-Vorgaben]]).
- **Nhóm 11, 6 người:** so sánh **ghi biên bản họp thủ công** với **ghi biên bản có AI hỗ trợ**
  trong **cùng một cuộc họp**, đo theo **thời gian**, **độ đầy đủ**, **độ chính xác**
  ([[Gruppe 11]]).
- **Bạn:** Trung Do, **Person C** (1. Bewertung), vai trò Qualitätssicherung.
  Nhóm đã chốt 22.11: **A = Simon, B = Tianshu, C = Trung, D = Dominik**;
  **Katarina = Conceptboard**, không chấm ([[Gruppe 11]], [[Messung 22-11]]).
- **Hạn cuối:** 15.12.2026. Giờ nộp chính xác **chưa có trong tài liệu** — phải hỏi giảng viên.

**Ba việc gấp nhất (thứ tự tại 12:05 ngày CN 22.11.2026):**

| # | Việc | Hạn | Vì sao gấp |
|---|---|---|---|
| 1 | **Chấm hai biên bản:** họp đã xong (10:14–10:55, n = 6); 13:00 gửi protokolle, 18:00 chấm xong, 20:00 review 3.1 | CN 22.11 | C = Trung, D = Dominik; Katarina nhập Conceptboard |
| 2 | Nhập **Rohdaten** (mục tiêu tối 22.11) | T2 23.11, **12:00** (hạn cứng) | Hạn cứng của lớp; buổi 7 hôm sau dùng số liệu này |
| 3 | Nộp **Übungszettel 3.1** bản của chính bạn | T3 24.11 | Trong thư mục chỉ có bản nháp của Sebastian, **không phải bài của bạn** |

## 2. Môn học được tính điểm thế nào

| Khái niệm | Nghĩa | Nguồn |
|---|---|---|
| Übungszettel | Tờ bài tập của mỗi buổi; trả lời các câu hỏi của tờ đó | [[Sitzung 01]] |
| Einzelbeitrag | Mỗi tờ là **một trang** (tối đa 2) trong portfolio, nộp riêng trên Stud.IP | [[Portfolio-Vorgaben]] |
| Prüfungsvorleistung | Điều kiện được dự thi: ≥ 50 % số tờ | [[Portfolio-Vorgaben]] |
| Prüfungsleistung | Bài thi chính: **Gesamtportfolio** | [[Portfolio-Vorgaben]] |
| Gesamtportfolio | 10 trang chính + bìa + phụ lục, một PDF, nộp 15.12.2026 | [[Portfolio-Vorgaben]] |
| Bewertung | **Đạt / không đạt**, kèm nhận xét viết; không có điểm | [[Sitzung 03]] |

**Hệ quả thực tế.** Vì chỉ đạt/không đạt, đừng tối ưu cho „kết quả đẹp". Hãy ghi lại trung
thực cả sai sót và lệch kế hoạch — đó chính là nội dung được đánh giá ([[Portfolio-Vorgaben]]).

**Quy tắc đặt tên tệp:**

```text
PDA_[Nachname]_[Vorname]_WS26-27_SitzungNN.pdf
PDA_Do_Trung_WS26-27_Sitzung05.pdf      ← tờ 3.1, buổi 5, thư mục 05_Woche
PDA_Do_Trung_WS26-27_Sitzung06.pdf      ← tờ 3.2, buổi 6, thư mục 06_Woche
```

`NN` là **số buổi**, không phải số tờ: 3.1 → 05, 3.2 → 06. Tên sai vẫn là lỗi hình thức.

## 3. Nhóm 11 đang làm gì

**Câu hỏi nghiên cứu** ([[Gruppe 11]]):

> Wie sehr unterscheiden sich die Dimensionen Zeitaufwand, Vollständigkeit und Genauigkeit
> zwischen einer manuellen und einer KI-gestützten Meetingdokumentation?

Nghĩa: *Ba khía cạnh thời gian, độ đầy đủ và độ chính xác khác nhau đến mức nào giữa biên
bản họp làm tay và biên bản có AI hỗ trợ?*

| Loại biến | Biến | Cách hiểu |
|---|---|---|
| UV (độc lập) | Cách ghi biên bản: **manuell / KI-gestützt** | Nguyên nhân, được quyết định bởi thiết kế |
| AV (phụ thuộc) | Zeitaufwand (phút) | Đo được |
| AV | Vollständigkeit (%) | Đo được |
| AV | Genauigkeit (%) | Đo được |
| AV thứ 4 | Zufriedenheit (Likert 1–5) | **Zusatzvariable**; Stimmung/äußere Faktoren als Kontext |

**Bốn cặp giả thuyết** ([[Gruppe 11]]):

| Biến | H1 | H0 | Loại |
|---|---|---|---|
| Thời gian | AI **giảm** thời gian | Thời gian bằng hoặc cao hơn | có hướng |
| Độ đầy đủ | AI **thay đổi** độ đầy đủ | Không khác | không hướng |
| Độ chính xác | AI **thay đổi** độ chính xác | Không khác | không hướng |
| Hài lòng | AI **tăng** hài lòng | Không tăng | có hướng — đo bổ sung |

**Thiết kế:** một cuộc họp duy nhất, ít nhất 30 phút, 5 câu hỏi dẫn dắt. Trong lúc họp:

- **Person A** ghi tay.
- **Person B** cho công cụ AI ghi âm, chạy chuyển văn bản và tóm tắt.
- Hai biên bản hình thành **độc lập**: A không xem bản của B trước khi xong, và ngược lại.
- **Person C và D** chấm **cả hai** biên bản, độc lập với nhau, và **không được tham gia**
  viết biên bản nào ([[Messplan]]).

Vì cả hai biên bản mô tả **cùng một nội dung họp**, khác biệt đo được quy cho **cách ghi**,
không do nội dung khác nhau. Đây là điểm mạnh của thiết kế và cũng là điều nên viết trong 3.1.

> **Grenzen der drei Maße:** Vollständigkeit/Genauigkeit sind teilweise subjektiv; Zeit ist
> relativ eindeutig. Lesbarkeit und Struktur sind wichtig für die Protokollqualität, werden
> aber nicht systematisch erfasst — in 3.1 als blinde Flecken nennen, **keine**
> Lösungsvorschläge. Fehlende BA-Fragen werden **nicht** nachgeholt; die Lücken sind eine
> dokumentierte Limitation. Der Plan bleibt breit/adaptiv; Dokumentation laufend verbessern,
> Arbeitszeiten und Work-Life-Balance berücksichtigen.

## 4. Ba thước đo — giải thích như cho người ngoài ngành

### 4.1 Zeitaufwand (thời gian bỏ ra)

Đơn vị **phút**, **làm tròn lên** phút nguyên. Đo **năm đoạn riêng**, không đo cảm giác:

| Đoạn | Ai | Bắt đầu | Kết thúc |
|---|---|---|---|
| Manuell: mitschreiben | A | nốt đầu tiên | nốt cuối cùng |
| Manuell: Nachbearbeitung | A | bắt đầu viết lại | biên bản xong |
| Auto: Einrichtung | B | bắt đầu tìm công cụ | công cụ sẵn sàng |
| Auto: Verarbeitung | B | đưa bản ghi vào | bản tự động có |
| Auto: Nachbearbeitung | B | bắt đầu kiểm/sửa | biên bản xong |

```text
Zeit manuell     = mitschreiben + Nachbearbeitung
Zeit automatisch = Einrichtung + Verarbeitung + Nachbearbeitung
```

**Bốn quy tắc dễ sai** ([[Messplan]]):

1. **Thời gian họp không được tính.** Thời gian họp — dù dài bao nhiêu — không phải thời
   gian ghi biên bản.
2. **Thời gian chờ được tính** — upload, chuyển văn bản, chờ mô hình trả lời, prompt lại.
3. **Thời gian cài đặt được tính**, kể cả làm trước cuộc họp. Nếu công cụ đã cài sẵn, ghi
   công sức thực tế; nếu không rõ, ghi 0 và **ghi chú bằng văn bản**.
4. **Nghỉ giải lao không tính.**

Số cụ thể chỉ được điền **sau cuộc họp 22.11**, lấy từ đồng hồ bấm giây, không lấy từ trí nhớ.
Trang này không đưa số mẫu, vì không có số thật thì để trống chứ không ước lượng
([[Rohdaten]]).

### 4.2 Vollständigkeit (độ đầy đủ)

Câu hỏi: *biên bản có nhắc tới bao nhiêu phần trong những gì đã được nói?*

```text
N = 11 + 2 × số người trong cuộc họp
Vollständigkeit % = số nội dung được ghi nhận / N × 100     (một chữ số thập phân)
```

- **11 nội dung chung** cho mọi cuộc họp, lấy từ các câu hỏi dẫn dắt 2–5.
- **2 nội dung cho mỗi bài Bachelor được trình bày** (câu hỏi dẫn dắt 1), theo đúng thứ tự
  trình bày.
- Với **6 người**: `11 + 2×6 = 23`. Với 5 người: 21. Với 4 người: 19. Với 3 người: 17
  (trường hợp đặc biệt, xem §5).

**„Được ghi nhận"** nghĩa là nội dung **xuất hiện nhận ra được** trong biên bản — chưa xét
đúng hay sai. Đúng/sai do mẫu B chấm. Nội dung **không được nói trong cuộc họp** thì tính là
**không ghi nhận ở cả hai biên bản** ([[Messplan]]).

*Ví dụ trong buổi 6 (không phải số của nhóm):* N = 19, Person C đánh dấu 13 nội dung →
`13/19 = 68,4 %`; Person D 12/19 → `63,2 %` ([[Sitzung 06]]).

### 4.3 Genauigkeit (độ chính xác)

Chỉ chấm **những nội dung mà chính người chấm đã đánh dấu là có ghi nhận**. Không chấm nội
dung vắng mặt — vắng mặt đã bị tính ở độ đầy đủ.

| Mức | Điểm | Nghĩa |
|---|---|---|
| korrekt | **1** | Đúng như đã nói |
| leicht verzerrt | **0,5** | Gần đúng, lệch nhẹ |
| falsch oder erfunden | **0** | Sai hoặc bịa ra |

```text
Genauigkeit % = tổng điểm / số nội dung đã ghi nhận × 100
```

*Ví dụ buổi 6:* C ghi nhận 13 nội dung, đạt 10 điểm → `10/13 = 76,9 %`; D ghi nhận 12, đạt
8,5 điểm → `8,5/12 = 70,8 %` ([[Sitzung 06]]).

**Hai điều quan trọng:**

- Mẫu số **không phải N**, mà là **số nội dung người đó đã đánh dấu**. Vì vậy hai người có
  thể có % khác nhau dù chấm cùng biên bản.
- Mức „leicht verzerrt" có phần chủ quan — đây là điểm yếu về **Objektivität** mà 3.1 phải
  nêu ([[Sitzung 05]]).

### 4.4 Vì sao cần hai người chấm

Một người chấm chỉ cho **một** con số. Hai người chấm độc lập cho biết **con số đó có ổn định
không** — tức là **Reliabilität**. Nếu hai người cùng đọc một biên bản mà lệch nhau nhiều,
kết luận về AI/manual cũng không đáng tin. Cách đo mức đồng thuận đó là **Cohens κ** (§6).

## 5. Vai trò Person A–D

Đây là **kennung của Messplan**, khác với vai trò nhóm trong tờ 2.2:

| Mã | Việc | Ràng buộc |
|---|---|---|
| **Person A** | Viết biên bản tay trong họp, hoàn thiện sau họp | Không chấm |
| **Person B** | Cài công cụ, ghi âm, chạy AI, kiểm và sửa bản tự động | Không chấm |
| **Person C** | Chấm **cả hai** biên bản bằng mẫu A và B | Không viết biên bản nào |
| **Person D** | Chấm độc lập như C | Không viết biên bản nào |

**Quy tắc vàng:** C và D phải **độc lập** — không bàn trước, không xem bài của nhau, không
sửa điểm sau khi bắt đầu chấm. Nếu C hoặc D đã tham gia viết một biên bản, phép đo mất tính
độc lập và IRR vô nghĩa ([[Messplan]]).

**Trường hợp đặc biệt — chỉ 3 người tham gia** (Messplan §8): không có Person D; **A hoặc B
chấm thêm lần hai**; ghi `bewertende_unabhaengig = nein`; dùng nội dung 1–17 nên **N = 17**;
phải ghi rõ ai chấm lần hai ([[Messplan]]).

**Trạng thái 22.11.2026:** **A = Simon**, **B = Tianshu**, **C = Trung**, **D = Dominik**;
**Katarina** nhập Conceptboard und bewertet nicht. C und D sind unabhängig; `b1 = Trung`,
`b2 = Dominik`.

| Mã | Người |
|---|---|
| A | Simon Borsch |
| B | Tianshu Han |
| C | Trung Do |
| D | Dominik Schmid |

**Konsequenz:** Katarina bewertet nicht; Trung und Dominik chấm độc lập. Damit sind
BEWERT-C, `b1`, IRR und 3.2 nicht mehr blockiert ([[Offene Entscheidungen]]).

## 6. Inter-Rater-Reliabilität — vì sao không chỉ dùng %

Giả sử hai người cùng đánh dấu 80 % nội dung. Nghe như rất thống nhất. Nhưng nếu **một
người đánh dấu gần như tất cả**, thì việc người kia cũng đánh dấu nhiều là **dễ xảy ra do
ngẫu nhiên**, không chứng minh họ hiểu giống nhau. Cohen's κ trừ đi phần „dễ xảy ra do ngẫu
nhiên" đó ([[Inter-Rater-Reliabilität]]).

### 6.1 Công thức

Với biến **nhị phân** (có ghi nhận / không):

```text
Po = số nội dung hai người giống nhau / N          ← đồng thuận thô
Pe = (Σ hàng_i × cột_i) / N²                        ← đồng thuận kỳ vọng do ngẫu nhiên
κ  = (Po − Pe) / (1 − Pe)
```

- **Po** = tỉ lệ giống nhau thực tế.
- **Pe** = tỉ lệ giống nhau nếu hai người chấm ngẫu nhiên theo phân bố của riêng mỗi người.
- **κ** = phần đồng thuận **vượt trên ngẫu nhiên**, chuẩn hóa về khoảng tối đa 1.

### 6.2 Ví dụ có thật trong buổi 6 (N = 19)

| | D nói 0 | D nói 1 | Tổng |
|---|---|---|---|
| **C nói 0** | 5 | 1 | 6 |
| **C nói 1** | 2 | 11 | 13 |
| **Tổng** | 7 | 12 | 19 |

```text
Po = 16/19            = 84,2 %
Pe = (6×7 + 13×12)/19² = 198/361 = 0,5485
κ  = (0,8421 − 0,5485)/(1 − 0,5485) ≈ 0,65   → substantial (đáng kể)
```

### 6.3 Nghịch lý kappa (Kappa-Paradox)

Cùng `Po = 84,2 %` nhưng nếu phân bố lệch hơn, `Pe ≈ 0,854` thì `κ ≈ −0,08`. **Cùng mức đồng
thuận thô, κ khác hẳn.** Vì vậy:

- Luôn báo cáo **κ cùng Po và N**, không bao giờ chỉ nêu κ.
- κ âm **không phải lỗi tính**: nghĩa là đồng thuận **thấp hơn mức ngẫu nhiên**.
- Nếu **cả hai đánh dấu tất cả** nội dung, κ **không tính được** (chia cho 0) — đó không phải
  κ = 0 ([[Sitzung 06]]).

### 6.4 Genauigkeit dùng κ có trọng số

Độ chính xác có **3 mức** (1 / 0,5 / 0), nên dùng **linear gewichtetes κ**:

```text
Po,w = (1×n_lệch0 + 0,5×n_lệch1 + 0×n_lệch2) / n_giao
κw   = (Po,w − Pe,w) / (1 − Pe,w)
```

Chỉ tính trên **giao**: những nội dung **cả hai** đã đánh dấu là có ghi nhận. Vì vậy N của
Genauigkeit **nhỏ hơn** N của Vollständigkeit và phải nêu riêng ([[Inter-Rater-Reliabilität]]).

*Ví dụ buổi 6:* giao = 11 nội dung; 8 khớp hoàn toàn, 3 lệch một mức, 0 lệch hai mức:
`Po,w = (8 + 0,5×3)/11 = 9,5/11 ≈ 0,864`; `κw ≈ 0,58` → **moderate**. Nếu không trọng số thì
κ = 0,50 — trọng số thưởng cho các đánh giá „gần đúng".

### 6.5 Bốn giá trị nhóm phải có (hạn 01.12)

1. Vollständigkeit, **manuell**
2. Vollständigkeit, **automatisch**
3. Genauigkeit, **manuell**
4. Genauigkeit, **automatisch**

Mỗi giá trị kèm **Po** và **N**. Đừng đưa phần trăm vào công cụ κ — đầu vào phải là **đánh giá
từng nội dung** ([[Inter-Rater-Reliabilität]]).

### 6.6 Đọc κ theo Landis–Koch

| κ | Mức |
|---|---|
| < 0 | poor (kém, dưới mức ngẫu nhiên) |
| 0 – 0,20 | slight (rất yếu) |
| 0,20 – 0,40 | fair (yếu) |
| 0,41 – 0,60 | moderate (trung bình) |
| 0,61 – 0,80 | substantial (đáng kể) |
| 0,81 – 1 | almost perfect (gần hoàn toàn) |

Với N nhỏ, phải nói rõ κ **không chắc chắn**, đừng kết luận mạnh ([[Sitzung 06]]).

### 6.7 Công cụ

- Python: `sklearn.metrics.cohen_kappa_score(a, b)`; thêm `weights="linear"` cho Genauigkeit.
- R: `irr::kappa2(..., weight = "linear")`.
- Hoặc dùng máy tính κ trong [`dashboard.html`](dashboard.html) — chỉ để kiểm tra nhanh, kết
  quả cuối cùng vẫn nên tính lại bằng sklearn/R và lưu script.

## 7. Việc của Trung — theo mốc thời gian

Cột „xong khi" là **bằng chứng**, không phải cảm giác. Nguồn: [[Status]], [[Portfolio Trung]],
[[Messung 22-11]].

| Khi nào | Việc | Xong khi |
|---|---|---|
| **CN 22.11, 10:14–10:55** | Họp nhóm đã xong (n = 6, N = 23); C = Trung, D = Dominik; Katarina = Conceptboard | Hai biên bản: [[Aufnahme Auto Tianshu]], [[Manuelles Protokoll 22-11]] |
| **CN 22.11, 13:00** | Nhận protokolle từ Simon/Tianshu; chuẩn bị mẫu A+B | Bản cuối trong WhatsApp; 4 bảng sẵn sàng |
| **CN 22.11, 18:00** | Chấm **mẫu A + B** cho cả hai biên bản, giữ **từng mục** | Điểm từng mục đã lưu, không chỉ % tổng |
| **CN 22.11, 20:00** | Tính **4 giá trị %**; nhập `b1`; review 3.1 | 4 số, một chữ số thập phân; Änderungen gesammelt |
| **T2 23.11, 12:00** | **Đối chiếu** dòng Rohdaten (hạn cứng) | Dòng nhóm 11 hoàn chỉnh trên Conceptboard + ảnh lưu |
| **Trước T3 24.11** | Viết **Frage 5** — vai trò cá nhân, 3–4 câu, cụ thể | Có trong bản PDF của bạn |
| Trước 24.11 | Nộp **`PDA_Do_Trung_WS26-27_Sitzung05.pdf`** trong `05_Woche` | PDF đúng tên, không phải DOCX của Sebastian |
| Trước 24.11 | Đọc lại 3.1: **không** có Verbesserungsvorschläge; Frage 4 nêu blind spot **và** xem nó có làm lệch kết quả không | Hai điều kiện đã kiểm |
| **Trước T3 01.12** | Viết 3.2: 5 thời gian + 2 tổng, kết quả, 4 IRR, lệch kế hoạch, so sánh kế hoạch 2.2 | PDF đúng tên trong `06_Woche` |
| Trước 01.12 | Chốt 4 giá trị κ **kèm Po và N** với nhóm | 4 dòng báo cáo đầy đủ |
| **Trước T3 15.12** | Tạo **PDF cho tờ 01 và 02** (`tectonic`) | Hai PDF cùng khổ A4, cùng style |
| Trước 15.12 | **Ẩn danh** hai biên bản: Person A–D, bỏ tên/ngày sinh/trường | Không còn tên riêng trong phần phụ lục |
| Trước 15.12 | Ghép portfolio: bìa + 10 trang + phụ lục; kiểm tra tên từng tờ | Một PDF, đủ 12 trang chính, mở được |
| Trước 15.12 | Nộp Stud.IP | Biên nhận nộp bài; **giờ nộp phải hỏi giảng viên** |

**Bốn điều tuyệt đối không làm:**

1. Chấm biên bản do **chính bạn** viết (nếu bạn là C/D).
2. Sửa điểm sau khi đã bắt đầu chấm hoặc sau khi trao đổi với người kia.
3. Nộp DOCX „Projektplanung Data Analytics.docx" của **Sebastian Stanzel** như bài của mình.
4. Ghi số ước lượng vào Rohdaten. Thiếu thì để trống và báo nhóm.

## 8. Portfolio của bạn

Theo [[Portfolio Trung]], trạng thái ngày 21.11.2026:

| Trang | Tờ / Buổi | Nội dung | Tệp | Trạng thái |
|---|---|---|---|---|
| 01 | 1.1 / B1 | Bachelorarbeit nhìn lại, kết quả thật sự | `.tex` | **thiếu PDF** |
| 02 | 1.2 / B2 | kế hoạch dự án tái dựng | `.tex` | **thiếu PDF** |
| 03 | 2.1 / B3 | kế hoạch thứ hai, 3 thay đổi, nguyên tắc | `.pdf` | xong |
| 04 | 2.2 / B4 | câu hỏi nghiên cứu, 4 giả thuyết, vai trò, kế hoạch | `.pdf` | xong |
| 05 | 3.1 / B5 | operational hóa, 3 tiêu chí chất lượng, blind spots | — | **mở** |
| 06 | 3.2 / B6 | thực hiện, số đo, IRR, so sánh kế hoạch | — | **mở** |
| 07 | B7 | trình bày kết quả, chỉ số thống kê | — | chờ |
| 08 | B8 | IMRAD, thảo luận | — | chờ |
| 09 | B9 | công cụ AI I | — | chờ |
| 10 | B10 | công cụ AI II, kết thúc | — | chờ |
| — | — | **Deckblatt** (bìa) | — | **thiếu** |
| — | — | **Anhang** (phụ lục) | — | **thiếu** |

**Mục tiêu:** 10 trang chính + bìa + phụ lục = **12 trang** (phụ lục được dài hơn).

**Phụ lục cần có** ([[Anhang-Checkliste]]):

- Hai biên bản đầy đủ, **đã ẩn danh**, theo 5 câu hỏi dẫn dắt.
- Mẫu A và B đã điền cho cả hai biên bản, của **cả hai** người chấm.
- Dòng Rohdaten (ảnh hoặc bảng), công cụ + version + prompt.
- Bốn giá trị IRR kèm Po và N.
- Ghi chú lệch so với Messplan (nếu có).

**Formalia quan trọng** ([[Portfolio-Vorgaben]]): văn xuôi liền mạch, không phải gạch đầu dòng
vụn; APA 7; bảng có tiêu đề **phía trên**, hình có chú thích **phía dưới**; đánh số và tham
chiếu trong văn bản; dùng AI phải **công bố minh bạch**. Con số 20 % là quy tắc trong
mẫu của Spezialisierungsmodul, không phải hạn mức riêng của seminar — vẫn nên nêu rõ phần
nào dùng AI.

## 9. Mười lỗi dễ mắc nhất

| Lỗi | Cách tránh |
|---|---|
| Tưởng bản DOCX của Sebastian là bài của mình | Tự viết Frage 5, xuất PDF đúng tên `PDA_Do_Trung_…Sitzung05.pdf` |
| Chốt A–D muộn hoặc nhầm người | Đã chốt 22.11: C = Trung, D = Dominik; Katarina = Conceptboard |
| C tính luôn N theo số người dự định, không theo số người thực tế | Đếm người **trong** cuộc họp; 6 → 23, 5 → 21, 4 → 19, 3 → 17 |
| Chấm Genauigkeit trên toàn bộ N | Chỉ chấm các mục **chính người đó** đã đánh dấu; ghi rõ N giao |
| Chỉ báo κ, không báo Po và N | Luôn viết „κ = …, Po = …, N = …" |
| Tính κ từ phần trăm | Đưa **đánh giá từng nội dung** vào sklearn/R |
| Tính cả thời gian họp vào Zeitaufwand | Chỉ 5 đoạn theo bảng §4.1; thời gian họp không tính |
| Làm tròn phút xuống | **Làm tròn lên** phút nguyên |
| Sửa biên bản sau khi đã chuyển cho C/D | Chốt bản, ghi giờ chuyển, sau đó không sửa |
| Quên ẩn danh phụ lục | Đổi tên thành Person A–D, xóa thông tin cá nhân, xóa bản ghi âm sau khi chấm |

## 10. Việc nhóm còn phải quyết

Nguồn: [[Offene Entscheidungen]], [[Offene Punkte]].

| # | Câu hỏi | Trạng thái | Khuyến nghị | Chặn gì |
|---|---|---|---|---|
| 1 | Ai là A, B, C, D? | **geklärt** | A = Simon, B = Tianshu, C = Trung, D = Dominik; Katarina = Conceptboard | — |
| 2 | Công cụ nào, version nào, prompt nào? | **geklärt** | **Otter.ai Pro Lite + Google Gemini Neon High**; kommerziell; 30/10/20 Min.; Prompt trong [[Aufnahme Auto Tianshu]] | — |
| 3 | Bao nhiêu người dự họp? | **geklärt** | **n = 6**; N = 23; `bewertende_unabhaengig = ja` | — |
| 4 | Lấy bao nhiêu từ bản nháp của Sebastian? | **mở** | Lấy nội dung Frage 1–4, viết lại; Frage 5 tự viết | 3.1 |
| 5 | Giờ nộp portfolio chính xác? | **mở** | Hỏi giảng viên, ghi lại ngày + giờ | tuần cuối |
| 6 | Nộp PDF hay nhiều tệp? | gần rõ | Một PDF + lưu các PDF lẻ | portfolio |
| 7 | Frage 4: „blinde Flecken" có làm lệch kết quả không? | **geklärt** | Lesbarkeit/Struktur als blinde Flecken; Vollständigkeit/Genauigkeit subjektiv, Zeit relativ eindeutig; **keine** Lösungsvorschläge | 3.1 |

**Điểm đã rõ, không cần bàn lại** ([[Entscheidungen]]):

- Không cần người chấm thứ ba; C và D là đủ.
- Trong 3.1 **không** có đề xuất cải tiến, chỉ có phê bình và blind spots.
- Công thức `N = 11 + 2 × số người` lấy nguyên từ Messplan, không tự suy ra.
- Cuộc họp thu dữ liệu đã diễn ra **CN 22.11, 10:14–10:55** (n = 6; N = 23).
- Werkzeug: **Otter.ai Pro Lite + Google Gemini Neon High**; kommerziell; 30/10/20 Min.;
  Prompt trong [[Aufnahme Auto Tianshu]]. Alle sechs Mitglieder haben der Aufzeichnung
  zugestimmt (Gruppenangabe 22.11.2026).
- C = Trung, D = Dominik; Katarina = Conceptboard (22.11.2026).
- Zufriedenheit là **Zusatzvariable** (Likert 1–5); Stimmung/äußere Faktoren là Kontext.
- Lesbarkeit/Struktur là blinde Flecken; **keine** Lösungsvorschläge in 3.1.
- Fehlende BA-Fragen nicht nachholen; als Limitation dokumentieren.
- Plan breit/adaptiv; Dokumentation laufend; Work–Life-Balance berücksichtigen.

## 11. Từ điển Đức–Việt

| Thuật ngữ | Nghĩa trong bối cảnh này |
|---|---|
| Übungszettel | Tờ bài tập của mỗi buổi |
| Prüfungsvorleistung | Điều kiện dự thi (≥ 50 % số tờ) |
| Prüfungsleistung | Bài thi chính (portfolio) |
| Gesamtportfolio | Portfolio tổng cuối kỳ |
| Deckblatt | Trang bìa |
| Anhang | Phụ lục |
| Abgabe | Bài nộp / việc nộp bài |
| Frist | Hạn |
| Meilenstein | Mốc có thể kiểm chứng được (không chỉ là ngày) |
| Puffer | Thời gian dự phòng |
| Arbeitspaket | Gói công việc |
| Forschungsfrage | Câu hỏi nghiên cứu |
| Hypothese / H1 / H0 | Giả thuyết / đối thuyết |
| unabhängige Variable (UV) | Biến độc lập (nguyên nhân) |
| abhängige Variable (AV) | Biến phụ thuộc (kết quả đo) |
| gerichtet / ungerichtet | Có hướng / không hướng |
| Operationalisierung | Biến khái niệm thành cách đo cụ thể |
| Testgütekriterien | Ba tiêu chí chất lượng của phép đo |
| Objektivität | Tính khách quan |
| Reliabilität | Độ tin cậy (lặp lại được) |
| Validität | Độ giá trị (đo đúng cái cần đo) |
| Vollständigkeit | Độ đầy đủ |
| Genauigkeit | Độ chính xác |
| Zeitaufwand | Thời gian bỏ ra |
| Bewertende | Người chấm |
| Schablone | Mẫu chấm |
| Rohdaten | Dữ liệu thô |
| Inter-Rater-Reliabilität | Độ đồng thuận giữa các người chấm |
| Cohens κ | Hệ số đồng thuận đã trừ phần ngẫu nhiên |
| Kappa-Paradox | Nghịch lý: Po cao nhưng κ thấp/âm |
| Stichprobe / N | Mẫu / số đơn vị được đánh giá |
| Sonderfall | Trường hợp đặc biệt (3 người dự họp) |
| Einwilligung | Sự đồng ý (ghi âm) |
| Anonymisierung | Ẩn danh hóa |
| Leitfragen | Câu hỏi dẫn dắt cuộc họp |
| Gruppensprecher | Nhóm trưởng |
| Qualitätssicherung | Đảm bảo chất lượng |
| Messplan | Kế hoạch đo (bắt buộc cho mọi nhóm) |
| Conceptboard | Bảng trắng online của lớp |
| Stud.IP | Nền tảng nộp bài của trường |
| IMRAD | Introduction, Methods, Results, Discussion |

## 12. Bản đồ đọc tiếp

| Cần gì | Đọc |
|---|---|
| Tổng quan tiếng Việt ngắn | [[Điểm vào (VI)]] |
| Kết quả poll vai trò 15./16.11. | [[Rollenvote 15-11]] |
| Hạn và việc từng người | [[Status]] |
| Thẻ công việc, phụ thuộc | [[Board]] |
| Quy định đo đầy đủ | [[Messplan]] |
| Chuẩn bị cho cuộc họp 22.11 | [[Messung 22-11]] |
| Cột và định dạng số liệu | [[Rohdaten]] |
| Công thức κ và ví dụ | [[Inter-Rater-Reliabilität]] |
| Quy định portfolio | [[Portfolio-Vorgaben]] |
| Trạng thái từng trang portfolio | [[Portfolio Trung]] |
| Câu hỏi còn mở | [[Offene Entscheidungen]], [[Offene Punkte]] |
| Rủi ro và cách xử lý | [[Risiken]] |

## 13. Ghi chú về nguồn

- Toàn bộ số liệu, hạn và quy tắc trên lấy từ các ghi chú được dẫn ngay trong từng mục;
  không có số nào được ước lượng thêm.
- Các chỗ **chưa có dữ liệu** (thời gian thực tế, % thực tế, tên công cụ, số người dự họp,
  giờ nộp portfolio) được ghi rõ là **chưa có**, không điền số giả.
- Bản này là **bản giải thích**, không thay thế bài nộp. Khi viết bài, dùng bản tiếng Đức
  và trích dẫn Messplan/Portfoliovorgaben.
- Cập nhật lần cuối: **22.11.2026, 12:05**. Sau cuộc họp, thay các chỗ „chưa có" bằng số thật
  và cập nhật [[Status]].
- Đã đối chiếu lại toàn bộ số liệu ngày 22.11.2026: ngày trong tuần theo [[Seminarplan]]
  (buổi 5 và 8 là thứ Sáu), công thức và ngưỡng theo [[Messplan]], ví dụ κ theo
  [[Sitzung 06]], trạng thái trang theo [[Portfolio Trung]].
- Rollen: **A = Simon, B = Tianshu, C = Trung, D = Dominik; Katarina = Conceptboard**
  ([[Messung 22-11]], [[Gruppe 11]]); keine Telefonnummern übernommen.
