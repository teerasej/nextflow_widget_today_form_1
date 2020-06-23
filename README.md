# Flutter 3 นาทีกับโค้ชพล: สร้าง Form จริงจัง และ validate ความถูกต้องของข้อมูลใน TextFormField

โปรเจค Flutter สำหรับฝึกฝนเรียนรู้การใช้งาน Flutter กับโค้ชพลนะครับ ในรอบนี้มาสร้าง Form รับข้อมูลตั้งแต่เริ่มต้นกัน โดยจะมีการใช้ Widget แบบต่างๆ หลายตัว พร้อมการตรวจสอบข้อมูล (Validation) ใน Form ด้วย

- วิธีสร้าง `Form`
- วิธีใช้ `TextFormField`
- การกำหนดให้ซ่อนรหัสผ่านด้วย `obscureText`
- การสร้างและใช้งาน Validation function
- การสร้าง และใช้งาน FormState Key
- การควบคุม Form ด้วย Form Key

## ตอนที่ 2 การล้างข้อมูลใน Form

- การใช้ FormKey ควบคุมข้อมูลใน Form
- การใช้ `reset()` ของ FormState ในการล้างข้อมูลใน TextFormField 

## ตอนที่ 3 การเช็คเลขบัตรประชาชน 13 หลักด้วย Dart Package

ในคลิปนี้มาใช้ Dart Package ของโค้ชพล ในการตรวจสอบการกรอกข้อมูลรหัสประจำตัวประชาชน 13 หลักกัน ใช้ง่าย ใช้กับ TextFormField ได้ทันทีด้วย

- แนะนำให้รู้จักกับ Dart Package: [Thai Personal ID](https://pub.dev/packages/nextflow_thai_personal_id)
- การ import ตัว package
- การกำหนด error message ในกรณีที่กรอกข้อมูลผิด
- การใช้งาน Validator กับ TextFormField

## ตอนที่ 4 การยืนยันคำสั่งผู้ใช้ ด้วย AlertDialog

- เข้าใจความสำคัญของ AlertDialog
- วิธีเรียกใช้คำสั่ง showDialog()
- วิธีสร้าง AlertDialog
- แนวคิดในการใช้ AlertDialog
- วิธีการกำหนด content ให้ AlertDialog
- วิธีการกำหนดปุ่ม Actions ให้ AlertDialog


## ดูคลิปทำตามได้ที่นี่เลย 

สามารถกด subscribe ติดตามคลิปเรื่อง Flutter และคลิปใหม่ๆ ได้ผ่านช่อง Youtube ของโค้ชพลนะครับ 

- ตอนที่ 1 สร้างและ validate ข้อมูลใน Form: https://youtu.be/3G0xE0musUg
- ตอนที่ 2 ล้างข้อมูลใน Form: https://youtu.be/cal9JSDitNM
- ตอนที่ 3 การเช็คเลขบัตรประชาชน 13 หลัก: https://youtu.be/hB4-baWk6lU
- ตอนที่ 4 การยืนยันคำสั่งของผู้ใช้ ด้วย AlertDialog https://youtu.be/qlli0MPF0jY

## เริ่มต้นเรียนรู้สร้างแอพ iOS และ Android ด้วย Google Flutter 

ออกแบบให้เข้าใจง่าย ฝึกทำและเรียนรู้จากแอพจริง ดูรายละเอียดและซื้อได้ที่ลิ้งค์ด้านล่างเลยครับ 

https://nextflow.in.th/google-flutter-online/
