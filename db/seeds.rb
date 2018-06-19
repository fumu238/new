# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# coding: utf-8

Payment.create(payment_method: "銀行振り込み")
Payment.create(payment_method: "クレジットカード")
Payment.create(payment_method: "商品代引き")

Status.create(shipment_status: "注文受付中")
Status.create(shipment_status: "発送準備中")
Status.create(shipment_status: "発送済み")
Status.create(shipment_status: "配達済み")
Status.create(shipment_status: "キャンセル受付中")
Status.create(shipment_status: "キャンセル済み")



