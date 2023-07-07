# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

const GrpcFlag = (;[
    Symbol("EMPTY") => Int32(0),
    Symbol("INITIALIZE") => Int32(1),
    Symbol("PROCESSING") => Int32(2),
    Symbol("ROUND_END") => Int32(3),
    Symbol("GAME_END") => Int32(4),
]...)

const GrpcState = (;[
    Symbol("STAND_STATE") => Int32(0),
    Symbol("CROUCH_STATE") => Int32(1),
    Symbol("AIR_STATE") => Int32(2),
    Symbol("DOWN_STATE") => Int32(3),
]...)

const GrpcAction = (;[
    Symbol("NEUTRAL") => Int32(0),
    Symbol("STAND") => Int32(1),
    Symbol("FORWARD_WALK") => Int32(2),
    Symbol("DASH") => Int32(3),
    Symbol("BACK_STEP") => Int32(4),
    Symbol("CROUCH") => Int32(5),
    Symbol("JUMP") => Int32(6),
    Symbol("FOR_JUMP") => Int32(7),
    Symbol("BACK_JUMP") => Int32(8),
    Symbol("AIR") => Int32(9),
    Symbol("STAND_GUARD") => Int32(10),
    Symbol("CROUCH_GUARD") => Int32(11),
    Symbol("AIR_GUARD") => Int32(12),
    Symbol("STAND_GUARD_RECOV") => Int32(13),
    Symbol("CROUCH_GUARD_RECOV") => Int32(14),
    Symbol("AIR_GUARD_RECOV") => Int32(15),
    Symbol("STAND_RECOV") => Int32(16),
    Symbol("CROUCH_RECOV") => Int32(17),
    Symbol("AIR_RECOV") => Int32(18),
    Symbol("CHANGE_DOWN") => Int32(19),
    Symbol("DOWN") => Int32(20),
    Symbol("RISE") => Int32(21),
    Symbol("LANDING") => Int32(22),
    Symbol("THROW_A") => Int32(23),
    Symbol("THROW_B") => Int32(24),
    Symbol("THROW_HIT") => Int32(25),
    Symbol("THROW_SUFFER") => Int32(26),
    Symbol("STAND_A") => Int32(27),
    Symbol("STAND_B") => Int32(28),
    Symbol("CROUCH_A") => Int32(29),
    Symbol("CROUCH_B") => Int32(30),
    Symbol("AIR_A") => Int32(31),
    Symbol("AIR_B") => Int32(32),
    Symbol("AIR_DA") => Int32(33),
    Symbol("AIR_DB") => Int32(34),
    Symbol("STAND_FA") => Int32(35),
    Symbol("STAND_FB") => Int32(36),
    Symbol("CROUCH_FA") => Int32(37),
    Symbol("CROUCH_FB") => Int32(38),
    Symbol("AIR_FA") => Int32(39),
    Symbol("AIR_FB") => Int32(40),
    Symbol("AIR_UA") => Int32(41),
    Symbol("AIR_UB") => Int32(42),
    Symbol("STAND_D_DF_FA") => Int32(43),
    Symbol("STAND_D_DF_FB") => Int32(44),
    Symbol("STAND_F_D_DFA") => Int32(45),
    Symbol("STAND_F_D_DFB") => Int32(46),
    Symbol("STAND_D_DB_BA") => Int32(47),
    Symbol("STAND_D_DB_BB") => Int32(48),
    Symbol("AIR_D_DF_FA") => Int32(49),
    Symbol("AIR_D_DF_FB") => Int32(50),
    Symbol("AIR_F_D_DFA") => Int32(51),
    Symbol("AIR_F_D_DFB") => Int32(52),
    Symbol("AIR_D_DB_BA") => Int32(53),
    Symbol("AIR_D_DB_BB") => Int32(54),
    Symbol("STAND_D_DF_FC") => Int32(55),
]...)

export GrpcFlag, GrpcState, GrpcAction
