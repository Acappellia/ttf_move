data remove storage tfm:leaderboard rank
data remove storage tfm:leaderboard ranked_players

data modify storage tfm:leaderboard rank set value [\
{player:-1,time:2000,name:{text:"J.Cooper",color:"aqua"},display_time:[{text:"1",color:"yellow"},{text:":",color:"white"},{text:"40",color:"yellow"},{text:":",color:"white"},{text:"00",color:"yellow"}]},\
{player:-2,time:2400,name:{text:"R.Hakik",color:"aqua"},display_time:[{text:"2",color:"yellow"},{text:":",color:"white"},{text:"00",color:"yellow"},{text:":",color:"white"},{text:"00",color:"yellow"}]},\
{player:-3,time:2800,name:{text:"A.Roycewicz",color:"aqua"},display_time:[{text:"2",color:"yellow"},{text:":",color:"white"},{text:"20",color:"yellow"},{text:":",color:"white"},{text:"00",color:"yellow"}]},\
{player:-4,time:3200,name:{text:"R.Nano",color:"aqua"},display_time:[{text:"2",color:"yellow"},{text:":",color:"white"},{text:"40",color:"yellow"},{text:":",color:"white"},{text:"00",color:"yellow"}]},\
{player:-5,time:3600,name:{text:"F.Zz",color:"aqua"},display_time:[{text:"3",color:"yellow"},{text:":",color:"white"},{text:"00",color:"yellow"},{text:":",color:"white"},{text:"00",color:"yellow"}]},\
{player:-6,time:4000,name:{text:"S.Fukuda",color:"aqua"},display_time:[{text:"3",color:"yellow"},{text:":",color:"white"},{text:"30",color:"yellow"},{text:":",color:"white"},{text:"00",color:"yellow"}]},\
{player:-7,time:4400,name:{text:"T.Lastimosa",color:"aqua"},display_time:[{text:"3",color:"yellow"},{text:":",color:"white"},{text:"40",color:"yellow"},{text:":",color:"white"},{text:"00",color:"yellow"}]},\
{player:-8,time:4800,name:{text:"A.Kukii",color:"aqua"},display_time:[{text:"4",color:"yellow"},{text:":",color:"white"},{text:"00",color:"yellow"},{text:":",color:"white"},{text:"00",color:"yellow"}]},\
{player:-9,time:5200,name:{text:"C.Grenier",color:"aqua"},display_time:[{text:"4",color:"yellow"},{text:":",color:"white"},{text:"20",color:"yellow"},{text:":",color:"white"},{text:"00",color:"yellow"}]},\
{player:-10,time:5600,name:{text:"E.Anderson",color:"aqua"},display_time:[{text:"4",color:"yellow"},{text:":",color:"white"},{text:"40",color:"yellow"},{text:":",color:"white"},{text:"00",color:"yellow"}]},\
{player:-11,time:6000,name:{text:"S.Briggs",color:"aqua"},display_time:[{text:"5",color:"yellow"},{text:":",color:"white"},{text:"00",color:"yellow"},{text:":",color:"white"},{text:"00",color:"yellow"}]},\
{player:-12,time:7200,name:{text:"C.Dionne",color:"aqua"},display_time:[{text:"6",color:"yellow"},{text:":",color:"white"},{text:"00",color:"yellow"},{text:":",color:"white"},{text:"00",color:"yellow"}]},\
{player:-13,time:8400,name:{text:"C.Windy",color:"aqua"},display_time:[{text:"7",color:"yellow"},{text:":",color:"white"},{text:"00",color:"yellow"},{text:":",color:"white"},{text:"00",color:"yellow"}]},\
{player:-14,time:9600,name:{text:"L.Miller",color:"aqua"},display_time:[{text:"8",color:"yellow"},{text:":",color:"white"},{text:"00",color:"yellow"},{text:":",color:"white"},{text:"00",color:"yellow"}]},\
{player:-15,time:12000,name:{text:"A.Sid",color:"aqua"},display_time:[{text:"10",color:"yellow"},{text:":",color:"white"},{text:"00",color:"yellow"},{text:":",color:"white"},{text:"00",color:"yellow"}]},\
]
data modify storage tfm:leaderboard ranked_players set value {player_-1:0,player_-2:1,player_-3:2,player_-4:3,player_-5:4,player_-6:5,player_-7:6,player_-8:7,player_-9:8,player_-10:9,player_-11:10,player_-12:11,player_-13:12,player_-14:13,player_-15:14}

function tfm:leaderboard/reset_word