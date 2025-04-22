RegisterTableGoal(GOAL_BlackSwordMariques211020_Battle, "BlackSwordMariques211020_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BlackSwordMariques211020_Battle, true)

Goal.Initialize = function (_, arg1, _, _)
    arg1:SetStringIndexedNumber("WallGrapple_Flg", 0)
    arg1:SetStringIndexedNumber("WallDoesExist", 0)
    arg1:SetStringIndexedNumber("Disenchant_Cnt", 0)
    arg1:SetStringIndexedNumber("Wait_Cnt", 0)
    arg1:SetStringIndexedNumber("isCombo", 0)
    arg1:SetNumber(0, 0)
end

Goal.Activate = function (_, actor, goals)
    Init_Pseudo_Global(actor, goals)
    actor:SetStringIndexedNumber("Dist_SideStep", 5)
    actor:SetStringIndexedNumber("Dist_BackStep", 5)
    local probabilities = {}
    local acts = {}
    local f2_local0 = {}
    Common_Clear_Param(probabilities, acts, f2_local0)
    local distance = actor:GetDist(TARGET_ENE_0)
    actor:GetRandam_Int(1, 100)
    actor:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    actor:GetEventRequest()
    actor:SetStringIndexedNumber("isCombo", 0)
    if actor:IsEventFlag(13002822) == true or actor:IsEventFlag(13002823) == true or actor:IsEventFlag(13002824) == true or actor:IsEventFlag(13002825) == true or actor:IsEventFlag(13002826) == true or actor:IsEventFlag(13002827) == true or actor:IsEventFlag(130028238) == true or actor:IsEventFlag(13002829) == true then
        actor:SetStringIndexedNumber("WallGrapple_Flg", 1)
    else
        actor:SetStringIndexedNumber("WallGrapple_Flg", 0)
    end
    if actor:GetStringIndexedNumber("Disenchant_Cnt") > 0 and actor:HasSpecialEffectId(TARGET_SELF, 15253) then
        actor:SetStringIndexedNumber("Disenchant_Cnt", 0)
    elseif actor:HasSpecialEffectId(TARGET_SELF, 15254) then
        actor:SetStringIndexedNumber("Disenchant_Cnt", actor:GetStringIndexedNumber("Disenchant_Cnt") + 1)
    end
    actor:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    actor:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    actor:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    actor:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    actor:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    actor:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    actor:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    actor:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    actor:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    actor:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 15255)
    actor:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 15256)
    actor:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 15258)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5050)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5051)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5056)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5057)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5058)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5059)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5060)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5062)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5063)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5064)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5065)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5066)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5067)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5068)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5069)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5073)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5074)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5075)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5077)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5078)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5041)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5042)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5043)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5044)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5045)
    actor:SetNumber(5, 0)
    if actor:HasSpecialEffectId(TARGET_SELF, 5034) then
        if actor:HasSpecialEffectId(TARGET_SELF, 5077) then
            probabilities[21] = 50
        elseif actor:HasSpecialEffectId(TARGET_SELF, 15299) then
            probabilities[22] = 50
            probabilities[24] = 20
            probabilities[21] = 20
        else
            probabilities[21] = 20
            probabilities[22] = 50
            probabilities[24] = 20
        end
    elseif actor:HasSpecialEffectId(TARGET_SELF, 15270) and actor:HasSpecialEffectId(TARGET_SELF, 5034) == false then
        probabilities[26] = 10000
    elseif actor:HasSpecialEffectId(TARGET_SELF, 15299) and actor:GetStringIndexedNumber("WallGrapple_Flg") == 1 then
        probabilities[23] = 10000
    elseif actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 5 + actor:GetMapHitRadius(TARGET_SELF)) and actor:GetStringIndexedNumber("WallGrapple_Flg") == 1 then
        probabilities[23] = 99999999999999
    elseif actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, -1, 999) then
        if distance > 15 then
            if actor:HasSpecialEffectId(TARGET_SELF, 15252) then
                probabilities[1] = 30
                probabilities[18] = 30
                probabilities[5] = 30
                probabilities[28] = 50
                if actor:GetHpRate(TARGET_SELF) <= 0.7 then
                    probabilities[13] = 90
                end
            else
                probabilities[1] = 30
                probabilities[18] = 30
                probabilities[5] = 30
                probabilities[28] = 50
                if actor:GetHpRate(TARGET_SELF) <= 0.7 then
                    probabilities[13] = 30
                end
            end
        elseif distance > 6 then
            if not not actor:HasSpecialEffectId(TARGET_SELF, 15252) or actor:HasSpecialEffectId(TARGET_SELF, 15252) then
                probabilities[1] = 20
                probabilities[18] = 20
                probabilities[14] = 25
                probabilities[28] = 50
                if actor:GetHpRate(TARGET_SELF) <= 0.7 then
                    probabilities[15] = 40
                end
            else
                probabilities[1] = 25
                probabilities[18] = 25
                probabilities[5] = 35
                probabilities[14] = 30
                probabilities[28] = 50
                if actor:GetHpRate(TARGET_SELF) <= 0.7 then
                    probabilities[15] = 25
                end
            end
        elseif distance > 4 then
            probabilities[1] = 30
            probabilities[18] = 30
            probabilities[5] = 25
            probabilities[14] = 20
            probabilities[27] = 50
            probabilities[28] = 50
            probabilities[29] = 50
            if actor:GetHpRate(TARGET_SELF) <= 0.7 then
                probabilities[7] = 15
                probabilities[15] = 10
            end
        elseif distance > 1.5 then
            if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                probabilities[4] = 0
                probabilities[5] = 20
                probabilities[6] = 0
                probabilities[14] = 30
                probabilities[20] = 20
                probabilities[27] = 50
                if actor:GetHpRate(TARGET_SELF) <= 0.7 then
                    probabilities[15] = 10
                    probabilities[7] = 20
                end
            elseif actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                probabilities[4] = 20
                probabilities[5] = 0
                probabilities[6] = 0
                probabilities[14] = 30
                probabilities[17] = 30
                probabilities[20] = 20
                if actor:GetHpRate(TARGET_SELF) <= 0.7 then
                    probabilities[15] = 20
                    probabilities[7] = 10
                end
            end
        elseif distance > -2 then
            if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 60) then
                    probabilities[4] = 0
                    probabilities[5] = 10
                    probabilities[6] = 50
                    probabilities[17] = 50
                    probabilities[19] = 25
                    probabilities[20] = 20
                    probabilities[27] = 50
                    if actor:GetHpRate(TARGET_SELF) <= 0.7 then
                        probabilities[7] = 20
                    end
                else
                    probabilities[4] = 0
                    probabilities[5] = 45
                    probabilities[6] = 0
                    probabilities[17] = 50
                    probabilities[19] = 25
                    probabilities[20] = 20
                    if actor:GetHpRate(TARGET_SELF) <= 0.7 then
                        probabilities[7] = 35
                    end
                end
            elseif actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 60) then
                    probabilities[4] = 10
                    probabilities[5] = 0
                    probabilities[6] = 50
                    probabilities[17] = 50
                    probabilities[19] = 25
                    probabilities[20] = 20
                    if actor:GetHpRate(TARGET_SELF) <= 0.7 then
                        probabilities[15] = 20
                    end
                else
                    probabilities[4] = 20
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[17] = 50
                    probabilities[19] = 25
                    probabilities[20] = 20
                    if actor:GetHpRate(TARGET_SELF) <= 0.7 then
                        probabilities[15] = 35
                    end
                end
            end
        elseif actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            probabilities[4] = 0
            probabilities[5] = 10
            probabilities[6] = 30
            probabilities[17] = 30
            probabilities[19] = 25
            probabilities[20] = 30
            if actor:GetHpRate(TARGET_SELF) <= 0.7 then
                probabilities[7] = 25
                probabilities[15] = 20
            end
        elseif actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            probabilities[4] = 10
            probabilities[5] = 0
            probabilities[6] = 35
            probabilities[17] = 50
            probabilities[19] = 25
            probabilities[20] = 35
            probabilities[27] = 50
            if actor:GetHpRate(TARGET_SELF) <= 0.7 then
                probabilities[15] = 30
            end
        end
    elseif distance < 0 then
        if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            probabilities[4] = 0
            probabilities[5] = 20
            probabilities[6] = 80
        elseif actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            probabilities[4] = 20
            probabilities[5] = 0
            probabilities[6] = 30
            probabilities[17] = 50
            probabilities[27] = 50
        end
    elseif actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        probabilities[4] = 0
        probabilities[5] = 0
        probabilities[6] = 0
        probabilities[42] = 100
    elseif actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        probabilities[4] = 100
        probabilities[5] = 0
        probabilities[6] = 0
    end
    if actor:GetNumber(0) == 0 then
        actor:SetNumber(0, 1)
        probabilities[1] = 100000
    end
    if actor:GetHpRate(TARGET_SELF) <= 0.7 and actor:GetTimer(2) <= 0 and actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 120) and distance <= 5 then
        probabilities[25] = 60
    end
    probabilities[20] = 0
    probabilities[1] = SetCoolTime(actor, goals, 3016, 30, probabilities[1], 1)
    probabilities[2] = SetCoolTime(actor, goals, 3021, 20, probabilities[2], 1)
    probabilities[3] = SetCoolTime(actor, goals, 3022, 15, probabilities[3], 0)
    probabilities[4] = SetCoolTime(actor, goals, 3026, 20, probabilities[4], 1)
    probabilities[5] = SetCoolTime(actor, goals, 3027, 15, probabilities[5], 0)
    probabilities[6] = SetCoolTime(actor, goals, 3028, 15, probabilities[6], 1)
    probabilities[7] = SetCoolTime(actor, goals, 3031, 15, probabilities[7], 1)
    probabilities[8] = SetCoolTime(actor, goals, 3032, 60, probabilities[8], 1)
    probabilities[9] = SetCoolTime(actor, goals, 3033, 45, probabilities[9], 1)
    probabilities[10] = SetCoolTime(actor, goals, 3034, 60, probabilities[10], 0)
    probabilities[11] = SetCoolTime(actor, goals, 3029, 30, probabilities[11], 0)
    probabilities[12] = SetCoolTime(actor, goals, 3023, 15, probabilities[12], 0)
    probabilities[13] = SetCoolTime(actor, goals, 3035, 20, probabilities[13], 1)
    probabilities[13] = SetCoolTime(actor, goals, 3030, 15, probabilities[13], 1)
    probabilities[14] = SetCoolTime(actor, goals, 3025, 10, probabilities[14], 1)
    probabilities[14] = SetCoolTime(actor, goals, 3020, 10, probabilities[14], 1)
    probabilities[15] = SetCoolTime(actor, goals, 3030, 20, probabilities[15], 1)
    probabilities[15] = SetCoolTime(actor, goals, 3035, 15, probabilities[15], 1)
    probabilities[17] = SetCoolTime(actor, goals, 3003, 16, probabilities[17], 1)
    probabilities[18] = SetCoolTime(actor, goals, 3001, 15, probabilities[18], 1)
    probabilities[19] = SetCoolTime(actor, goals, 3000, 15, probabilities[19], 1)
    probabilities[20] = SetCoolTime(actor, goals, 3036, 60, probabilities[20], 1)
    probabilities[44] = SetCoolTime(actor, goals, 2002, 30, probabilities[44], 0)
    probabilities[44] = SetCoolTime(actor, goals, 2003, 30, probabilities[44], 0)
    probabilities[27] = SetCoolTime(actor, goals, 3023, 17, probabilities[27], 0)
    probabilities[28] = SetCoolTime(actor, goals, 3010, 17, probabilities[28], 0)
    acts[1] = REGIST_FUNC(actor, goals, BlackSwordMariques211020_Act01)
    acts[2] = REGIST_FUNC(actor, goals, BlackSwordMariques211020_Act02)
    acts[3] = REGIST_FUNC(actor, goals, BlackSwordMariques211020_Act03)
    acts[4] = REGIST_FUNC(actor, goals, BlackSwordMariques211020_Act04)
    acts[5] = REGIST_FUNC(actor, goals, BlackSwordMariques211020_Act05)
    acts[6] = REGIST_FUNC(actor, goals, BlackSwordMariques211020_Act06)
    acts[7] = REGIST_FUNC(actor, goals, BlackSwordMariques211020_Act07)
    acts[8] = REGIST_FUNC(actor, goals, BlackSwordMariques211020_Act08)
    acts[9] = REGIST_FUNC(actor, goals, BlackSwordMariques211020_Act09)
    acts[10] = REGIST_FUNC(actor, goals, BlackSwordMariques211020_Act10)
    acts[11] = REGIST_FUNC(actor, goals, BlackSwordMariques211020_Act11)
    acts[12] = REGIST_FUNC(actor, goals, BlackSwordMariques211020_Act12)
    acts[13] = REGIST_FUNC(actor, goals, BlackSwordMariques211020_Act13)
    acts[14] = REGIST_FUNC(actor, goals, BlackSwordMariques211020_Act14)
    acts[15] = REGIST_FUNC(actor, goals, BlackSwordMariques211020_Act15)
    acts[16] = REGIST_FUNC(actor, goals, BlackSwordMariques211020_Act16)
    acts[17] = REGIST_FUNC(actor, goals, BlackSwordMariques211020_Act17)
    acts[18] = REGIST_FUNC(actor, goals, BlackSwordMariques211020_Act18)
    acts[19] = REGIST_FUNC(actor, goals, BlackSwordMariques211020_Act19)
    acts[20] = REGIST_FUNC(actor, goals, BlackSwordMariques211020_Act20)
    acts[21] = REGIST_FUNC(actor, goals, BlackSwordMariques211020_Act21)
    acts[22] = REGIST_FUNC(actor, goals, BlackSwordMariques211020_Act22)
    acts[23] = REGIST_FUNC(actor, goals, BlackSwordMariques211020_Act23)
    acts[25] = REGIST_FUNC(actor, goals, BlackSwordMariques211020_Act25)
    acts[26] = REGIST_FUNC(actor, goals, BlackSwordMariques211020_Act26)
    acts[40] = REGIST_FUNC(actor, goals, BlackSwordMariques211020_Act40)
    acts[41] = REGIST_FUNC(actor, goals, BlackSwordMariques211020_Act41)
    acts[42] = REGIST_FUNC(actor, goals, BlackSwordMariques211020_Act42)
    acts[43] = REGIST_FUNC(actor, goals, BlackSwordMariques211020_Act43)
    acts[44] = REGIST_FUNC(actor, goals, BlackSwordMariques211020_Act44)
    acts[45] = REGIST_FUNC(actor, goals, BlackSwordMariques211020_Act45)
    acts[46] = REGIST_FUNC(actor, goals, BlackSwordMariques211020_Act46)
    acts[24] = REGIST_FUNC(actor, goals, BlackSwordMariques211020_Act24)
    acts[27] = REGIST_FUNC(actor, goals, BlackSwordMariques211020_Act27)
    acts[28] = REGIST_FUNC(actor, goals, BlackSwordMariques211020_Act28)
    acts[29] = REGIST_FUNC(actor, goals, BlackSwordMariques211020_Act29)
    Common_Battle_Activate(actor, goals, probabilities, acts, REGIST_FUNC(actor, goals, BlackSwordMariques211020_ActAfter_AdjustSpace), f2_local0)
end

function BlackSwordMariques211020_Act01(actor, goals, _)
    local f3_local0 = 10
    local f3_local1 = 0
    local f3_local2 = 999
    local f3_local3 = 100
    local f3_local4 = 0
    local f3_local5 = 5
    local f3_local6 = 5
    Approach_Act_Flex(actor, goals, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local f3_local7 = 10
    local action = 3016
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF)
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local7, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211020_Act02(actor, goals, _)
    local f4_local0 = 10
    local f4_local1 = 0
    local f4_local2 = 999
    local f4_local3 = 100
    local f4_local4 = 0
    local f4_local5 = 5
    local f4_local6 = 5
    Approach_Act_Flex(actor, goals, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f4_local7 = 10
    local action = 3021
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF)
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f4_local7, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211020_Act03(actor, goals, _)
    local f5_local0 = 8
    local f5_local1 = 0
    local f5_local2 = 999
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 5
    local f5_local6 = 5
    Approach_Act_Flex(actor, goals, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f5_local7 = 20
    local action = 3022
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF)
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f5_local7, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211020_Act04(actor, goals, _)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f6_local0 = 10
    local action = 3026
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF)
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f6_local0, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211020_Act05(actor, goals, _)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local f7_local0 = 15
    local f7_local1 = 0
    local f7_local2 = 999
    local f7_local3 = 100
    local f7_local4 = 0
    local f7_local5 = 5
    local f7_local6 = 5
    Approach_Act_Flex(actor, goals, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 10
    local action = 3027
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF)
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f7_local7, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211020_Act06(actor, goals, _)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local f8_local0 = 10
    local action = 3028
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF)
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f8_local0, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211020_Act07(actor, goals, _)
    local f9_local0 = 20
    local f9_local1 = 0
    local f9_local2 = 999
    local f9_local3 = 100
    local f9_local4 = 0
    local f9_local5 = 5
    local f9_local6 = 5
    Approach_Act_Flex(actor, goals, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local f9_local7 = 10
    local action = 3031
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF)
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f9_local7, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211020_Act08(actor, goals, _)
    local f10_local0 = 25
    local f10_local1 = 0
    local f10_local2 = 999
    local f10_local3 = 100
    local f10_local4 = 0
    local f10_local5 = 5
    local f10_local6 = 5
    Approach_Act_Flex(actor, goals, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f10_local7 = 10
    local action = 3032
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF)
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f10_local7, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211020_Act09(actor, goals, _)
    local f11_local0 = 20
    local f11_local1 = 0
    local f11_local2 = 999
    local f11_local3 = 100
    local f11_local4 = 0
    local f11_local5 = 5
    local f11_local6 = 5
    Approach_Act_Flex(actor, goals, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f11_local7 = 10
    local action = 3033
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF)
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f11_local7, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211020_Act10(actor, goals, _)
    local f12_local0 = 11
    local f12_local1 = 0
    local f12_local2 = 999
    local f12_local3 = 100
    local f12_local4 = 0
    local f12_local5 = 5
    local f12_local6 = 5
    Approach_Act_Flex(actor, goals, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f12_local7 = 10
    local action = 3034
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF)
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f12_local7, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211020_Act11(actor, goals, _)
    local f13_local0 = 8.5
    local f13_local1 = 0
    local f13_local2 = 999
    local f13_local3 = 100
    local f13_local4 = 0
    local f13_local5 = 5
    local f13_local6 = 5
    Approach_Act_Flex(actor, goals, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f13_local7 = 10
    local action = 3029
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF)
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f13_local7, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211020_Act12(actor, goals, _)
    local f14_local0 = 17
    local f14_local1 = 0
    local f14_local2 = 999
    local f14_local3 = 100
    local f14_local4 = 0
    local f14_local5 = 5
    local f14_local6 = 5
    Approach_Act_Flex(actor, goals, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local f14_local7 = 10
    local action = 3023
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF)
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f14_local7, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211020_Act13(actor, goals, _)
    local f15_local0 = 20
    local f15_local1 = 0
    local f15_local2 = 999
    local f15_local3 = 100
    local f15_local4 = 0
    local f15_local5 = 5
    local f15_local6 = 5
    Approach_Act_Flex(actor, goals, f15_local0, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 15256)
    local f15_local7 = 10
    local action = 3035
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF)
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f15_local7, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211020_Act14(actor, goals, _)
    local f16_local0 = 10
    local f16_local1 = 0
    local f16_local2 = 999
    local f16_local3 = 100
    local f16_local4 = 0
    local f16_local5 = 5
    local f16_local6 = 5
    Approach_Act_Flex(actor, goals, f16_local0, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    actor:SetTimer(1, 20)
    local f16_local7 = 10
    local action = 3025
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF)
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f16_local7, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211020_Act15(actor, goals, _)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 15255)
    local f17_local0 = 10
    local action = 3030
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF)
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f17_local0, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211020_Act16(actor, goals, _)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f18_local0 = 20
    local action = 3033
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF)
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f18_local0, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211020_Act17(actor, goals, _)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f19_local0 = 20
    local action = 3003
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF)
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f19_local0, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211020_Act18(actor, goals, _)
    local f20_local0 = 8
    local f20_local1 = 0
    local f20_local2 = 999
    local f20_local3 = 100
    local f20_local4 = 0
    local f20_local5 = 5
    local f20_local6 = 5
    Approach_Act_Flex(actor, goals, f20_local0, f20_local1, f20_local2, f20_local3, f20_local4, f20_local5, f20_local6)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local f20_local7 = 10
    local action = 3001
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF)
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f20_local7, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211020_Act19(actor, goals, _)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 15258)
    local f21_local0 = 20
    local action = 3000
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF)
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f21_local0, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211020_Act20(actor, goals, _)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f22_local0 = 15
    local action = 3036
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF)
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f22_local0, action, TARGET_SELF, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211020_Act21(actor, goals, _)
    if actor:HasSpecialEffectId(TARGET_SELF, 15299) == false then
        actor:SetTimer(0, 15)
    end
    actor:SetStringIndexedNumber("Wait_Cnt", 0)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f23_local0 = 10
    local action = 3037
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF)
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f23_local0, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211020_Act22(actor, goals, _)
    if actor:HasSpecialEffectId(TARGET_SELF, 15299) == false then
        actor:SetTimer(0, 20)
    end
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f24_local0 = 10
    local action = 3038
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF)
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f24_local0, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211020_Act23(arg0, goals, _)
    if arg0:HasSpecialEffectId(TARGET_SELF, 15299) == false then
        arg0:SetTimer(0, 5)
    end
    local f25_local0 = 15
    local action = 3036
    local success_distance = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local max_angle = 0
    local min_angle = 0
    if arg0:GetStringIndexedNumber("isCombo") == 1 then
        goals:AddSubGoal(GOAL_COMMON_ComboRepeat, f25_local0, action, POINT_EVENT, success_distance, max_angle, min_angle, 0, 0)
    else
        goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f25_local0, action, POINT_EVENT, success_distance, max_angle, min_angle, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211020_Act24(actor, goals, _)
    if actor:HasSpecialEffectId(TARGET_SELF, 15299) == false then
        actor:SetTimer(0, 20)
    end
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f24_local0 = 10
    local action = 20050
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF)
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f24_local0, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211020_Act25(actor, goals, _)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local f26_local0 = 10
    local action = 3015
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF)
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f26_local0, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    actor:SetTimer(2, 30)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211020_Act26(arg0, goals, _)
    local f27_local0 = 10
    local action = 20006
    local success_distance = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f27_local0, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211020_Act27(arg0, goals, _)
    local action = 3023
    local success_distance = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211020_Act28(arg0, goals, _)
    local action = 3010
    local success_distance = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211020_Act29(arg0, goals, _)
    local action = 20026
    local success_distance = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211020_Act40(_, goals, _)
    local f28_local0 = 3
    local distance = 14.8
    local is_walking = true
    local action = -1
    goals:AddSubGoal(GOAL_COMMON_ApproachTarget, f28_local0, TARGET_ENE_0, distance, TARGET_SELF, is_walking, action)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211020_Act41(_, goals, _)
    local f29_local0 = 2
    local distance = 8
    local is_walking = false
    local action = -1
    goals:AddSubGoal(GOAL_COMMON_ApproachTarget, f29_local0, TARGET_ENE_0, distance, TARGET_SELF, is_walking, action)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211020_Act42(arg0, goals, _)
    goals:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(55, 60), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211020_Act43(actor, goals, _)
    local f31_local0 = 1
    local forward_priority = 0
    local back_priority = 100
    local left_priority = 0
    local right_priority = 0
    local target = TARGET_ENE_0
    local safe_distance = 1
    local turn_time_before = 0
    local success_if_impossible = true
    goals:AddSubGoal(GOAL_COMMON_StepSafety, f31_local0, forward_priority, back_priority, left_priority, right_priority, target, safe_distance, turn_time_before, success_if_impossible)
    actor:GetDist(TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211020_Act44(actor, goals, _)
    local random = actor:GetRandam_Int(0, 1)
    local f32_local0 = 3.5
    local target = TARGET_ENE_0
    local f32_local1 = random
    local f32_local2 = 100
    local f32_local3 = true
    local f32_local4 = -1
    local f32_local5 = GUARD_GOAL_DESIRE_RET_Failed
    goals:AddSubGoal(GOAL_COMMON_SidewayMove, f32_local0, target, f32_local1, f32_local2, f32_local3, isLifeSuccess, f32_local4, f32_local5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211020_Act45(_, goals, _)
    local f33_local0 = 6
    local distance = 15
    local is_walking = true
    local action = -1
    goals:AddSubGoal(GOAL_COMMON_ApproachTarget, f33_local0, TARGET_ENE_0, distance, TARGET_SELF, is_walking, action)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211020_Act46(_, goals, _)
    local f34_local0 = 3
    local f34_local1 = TARGET_ENE_0
    local f34_local2 = 8
    local f34_local3 = TARGET_ENE_0
    local f34_local4 = true
    local f34_local5 = -1
    local f34_local6 = GUARD_GOAL_DESIRE_RET_Failed
    local f34_local7 = false
    local f34_local8 = 1
    goals:AddSubGoal(GOAL_COMMON_LeaveTargetToPathEnd, f34_local0, f34_local1, f34_local2, f34_local3, f34_local4, f34_local5, f34_local6, f34_local7, f34_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211020_ActAfter_AdjustSpace(_, goals, _)
    goals:AddSubGoal(GOAL_BlackSwordMariques211020_AfterAttackAct, 10)
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (_, _, _)
end

Goal.Interrupt = function (_, actor, goals)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5050)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5051)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5056)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5057)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5058)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5059)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5060)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5062)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5063)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5064)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5065)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5066)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5067)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5068)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5069)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5073)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5074)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5075)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5077)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5078)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5041)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5042)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5043)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5044)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5045)
    if actor:IsLadderAct(TARGET_SELF) then
        return false
    end
    local distance = actor:GetDist(TARGET_ENE_0)
    local random = actor:GetRandam_Int(1, 100)
    local random1 = actor:GetRandam_Int(0, 1)
    if actor:IsEventFlag(13002822) == true or actor:IsEventFlag(13002823) == true or actor:IsEventFlag(13002824) == true or actor:IsEventFlag(13002825) == true or actor:IsEventFlag(13002826) == true or actor:IsEventFlag(13002827) == true or actor:IsEventFlag(130028238) == true or actor:IsEventFlag(13002829) == true then
        actor:SetStringIndexedNumber("WallGrapple_Flg", 1)
    else
        actor:SetStringIndexedNumber("WallGrapple_Flg", 0)
    end
    actor:SetStringIndexedNumber("isCombo", 1)
    if actor:IsInterupt(INTERUPT_Damaged) then
    else
    end
    if actor:IsInterupt(INTERUPT_Shoot) and actor:HasSpecialEffectId(TARGET_SELF, 15257) and actor:GetTimer(4) <= 0 and actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
        goals:ClearSubGoal()
        if distance > 15 then
            Approach_Act_Flex(actor, goals, 13, 0, 999, 100, 0, 5, 5)
        end
        actor:SetTimer(4, 5)
        goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 1.5, 3027, TARGET_ENE_0, 0, 0, 0, 0, 0)
        return true
    elseif actor:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 5 + actor:GetMapHitRadius(TARGET_SELF)) and actor:GetTimer(0) <= 0 and actor:GetStringIndexedNumber("WallGrapple_Flg") == 1 and (not not actor:HasSpecialEffectId(TARGET_SELF, 15258) or not not actor:HasSpecialEffectId(TARGET_SELF, 5027) or not not actor:HasSpecialEffectId(TARGET_SELF, 5028) or actor:HasSpecialEffectId(TARGET_SELF, 5032)) then
            goals:ClearSubGoal()
            BlackSwordMariques211020_Act23(actor, goals)
            return true
        elseif actor:HasSpecialEffectId(TARGET_SELF, 5050) then
            if distance <= 10 then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20044, TARGET_ENE_0, 0, 0, 0, 0, 0)
            end
            return true
        elseif actor:HasSpecialEffectId(TARGET_SELF, 5051) then
            if distance <= 10 then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20047, TARGET_ENE_0, 0, 0, 0, 0, 0)
            end
            return true
        elseif actor:HasSpecialEffectId(TARGET_SELF, 5073) then
            if distance >= 5 and distance <= 10 then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20026, TARGET_ENE_0, 0, 0, 0, 0, 0)
            end
            return true
        elseif actor:HasSpecialEffectId(TARGET_SELF, 5074) then
            if distance <= 4 then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20027, TARGET_ENE_0, 0, 0, 0, 0, 0)
            end
            return true
        elseif actor:HasSpecialEffectId(TARGET_SELF, 5057) then
            if distance <= 5 then
                if random <= 33 then
                    goals:ClearSubGoal()
                    goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20055, TARGET_ENE_0, 0, 0, 0, 0, 0)
                elseif random <= 67 then
                    goals:ClearSubGoal()
                    goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, 0, 0, 0, 0, 0)
                elseif random <= 100 then
                    goals:ClearSubGoal()
                    goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 0, 0, 0, 0, 0)
                end
            elseif distance <= 7 and actor:GetTimer(2) <= 0 then 
                actor:SetTimer(2, 30)
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20057, TARGET_ENE_0, 0, 0, 0, 0, 0)
            elseif distance <= 15 then 
                if random <= 50 then
                    goals:ClearSubGoal()
                    goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20056, TARGET_ENE_0, 0, 0, 0, 0, 0)
                else
                    goals:ClearSubGoal()
                    goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                end
            end
            return true
        elseif actor:HasSpecialEffectId(TARGET_SELF, 5059) then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20058, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        elseif actor:HasSpecialEffectId(TARGET_SELF, 5062) then
            if random <= 50 then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 0, 0, 0, 0, 0)
            end
            return true
        elseif actor:HasSpecialEffectId(TARGET_SELF, 5063) then
            if random <= 50 then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20059, TARGET_ENE_0, 0, 0, 0, 0, 0)
            end
            return true
        elseif actor:HasSpecialEffectId(TARGET_SELF, 5064) then
            goals:ClearSubGoal()
            goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        elseif actor:HasSpecialEffectId(TARGET_SELF, 5065) then
            goals:ClearSubGoal()
            goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3008, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        elseif actor:HasSpecialEffectId(TARGET_SELF, 5056) then
            if distance <= 4 then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 0, 0, 0, 0, 0)
            end
            return true
        elseif actor:HasSpecialEffectId(TARGET_SELF, 5066) then
            if distance >= 7 then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, 0, 0, 0, 0, 0)
            end
            return true
        elseif actor:HasSpecialEffectId(TARGET_SELF, 5067) then
            goals:ClearSubGoal()
            goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        elseif actor:HasSpecialEffectId(TARGET_SELF, 5068) then
            if actor:GetTimer(2) <= 0 then
                actor:SetTimer(2, 30)
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 0, 0, 0, 0, 0)
            else
                if random <= 50 then
                    goals:ClearSubGoal()
                    goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3026, TARGET_ENE_0, 0, 0, 0, 0, 0)
                else
                    goals:ClearSubGoal()
                    goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 0, 0, 0, 0, 0)
                end
            end
            return true
        elseif actor:HasSpecialEffectId(TARGET_SELF, 5069) then
            if random <= 50 then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif actor:HasSpecialEffectId(TARGET_SELF, 5058) and actor:GetNumber(5) <= random1 then
                actor:SetNumber(5, actor:GetNumber(5) + 1)
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20058, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        elseif actor:HasSpecialEffectId(TARGET_SELF, 5075) then
            if random <= 20 then 
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 20033, POINT_EVENT, 0, 0, 0, 0, 0)
                return true
            end
            return true
        elseif actor:HasSpecialEffectId(TARGET_SELF, 5078) then
            if random <= 20 then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 20028, POINT_EVENT, 0, 0, 0, 0, 0)
            end
            return true
        elseif actor:HasSpecialEffectId(TARGET_SELF, 5041) then
            goals:ClearSubGoal()
            goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 20029, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        elseif actor:HasSpecialEffectId(TARGET_SELF, 5042) then
            goals:ClearSubGoal()
            goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 20021, POINT_EVENT, 0, 0, 0, 0, 0)
            return true
        elseif actor:HasSpecialEffectId(TARGET_SELF, 5043) then
            goals:ClearSubGoal()
            goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 20022, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        elseif actor:HasSpecialEffectId(TARGET_SELF, 5045) then
            goals:ClearSubGoal()
            goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 20023, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        elseif actor:HasSpecialEffectId(TARGET_SELF, 5027) then
            if actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 4.5 + actor:GetMapHitRadius(TARGET_SELF)) and actor:GetRemainingAttackCoolTime(3003) <= 0 and random < 45 then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 9.5 + actor:GetMapHitRadius(TARGET_SELF)) and distance > 2.5 then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 9.5 + actor:GetMapHitRadius(TARGET_SELF)) then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif actor:HasSpecialEffectId(TARGET_SELF, 5028) then
            if actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 8 + actor:GetMapHitRadius(TARGET_SELF)) and distance > 1 then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif distance <= 30 then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20054, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 40 + actor:GetMapHitRadius(TARGET_SELF)) and distance > 1 and actor:GetTimer(1) <= 0 then
                actor:SetTimer(1, 30)
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif distance < 1 then
                goals:ClearSubGoal()
                if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
                    goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, 0, 0, 0, 0, 0)
                elseif actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                    goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 0, 0, 0, 0, 0)
                elseif actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                    goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, 0, 0, 0, 0, 0)
                end
                return true
            end
        elseif actor:HasSpecialEffectId(TARGET_SELF, 5029) then
            if actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_RF, 240, -1, 9 + actor:GetMapHitRadius(TARGET_SELF)) then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif actor:HasSpecialEffectId(TARGET_SELF, 5033) and actor:GetTimer(3) <= 0 then
            if actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_RF, 240, -1, 999 + actor:GetMapHitRadius(TARGET_SELF)) and distance > 3 then
                actor:SetTimer(3, 15)
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif actor:HasSpecialEffectId(TARGET_SELF, 5030) then
            if actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 9 + actor:GetMapHitRadius(TARGET_SELF)) and distance > -0.5 then
                if random < 10 then
                    goals:ClearSubGoal()
                    goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    goals:ClearSubGoal()
                    goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
        elseif actor:HasSpecialEffectId(TARGET_SELF, 5031) then
            if actor:GetHpRate(TARGET_SELF) <= 0.7 and actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 50 + actor:GetMapHitRadius(TARGET_SELF)) and distance > 5 then
                if actor:GetTimer(2) <= 0 then
                    if random <= 50 then
                        actor:SetTimer(2, 30)
                        goals:ClearSubGoal()
                        goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    else
                        goals:ClearSubGoal()
                        goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3029, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    end
                else
                    goals:ClearSubGoal()
                    goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3029, TARGET_ENE_0, 0, 0, 0, 0, 0)
                end
                return true
            else
                if actor:GetTimer(2) <= 0 then
                    if random <= 50 then
                        actor:SetTimer(2, 30)
                        goals:ClearSubGoal()
                        goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    else
                        goals:ClearSubGoal()
                        goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3029, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    end
                else
                    goals:ClearSubGoal()
                    goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3029, TARGET_ENE_0, 0, 0, 0, 0, 0)
                end
            end
            return true
        elseif actor:HasSpecialEffectId(TARGET_SELF, 5032) then
            if actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 1 + actor:GetMapHitRadius(TARGET_SELF)) and actor:GetTimer(2) <= 0 and actor:GetHpRate(TARGET_SELF) <= 0.7 then
                actor:SetTimer(2, 30)
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 40 + actor:GetMapHitRadius(TARGET_SELF)) and distance > 1 and actor:GetTimer(1) <= 0 then
                actor:SetTimer(1, 20)
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif actor:HasSpecialEffectId(TARGET_SELF, 15255) then
            if actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 9 + actor:GetMapHitRadius(TARGET_SELF)) then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20010, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 13.3 + actor:GetMapHitRadius(TARGET_SELF)) and random < 50 then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20010, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif actor:HasSpecialEffectId(TARGET_SELF, 15256) then
            if actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 9 + actor:GetMapHitRadius(TARGET_SELF)) then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20011, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 13.3 + actor:GetMapHitRadius(TARGET_SELF)) and random < 50 then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20011, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif actor:HasSpecialEffectId(TARGET_SELF, 15258) then
            if actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, -1, 8 + actor:GetMapHitRadius(TARGET_SELF)) then
                if random > 70 then
                else
                    goals:ClearSubGoal()
                    goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 0, 0, 0, 0, 0)
                end
                return true
            elseif actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, -1, 8 + actor:GetMapHitRadius(TARGET_SELF)) then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, -1, 8 + actor:GetMapHitRadius(TARGET_SELF)) then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
    end
    return false
end

RegisterTableGoal(GOAL_BlackSwordMariques211020_AfterAttackAct, "BlackSwordMariques211020_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BlackSwordMariques211020_AfterAttackAct, true)

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end
