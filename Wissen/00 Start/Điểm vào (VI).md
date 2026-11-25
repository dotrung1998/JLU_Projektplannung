---
titel: Điểm vào (VI)
stand: 2026-11-25
---

# Điểm vào (VI) — Projektplanung Data Analytics

Trang này để định hướng nhanh bằng tiếng Việt. Nội dung chuyên môn trong vault bằng
tiếng Đức để dùng lại trực tiếp cho bài nộp.

## Bắt đầu phiên

Trước khi đọc hay sửa gì, chạy bước này để làm việc trên `main` mới nhất:

```bash
bash "Wissen/_tools/sync_pull.sh"
```

Script chỉ `fetch` rồi fast-forward, **không** commit, **không** push, **không** stash.
Working tree còn thay đổi chưa commit thì nó dừng với exit 2 và in danh sách file — commit
hoặc stash trước rồi chạy lại. Nếu cloud workspace không tự fetch được: fetch qua
Git-Integration rồi chạy `bash "Wissen/_tools/sync_pull.sh" --no-fetch`.

## Đây là gì

Seminar *Projektplanung Data Analytics* (JLU, WiSe 2026/27, Dr. Sebastian Busse).
Điểm đánh giá: **Gesamtportfolio** — 10 tờ bài tập, mỗi tờ 1 trang, nộp trên Stud.IP,
hạn cuối **15.12.2026**. Điều kiện dự thi: làm ít nhất 50 % số bài.
Bài tập nhóm: so sánh **ghi biên bản họp thủ công vs. có AI hỗ trợ**, đo theo thời gian,
độ đầy đủ, độ chính xác (nhóm 11, 6 người).

## Ba việc gấp nhất

1. **Chủ nhật 22.11** — họp nhóm đã xong (10:14–10:55, **n = 6**, N = 23);
   **C = Trung, D = Dominik; Katarina = Conceptboard**. Hai biên bản đã có:
   [[Aufnahme Auto Tianshu]], [[Manuelles Protokoll 22-11]]; gửi lúc **13:00**, chấm xong
   mục tiêu **18:00**, review 3.1 lúc **20:00**; nộp buổi tối ([[Messung 22-11]]).
2. **Thứ Hai 23.11, 12:00** — nhập số liệu (Rohdaten) của nhóm vào bảng trên Conceptboard.
   Nhóm phấn đấu xong tối 22.11; đây là hạn cứng, thứ Ba đã có Sitzung 7 dùng số liệu đó.
3. **Thứ Ba 24.11** — nộp **Übungszettel 3.1** (thư mục `05_Woche`). Bản trong đó là
   **bản nháp của Sebastian, không phải bài của bạn**; thiếu phần cá nhân (Frage 5) và
   thiếu file PDF đúng tên.

## Hạn nộp

| Khi nào | Việc | Còn |
|---|---|---|
| CN 22.11, 10:14–10:55 | Họp nhóm, thu dữ liệu (n = 6) | đã xong |
| CN 22.11, 13:00 | Protokolle trong WhatsApp | hôm nay |
| CN 22.11, 18:00 | Chấm xong C/D (mục tiêu) | hôm nay |
| CN 22.11, 20:00 | Review 3.1; nộp buổi tối | hôm nay |
| T2 23.11, 12:00 | Rohdaten nhóm 11 (hạn cứng) | mai |
| T3 24.11 | Nộp 3.1 + Sitzung 7 | 2 ngày |
| T3 01.12 | Nộp 3.2 + 4 giá trị IRR | 9 ngày |
| T6 04.12, 10–12 | Sitzung 8 (online) | 12 ngày |
| T3 15.12 | Nộp Gesamtportfolio | 23 ngày |

## Việc của từng người (theo vai trò trong tờ 2.2)

| Người | Vai trò | Việc tiếp theo |
|---|---|---|
| **Trung** | Qualitätssicherung · **Person C** | chấm 2 biên bản bằng Schablone A+B, cung cấp `b1`, review 3.1, nộp 3.1 đúng tên |
| Sebastian Stanzel | nhóm trưởng, Moderator | điều phối, bản nháp 3.1, review, kiểm dòng Rohdaten |
| Katarina | Qualitätssicherung · **Conceptboard** | nhập kết quả vào Conceptboard; không chấm |
| Simon, Tianshu | đo lường & phương pháp | **Simon = Person A** (biên bản tay), **Tianshu = Person B** (biên bản tự động với **Otter.ai Pro Lite + Gemini Neon High**); biên bản đã có, gửi lúc 13:00 |
| Dominik | ghi chép & viết | **Person D** (2. Bewertung) sau khi có cả hai biên bản; ẩn danh hóa, viết 3.2 |

> **Werkzeug:** **Otter.ai (Pro Lite) + Google Gemini Neon High**; kommerziell;
> Einrichtung 30, Verarbeitung 10, Nachbearbeitung 20 Min.; Prompt trong
> [[Aufnahme Auto Tianshu]]. Alle sechs Mitglieder haben der Aufzeichnung zugestimmt
> (Gruppenangabe 22.11.2026).
>
> **Lưu ý:** Zufriedenheit là **Zusatzvariable** (Likert 1–5), Stimmung là Kontext.
> Lesbarkeit/Struktur là blinde Flecken, không phải thước đo thứ tư bắt buộc. Các câu BA bị
> lỡ **không hỏi lại**; ghi thành limitation khi so sánh manuell vs. KI.

## Quy tắc nộp bài

- Tên file: `PDA_Do_Trung_WS26-27_SitzungNN.pdf` (NN = số buổi, không phải số tờ).
- Thư mục: `05_Woche` cho 3.1, `06_Woche` cho 3.2, `10_Woche_Gesamt` cho portfolio.
- Mỗi tờ 1 trang A4 (tối đa 2). Phần cá nhân bắt buộc với các tờ nhóm.
- Kèm theo: 2 biên bản đã **ẩn danh** (Person A–D), bảng chấm, số liệu, prompt.

## Đọc tiếp

**Bản đầy đủ:** [[Theo dõi dự án (VI)]] — giải thích chi tiết cách đo, IRR, việc của bạn và
portfolio. **Bản tương tác:** [`dashboard.html`](dashboard.html) — đếm ngược, checklist có
lưu tiến độ, máy tính N và κ.

[[Start]] · [[Status]] · [[Board]] · [[Offene Entscheidungen]] ·
[[Messung 22-11]] · [[Inter-Rater-Reliabilität]] · [[Portfolio Trung]]
