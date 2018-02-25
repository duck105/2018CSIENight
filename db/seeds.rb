# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(
  name: "admin",
  email: "admin@example.com",
  password: "adminadmin",
  role: "admin",
)
Department.create([
  {
    name: "召部",
    order: 1
  },
  {
    name: "學術",
    order: 2
  },
  {
    name: "宣傳",
    order: 3
  },
  {
    name: "公關",
    order: 4
  },
  {
    name: "美宣",
    order: 5
  },
  {
    name: "器材",
    order: 6
  },
])

Event.create([
  {
    title: "男女舞",
    introduction: "要來看喔！",
    schedule: "18:00-18:05 AND 20:08-20:12",
    category: "舞",
  },
  {
    title: "大一舞",
    introduction: "要來看喔！",
    schedule: "20:00-20:05",
    category: "舞",
  },
  {
    title: "大二舞",
    introduction: "要來看喔！",
    schedule: "19:00-19:08",
    category: "舞",
  },
  {
    title: "大三舞",
    introduction: "要來看喔！",
    schedule: "18:10-18:20",
    category: "舞",
  },
  {
    title: "大四舞",
    introduction: "要來看喔！",
    schedule: "20:55-21:05",
    category: "舞",
  },
  {
    title: "大一劇",
    introduction: "要來看喔！",
    schedule: "18:30-18:55",
    category: "劇",
  },
  {
    title: "串場劇",
    introduction: "要來看喔！",
    category: "劇",
  },
  {
    title: "大ㄧ民謠",
    introduction: "要來看喔！",
    schedule: "19:12-19:25",
    category: "歌",
  },
  {
    title: "大二民謠",
    introduction: "要來看喔！",
    schedule: "20:15-20:25",
    category: "歌",
  },
  {
    title: "大三民謠",
    introduction: "要來看喔！",
    schedule: "20:25-20:35",
    category: "歌",
  },
  {
    title: "大四民謠",
    introduction: "要來看喔！",
    schedule: "20:40-20:50",
    category: "歌",
  },
  {
    title: "跨界民謠",
    introduction: "要來看喔！",
    schedule: "19:35-19:55",
    category: "歌",
  },
  {
    title: "螢光舞",
    introduction: "要來看喔！",
    schedule: "21:10-21:25",
    category: "光",
  }
])