import InitE.DeadStages782.Parallel.Data.Chunk002
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation

namespace InitE.DeadStages782.Parallel
theorem node512_cond_eq : Flapjack.WordAlloc.removeDeadStructural input512 value421 value1 value2 = (output512, value422, value1) := by
  rw [input512_def, output512_def]
  try (conv => lhs; cbv)
  try rfl

theorem node513_cond_eq : Flapjack.WordAlloc.removeDeadStructural input513 value422 value1 value2 = (output513, value423, value1) := by
  rw [input513_def, output513_def]
  try (conv => lhs; cbv)
  try rfl

theorem node514_cond_eq : Flapjack.WordAlloc.removeDeadStructural input514 value423 value1 value2 = (output514, value424, value1) := by
  rw [input514_def, output514_def]
  try (conv => lhs; cbv)
  try rfl

theorem node515_cond_eq : Flapjack.WordAlloc.removeDeadStructural input515 value424 value1 value2 = (output515, value424, value1) := by
  rw [input515_def, output515_def]
  try (conv => lhs; cbv)
  try rfl

theorem node516_cond_eq : Flapjack.WordAlloc.removeDeadStructural input516 value424 value1 value2 = (output516, value425, value1) := by
  rw [input516_def, output516_def]
  try (conv => lhs; cbv)
  try rfl

theorem node517_cond_eq : Flapjack.WordAlloc.removeDeadStructural input517 value425 value1 value2 = (output517, value426, value1) := by
  rw [input517_def, output517_def]
  try (conv => lhs; cbv)
  try rfl

theorem node518_cond_eq
    (child516 : Flapjack.WordAlloc.removeDeadStructural input516 value424 value1 value2 = (output516, value425, value1))
    (child517 : Flapjack.WordAlloc.removeDeadStructural input517 value425 value1 value2 = (output517, value426, value1)) : Flapjack.WordAlloc.removeDeadStructural input518 value424 value1 value2 = (output518, value426, value1) := by
  rw [input518_def, output518_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child516]
  try dsimp only
  rw [child517]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node519_cond_eq : Flapjack.WordAlloc.removeDeadStructural input519 value426 value1 value2 = (output519, value427, value1) := by
  rw [input519_def, output519_def]
  try (conv => lhs; cbv)
  try rfl

theorem node520_cond_eq
    (child518 : Flapjack.WordAlloc.removeDeadStructural input518 value424 value1 value2 = (output518, value426, value1))
    (child519 : Flapjack.WordAlloc.removeDeadStructural input519 value426 value1 value2 = (output519, value427, value1)) : Flapjack.WordAlloc.removeDeadStructural input520 value424 value1 value2 = (output520, value427, value1) := by
  rw [input520_def, output520_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child518]
  try dsimp only
  rw [child519]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node521_cond_eq : Flapjack.WordAlloc.removeDeadStructural input521 value427 value1 value2 = (output521, value428, value1) := by
  rw [input521_def, output521_def]
  try (conv => lhs; cbv)
  try rfl

theorem node522_cond_eq : Flapjack.WordAlloc.removeDeadStructural input522 value428 value1 value2 = (output522, value429, value1) := by
  rw [input522_def, output522_def]
  try (conv => lhs; cbv)
  try rfl

theorem node523_cond_eq : Flapjack.WordAlloc.removeDeadStructural input523 value429 value1 value2 = (output523, value430, value1) := by
  rw [input523_def, output523_def]
  try (conv => lhs; cbv)
  try rfl

theorem node524_cond_eq : Flapjack.WordAlloc.removeDeadStructural input524 value430 value1 value2 = (output524, value431, value1) := by
  rw [input524_def, output524_def]
  try (conv => lhs; cbv)
  try rfl

theorem node525_cond_eq : Flapjack.WordAlloc.removeDeadStructural input525 value431 value1 value2 = (output525, value432, value1) := by
  rw [input525_def, output525_def]
  try (conv => lhs; cbv)
  try rfl

theorem node526_cond_eq : Flapjack.WordAlloc.removeDeadStructural input526 value432 value1 value2 = (output526, value433, value1) := by
  rw [input526_def, output526_def]
  try (conv => lhs; cbv)
  try rfl

theorem node527_cond_eq : Flapjack.WordAlloc.removeDeadStructural input527 value433 value1 value2 = (output527, value434, value1) := by
  rw [input527_def, output527_def]
  try (conv => lhs; cbv)
  try rfl

theorem node528_cond_eq : Flapjack.WordAlloc.removeDeadStructural input528 value434 value1 value2 = (output528, value435, value1) := by
  rw [input528_def, output528_def]
  try (conv => lhs; cbv)
  try rfl

theorem node529_cond_eq : Flapjack.WordAlloc.removeDeadStructural input529 value435 value1 value2 = (output529, value436, value1) := by
  rw [input529_def, output529_def]
  try (conv => lhs; cbv)
  try rfl

theorem node530_cond_eq : Flapjack.WordAlloc.removeDeadStructural input530 value436 value1 value2 = (output530, value437, value1) := by
  rw [input530_def, output530_def]
  try (conv => lhs; cbv)
  try rfl

theorem node531_cond_eq : Flapjack.WordAlloc.removeDeadStructural input531 value437 value1 value2 = (output531, value438, value1) := by
  rw [input531_def, output531_def]
  try (conv => lhs; cbv)
  try rfl

theorem node532_cond_eq : Flapjack.WordAlloc.removeDeadStructural input532 value438 value1 value2 = (output532, value439, value1) := by
  rw [input532_def, output532_def]
  try (conv => lhs; cbv)
  try rfl

theorem node533_cond_eq : Flapjack.WordAlloc.removeDeadStructural input533 value439 value1 value2 = (output533, value439, value1) := by
  rw [input533_def, output533_def]
  try (conv => lhs; cbv)
  try rfl

theorem node534_cond_eq : Flapjack.WordAlloc.removeDeadStructural input534 value439 value1 value2 = (output534, value440, value1) := by
  rw [input534_def, output534_def]
  try (conv => lhs; cbv)
  try rfl

theorem node535_cond_eq : Flapjack.WordAlloc.removeDeadStructural input535 value440 value1 value2 = (output535, value441, value1) := by
  rw [input535_def, output535_def]
  try (conv => lhs; cbv)
  try rfl

theorem node536_cond_eq
    (child534 : Flapjack.WordAlloc.removeDeadStructural input534 value439 value1 value2 = (output534, value440, value1))
    (child535 : Flapjack.WordAlloc.removeDeadStructural input535 value440 value1 value2 = (output535, value441, value1)) : Flapjack.WordAlloc.removeDeadStructural input536 value439 value1 value2 = (output536, value441, value1) := by
  rw [input536_def, output536_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child534]
  try dsimp only
  rw [child535]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node537_cond_eq : Flapjack.WordAlloc.removeDeadStructural input537 value441 value1 value2 = (output537, value442, value1) := by
  rw [input537_def, output537_def]
  try (conv => lhs; cbv)
  try rfl

theorem node538_cond_eq
    (child536 : Flapjack.WordAlloc.removeDeadStructural input536 value439 value1 value2 = (output536, value441, value1))
    (child537 : Flapjack.WordAlloc.removeDeadStructural input537 value441 value1 value2 = (output537, value442, value1)) : Flapjack.WordAlloc.removeDeadStructural input538 value439 value1 value2 = (output538, value442, value1) := by
  rw [input538_def, output538_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child536]
  try dsimp only
  rw [child537]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node539_cond_eq : Flapjack.WordAlloc.removeDeadStructural input539 value442 value1 value2 = (output539, value443, value1) := by
  rw [input539_def, output539_def]
  try (conv => lhs; cbv)
  try rfl

theorem node540_cond_eq : Flapjack.WordAlloc.removeDeadStructural input540 value443 value1 value2 = (output540, value444, value1) := by
  rw [input540_def, output540_def]
  try (conv => lhs; cbv)
  try rfl

theorem node541_cond_eq : Flapjack.WordAlloc.removeDeadStructural input541 value444 value1 value2 = (output541, value445, value1) := by
  rw [input541_def, output541_def]
  try (conv => lhs; cbv)
  try rfl

theorem node542_cond_eq : Flapjack.WordAlloc.removeDeadStructural input542 value445 value1 value2 = (output542, value446, value1) := by
  rw [input542_def, output542_def]
  try (conv => lhs; cbv)
  try rfl

theorem node543_cond_eq : Flapjack.WordAlloc.removeDeadStructural input543 value446 value1 value2 = (output543, value447, value1) := by
  rw [input543_def, output543_def]
  try (conv => lhs; cbv)
  try rfl

theorem node544_cond_eq : Flapjack.WordAlloc.removeDeadStructural input544 value447 value1 value2 = (output544, value448, value1) := by
  rw [input544_def, output544_def]
  try (conv => lhs; cbv)
  try rfl

theorem node545_cond_eq : Flapjack.WordAlloc.removeDeadStructural input545 value448 value1 value2 = (output545, value448, value1) := by
  rw [input545_def, output545_def]
  try (conv => lhs; cbv)
  try rfl

theorem node546_cond_eq : Flapjack.WordAlloc.removeDeadStructural input546 value448 value1 value2 = (output546, value448, value1) := by
  rw [input546_def, output546_def]
  try (conv => lhs; cbv)
  try rfl

theorem node547_cond_eq : Flapjack.WordAlloc.removeDeadStructural input547 value448 value1 value2 = (output547, value448, value1) := by
  rw [input547_def, output547_def]
  try (conv => lhs; cbv)
  try rfl

theorem node548_cond_eq : Flapjack.WordAlloc.removeDeadStructural input548 value448 value1 value2 = (output548, value448, value1) := by
  rw [input548_def, output548_def]
  try (conv => lhs; cbv)
  try rfl

theorem node549_cond_eq
    (child547 : Flapjack.WordAlloc.removeDeadStructural input547 value448 value1 value2 = (output547, value448, value1))
    (child548 : Flapjack.WordAlloc.removeDeadStructural input548 value448 value1 value2 = (output548, value448, value1)) : Flapjack.WordAlloc.removeDeadStructural input549 value448 value1 value2 = (output549, value448, value1) := by
  rw [input549_def, output549_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child547]
  try dsimp only
  rw [child548]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node550_cond_eq
    (child546 : Flapjack.WordAlloc.removeDeadStructural input546 value448 value1 value2 = (output546, value448, value1))
    (child549 : Flapjack.WordAlloc.removeDeadStructural input549 value448 value1 value2 = (output549, value448, value1)) : Flapjack.WordAlloc.removeDeadStructural input550 value448 value1 value2 = (output550, value448, value1) := by
  rw [input550_def, output550_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child546]
  try dsimp only
  rw [child549]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node551_cond_eq : Flapjack.WordAlloc.removeDeadStructural input551 value448 value1 value2 = (output551, value448, value1) := by
  rw [input551_def, output551_def]
  try (conv => lhs; cbv)
  try rfl

theorem node552_cond_eq : Flapjack.WordAlloc.removeDeadStructural input552 value448 value1 value2 = (output552, value449, value1) := by
  rw [input552_def, output552_def]
  try (conv => lhs; cbv)
  try rfl

theorem node553_cond_eq : Flapjack.WordAlloc.removeDeadStructural input553 value449 value1 value2 = (output553, value449, value1) := by
  rw [input553_def, output553_def]
  try (conv => lhs; cbv)
  try rfl

theorem node554_cond_eq : Flapjack.WordAlloc.removeDeadStructural input554 value449 value1 value2 = (output554, value450, value1) := by
  rw [input554_def, output554_def]
  try (conv => lhs; cbv)
  try rfl

theorem node555_cond_eq : Flapjack.WordAlloc.removeDeadStructural input555 value450 value1 value2 = (output555, value451, value1) := by
  rw [input555_def, output555_def]
  try (conv => lhs; cbv)
  try rfl

theorem node556_cond_eq : Flapjack.WordAlloc.removeDeadStructural input556 value451 value1 value2 = (output556, value452, value1) := by
  rw [input556_def, output556_def]
  try (conv => lhs; cbv)
  try rfl

theorem node557_cond_eq : Flapjack.WordAlloc.removeDeadStructural input557 value452 value1 value2 = (output557, value453, value1) := by
  rw [input557_def, output557_def]
  try (conv => lhs; cbv)
  try rfl

theorem node558_cond_eq : Flapjack.WordAlloc.removeDeadStructural input558 value453 value1 value2 = (output558, value454, value1) := by
  rw [input558_def, output558_def]
  try (conv => lhs; cbv)
  try rfl

theorem node559_cond_eq : Flapjack.WordAlloc.removeDeadStructural input559 value454 value1 value2 = (output559, value455, value1) := by
  rw [input559_def, output559_def]
  try (conv => lhs; cbv)
  try rfl

theorem node560_cond_eq : Flapjack.WordAlloc.removeDeadStructural input560 value455 value1 value2 = (output560, value456, value1) := by
  rw [input560_def, output560_def]
  try (conv => lhs; cbv)
  try rfl

theorem node561_cond_eq : Flapjack.WordAlloc.removeDeadStructural input561 value456 value1 value2 = (output561, value456, value1) := by
  rw [input561_def, output561_def]
  try (conv => lhs; cbv)
  try rfl

theorem node562_cond_eq : Flapjack.WordAlloc.removeDeadStructural input562 value456 value1 value2 = (output562, value457, value1) := by
  rw [input562_def, output562_def]
  try (conv => lhs; cbv)
  try rfl

theorem node563_cond_eq : Flapjack.WordAlloc.removeDeadStructural input563 value457 value1 value2 = (output563, value458, value1) := by
  rw [input563_def, output563_def]
  try (conv => lhs; cbv)
  try rfl

theorem node564_cond_eq : Flapjack.WordAlloc.removeDeadStructural input564 value458 value1 value2 = (output564, value458, value1) := by
  rw [input564_def, output564_def]
  try (conv => lhs; cbv)
  try rfl

theorem node565_cond_eq : Flapjack.WordAlloc.removeDeadStructural input565 value458 value1 value2 = (output565, value459, value1) := by
  rw [input565_def, output565_def]
  try (conv => lhs; cbv)
  try rfl

theorem node566_cond_eq : Flapjack.WordAlloc.removeDeadStructural input566 value459 value1 value2 = (output566, value459, value1) := by
  rw [input566_def, output566_def]
  try (conv => lhs; cbv)
  try rfl

theorem node567_cond_eq : Flapjack.WordAlloc.removeDeadStructural input567 value459 value1 value2 = (output567, value460, value1) := by
  rw [input567_def, output567_def]
  try (conv => lhs; cbv)
  try rfl

theorem node568_cond_eq : Flapjack.WordAlloc.removeDeadStructural input568 value460 value1 value2 = (output568, value461, value1) := by
  rw [input568_def, output568_def]
  try (conv => lhs; cbv)
  try rfl

theorem node569_cond_eq : Flapjack.WordAlloc.removeDeadStructural input569 value461 value1 value2 = (output569, value462, value1) := by
  rw [input569_def, output569_def]
  try (conv => lhs; cbv)
  try rfl

theorem node570_cond_eq : Flapjack.WordAlloc.removeDeadStructural input570 value462 value1 value2 = (output570, value462, value1) := by
  rw [input570_def, output570_def]
  try (conv => lhs; cbv)
  try rfl

theorem node571_cond_eq : Flapjack.WordAlloc.removeDeadStructural input571 value462 value1 value2 = (output571, value463, value1) := by
  rw [input571_def, output571_def]
  try (conv => lhs; cbv)
  try rfl

theorem node572_cond_eq : Flapjack.WordAlloc.removeDeadStructural input572 value463 value1 value2 = (output572, value463, value1) := by
  rw [input572_def, output572_def]
  try (conv => lhs; cbv)
  try rfl

theorem node573_cond_eq : Flapjack.WordAlloc.removeDeadStructural input573 value463 value1 value2 = (output573, value464, value1) := by
  rw [input573_def, output573_def]
  try (conv => lhs; cbv)
  try rfl

theorem node574_cond_eq : Flapjack.WordAlloc.removeDeadStructural input574 value464 value1 value2 = (output574, value465, value1) := by
  rw [input574_def, output574_def]
  try (conv => lhs; cbv)
  try rfl

theorem node575_cond_eq : Flapjack.WordAlloc.removeDeadStructural input575 value465 value1 value2 = (output575, value465, value1) := by
  rw [input575_def, output575_def]
  try (conv => lhs; cbv)
  try rfl

theorem node576_cond_eq : Flapjack.WordAlloc.removeDeadStructural input576 value465 value1 value2 = (output576, value465, value1) := by
  rw [input576_def, output576_def]
  try (conv => lhs; cbv)
  try rfl

theorem node577_cond_eq : Flapjack.WordAlloc.removeDeadStructural input577 value465 value1 value2 = (output577, value466, value1) := by
  rw [input577_def, output577_def]
  try (conv => lhs; cbv)
  try rfl

theorem node578_cond_eq : Flapjack.WordAlloc.removeDeadStructural input578 value466 value1 value2 = (output578, value466, value1) := by
  rw [input578_def, output578_def]
  try (conv => lhs; cbv)
  try rfl

theorem node579_cond_eq
    (child577 : Flapjack.WordAlloc.removeDeadStructural input577 value465 value1 value2 = (output577, value466, value1))
    (child578 : Flapjack.WordAlloc.removeDeadStructural input578 value466 value1 value2 = (output578, value466, value1)) : Flapjack.WordAlloc.removeDeadStructural input579 value465 value1 value2 = (output579, value466, value1) := by
  rw [input579_def, output579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child577]
  try dsimp only
  rw [child578]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node580_cond_eq
    (child576 : Flapjack.WordAlloc.removeDeadStructural input576 value465 value1 value2 = (output576, value465, value1))
    (child579 : Flapjack.WordAlloc.removeDeadStructural input579 value465 value1 value2 = (output579, value466, value1)) : Flapjack.WordAlloc.removeDeadStructural input580 value465 value1 value2 = (output580, value466, value1) := by
  rw [input580_def, output580_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child576]
  try dsimp only
  rw [child579]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node581_cond_eq
    (child575 : Flapjack.WordAlloc.removeDeadStructural input575 value465 value1 value2 = (output575, value465, value1))
    (child580 : Flapjack.WordAlloc.removeDeadStructural input580 value465 value1 value2 = (output580, value466, value1)) : Flapjack.WordAlloc.removeDeadStructural input581 value465 value1 value2 = (output581, value466, value1) := by
  rw [input581_def, output581_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child575]
  try dsimp only
  rw [child580]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node582_cond_eq
    (child574 : Flapjack.WordAlloc.removeDeadStructural input574 value464 value1 value2 = (output574, value465, value1))
    (child581 : Flapjack.WordAlloc.removeDeadStructural input581 value465 value1 value2 = (output581, value466, value1)) : Flapjack.WordAlloc.removeDeadStructural input582 value464 value1 value2 = (output582, value466, value1) := by
  rw [input582_def, output582_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child574]
  try dsimp only
  rw [child581]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node583_cond_eq
    (child573 : Flapjack.WordAlloc.removeDeadStructural input573 value463 value1 value2 = (output573, value464, value1))
    (child582 : Flapjack.WordAlloc.removeDeadStructural input582 value464 value1 value2 = (output582, value466, value1)) : Flapjack.WordAlloc.removeDeadStructural input583 value463 value1 value2 = (output583, value466, value1) := by
  rw [input583_def, output583_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child573]
  try dsimp only
  rw [child582]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node584_cond_eq
    (child572 : Flapjack.WordAlloc.removeDeadStructural input572 value463 value1 value2 = (output572, value463, value1))
    (child583 : Flapjack.WordAlloc.removeDeadStructural input583 value463 value1 value2 = (output583, value466, value1)) : Flapjack.WordAlloc.removeDeadStructural input584 value463 value1 value2 = (output584, value466, value1) := by
  rw [input584_def, output584_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child572]
  try dsimp only
  rw [child583]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node585_cond_eq
    (child571 : Flapjack.WordAlloc.removeDeadStructural input571 value462 value1 value2 = (output571, value463, value1))
    (child584 : Flapjack.WordAlloc.removeDeadStructural input584 value463 value1 value2 = (output584, value466, value1)) : Flapjack.WordAlloc.removeDeadStructural input585 value462 value1 value2 = (output585, value466, value1) := by
  rw [input585_def, output585_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child571]
  try dsimp only
  rw [child584]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node586_cond_eq
    (child570 : Flapjack.WordAlloc.removeDeadStructural input570 value462 value1 value2 = (output570, value462, value1))
    (child585 : Flapjack.WordAlloc.removeDeadStructural input585 value462 value1 value2 = (output585, value466, value1)) : Flapjack.WordAlloc.removeDeadStructural input586 value462 value1 value2 = (output586, value466, value1) := by
  rw [input586_def, output586_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child570]
  try dsimp only
  rw [child585]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node587_cond_eq
    (child569 : Flapjack.WordAlloc.removeDeadStructural input569 value461 value1 value2 = (output569, value462, value1))
    (child586 : Flapjack.WordAlloc.removeDeadStructural input586 value462 value1 value2 = (output586, value466, value1)) : Flapjack.WordAlloc.removeDeadStructural input587 value461 value1 value2 = (output587, value466, value1) := by
  rw [input587_def, output587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child569]
  try dsimp only
  rw [child586]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node588_cond_eq
    (child568 : Flapjack.WordAlloc.removeDeadStructural input568 value460 value1 value2 = (output568, value461, value1))
    (child587 : Flapjack.WordAlloc.removeDeadStructural input587 value461 value1 value2 = (output587, value466, value1)) : Flapjack.WordAlloc.removeDeadStructural input588 value460 value1 value2 = (output588, value466, value1) := by
  rw [input588_def, output588_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child568]
  try dsimp only
  rw [child587]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node589_cond_eq
    (child567 : Flapjack.WordAlloc.removeDeadStructural input567 value459 value1 value2 = (output567, value460, value1))
    (child588 : Flapjack.WordAlloc.removeDeadStructural input588 value460 value1 value2 = (output588, value466, value1)) : Flapjack.WordAlloc.removeDeadStructural input589 value459 value1 value2 = (output589, value466, value1) := by
  rw [input589_def, output589_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child567]
  try dsimp only
  rw [child588]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node590_cond_eq
    (child566 : Flapjack.WordAlloc.removeDeadStructural input566 value459 value1 value2 = (output566, value459, value1))
    (child589 : Flapjack.WordAlloc.removeDeadStructural input589 value459 value1 value2 = (output589, value466, value1)) : Flapjack.WordAlloc.removeDeadStructural input590 value459 value1 value2 = (output590, value466, value1) := by
  rw [input590_def, output590_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child566]
  try dsimp only
  rw [child589]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node591_cond_eq
    (child565 : Flapjack.WordAlloc.removeDeadStructural input565 value458 value1 value2 = (output565, value459, value1))
    (child590 : Flapjack.WordAlloc.removeDeadStructural input590 value459 value1 value2 = (output590, value466, value1)) : Flapjack.WordAlloc.removeDeadStructural input591 value458 value1 value2 = (output591, value466, value1) := by
  rw [input591_def, output591_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child565]
  try dsimp only
  rw [child590]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node592_cond_eq
    (child564 : Flapjack.WordAlloc.removeDeadStructural input564 value458 value1 value2 = (output564, value458, value1))
    (child591 : Flapjack.WordAlloc.removeDeadStructural input591 value458 value1 value2 = (output591, value466, value1)) : Flapjack.WordAlloc.removeDeadStructural input592 value458 value1 value2 = (output592, value466, value1) := by
  rw [input592_def, output592_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child564]
  try dsimp only
  rw [child591]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node593_cond_eq
    (child563 : Flapjack.WordAlloc.removeDeadStructural input563 value457 value1 value2 = (output563, value458, value1))
    (child592 : Flapjack.WordAlloc.removeDeadStructural input592 value458 value1 value2 = (output592, value466, value1)) : Flapjack.WordAlloc.removeDeadStructural input593 value457 value1 value2 = (output593, value466, value1) := by
  rw [input593_def, output593_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child563]
  try dsimp only
  rw [child592]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node594_cond_eq
    (child562 : Flapjack.WordAlloc.removeDeadStructural input562 value456 value1 value2 = (output562, value457, value1))
    (child593 : Flapjack.WordAlloc.removeDeadStructural input593 value457 value1 value2 = (output593, value466, value1)) : Flapjack.WordAlloc.removeDeadStructural input594 value456 value1 value2 = (output594, value466, value1) := by
  rw [input594_def, output594_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child562]
  try dsimp only
  rw [child593]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node595_cond_eq
    (child561 : Flapjack.WordAlloc.removeDeadStructural input561 value456 value1 value2 = (output561, value456, value1))
    (child594 : Flapjack.WordAlloc.removeDeadStructural input594 value456 value1 value2 = (output594, value466, value1)) : Flapjack.WordAlloc.removeDeadStructural input595 value456 value1 value2 = (output595, value466, value1) := by
  rw [input595_def, output595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child561]
  try dsimp only
  rw [child594]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node596_cond_eq
    (child560 : Flapjack.WordAlloc.removeDeadStructural input560 value455 value1 value2 = (output560, value456, value1))
    (child595 : Flapjack.WordAlloc.removeDeadStructural input595 value456 value1 value2 = (output595, value466, value1)) : Flapjack.WordAlloc.removeDeadStructural input596 value455 value1 value2 = (output596, value466, value1) := by
  rw [input596_def, output596_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child560]
  try dsimp only
  rw [child595]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node597_cond_eq
    (child559 : Flapjack.WordAlloc.removeDeadStructural input559 value454 value1 value2 = (output559, value455, value1))
    (child596 : Flapjack.WordAlloc.removeDeadStructural input596 value455 value1 value2 = (output596, value466, value1)) : Flapjack.WordAlloc.removeDeadStructural input597 value454 value1 value2 = (output597, value466, value1) := by
  rw [input597_def, output597_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child559]
  try dsimp only
  rw [child596]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node598_cond_eq
    (child558 : Flapjack.WordAlloc.removeDeadStructural input558 value453 value1 value2 = (output558, value454, value1))
    (child597 : Flapjack.WordAlloc.removeDeadStructural input597 value454 value1 value2 = (output597, value466, value1)) : Flapjack.WordAlloc.removeDeadStructural input598 value453 value1 value2 = (output598, value466, value1) := by
  rw [input598_def, output598_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child558]
  try dsimp only
  rw [child597]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node599_cond_eq
    (child557 : Flapjack.WordAlloc.removeDeadStructural input557 value452 value1 value2 = (output557, value453, value1))
    (child598 : Flapjack.WordAlloc.removeDeadStructural input598 value453 value1 value2 = (output598, value466, value1)) : Flapjack.WordAlloc.removeDeadStructural input599 value452 value1 value2 = (output599, value466, value1) := by
  rw [input599_def, output599_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child557]
  try dsimp only
  rw [child598]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node600_cond_eq
    (child556 : Flapjack.WordAlloc.removeDeadStructural input556 value451 value1 value2 = (output556, value452, value1))
    (child599 : Flapjack.WordAlloc.removeDeadStructural input599 value452 value1 value2 = (output599, value466, value1)) : Flapjack.WordAlloc.removeDeadStructural input600 value451 value1 value2 = (output600, value466, value1) := by
  rw [input600_def, output600_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child556]
  try dsimp only
  rw [child599]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node601_cond_eq
    (child555 : Flapjack.WordAlloc.removeDeadStructural input555 value450 value1 value2 = (output555, value451, value1))
    (child600 : Flapjack.WordAlloc.removeDeadStructural input600 value451 value1 value2 = (output600, value466, value1)) : Flapjack.WordAlloc.removeDeadStructural input601 value450 value1 value2 = (output601, value466, value1) := by
  rw [input601_def, output601_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child555]
  try dsimp only
  rw [child600]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node602_cond_eq
    (child554 : Flapjack.WordAlloc.removeDeadStructural input554 value449 value1 value2 = (output554, value450, value1))
    (child601 : Flapjack.WordAlloc.removeDeadStructural input601 value450 value1 value2 = (output601, value466, value1)) : Flapjack.WordAlloc.removeDeadStructural input602 value449 value1 value2 = (output602, value466, value1) := by
  rw [input602_def, output602_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child554]
  try dsimp only
  rw [child601]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node603_cond_eq
    (child553 : Flapjack.WordAlloc.removeDeadStructural input553 value449 value1 value2 = (output553, value449, value1))
    (child602 : Flapjack.WordAlloc.removeDeadStructural input602 value449 value1 value2 = (output602, value466, value1)) : Flapjack.WordAlloc.removeDeadStructural input603 value449 value1 value2 = (output603, value466, value1) := by
  rw [input603_def, output603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child553]
  try dsimp only
  rw [child602]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node604_cond_eq
    (child552 : Flapjack.WordAlloc.removeDeadStructural input552 value448 value1 value2 = (output552, value449, value1))
    (child603 : Flapjack.WordAlloc.removeDeadStructural input603 value449 value1 value2 = (output603, value466, value1)) : Flapjack.WordAlloc.removeDeadStructural input604 value448 value1 value2 = (output604, value466, value1) := by
  rw [input604_def, output604_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child552]
  try dsimp only
  rw [child603]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node605_cond_eq
    (child551 : Flapjack.WordAlloc.removeDeadStructural input551 value448 value1 value2 = (output551, value448, value1))
    (child604 : Flapjack.WordAlloc.removeDeadStructural input604 value448 value1 value2 = (output604, value466, value1)) : Flapjack.WordAlloc.removeDeadStructural input605 value448 value1 value2 = (output605, value466, value1) := by
  rw [input605_def, output605_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child551]
  try dsimp only
  rw [child604]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node606_cond_eq : Flapjack.WordAlloc.removeDeadStructural input606 value466 value1 value2 = (output606, value467, value1) := by
  rw [input606_def, output606_def]
  try (conv => lhs; cbv)
  try rfl

theorem node607_cond_eq
    (child605 : Flapjack.WordAlloc.removeDeadStructural input605 value448 value1 value2 = (output605, value466, value1))
    (child606 : Flapjack.WordAlloc.removeDeadStructural input606 value466 value1 value2 = (output606, value467, value1)) : Flapjack.WordAlloc.removeDeadStructural input607 value448 value1 value2 = (output607, value467, value1) := by
  rw [input607_def, output607_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child605]
  try dsimp only
  rw [child606]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node608_cond_eq : Flapjack.WordAlloc.removeDeadStructural input608 value467 value1 value2 = (output608, value468, value1) := by
  rw [input608_def, output608_def]
  try (conv => lhs; cbv)
  try rfl

theorem node609_cond_eq : Flapjack.WordAlloc.removeDeadStructural input609 value468 value1 value2 = (output609, value469, value1) := by
  rw [input609_def, output609_def]
  try (conv => lhs; cbv)
  try rfl

theorem node610_cond_eq
    (child608 : Flapjack.WordAlloc.removeDeadStructural input608 value467 value1 value2 = (output608, value468, value1))
    (child609 : Flapjack.WordAlloc.removeDeadStructural input609 value468 value1 value2 = (output609, value469, value1)) : Flapjack.WordAlloc.removeDeadStructural input610 value467 value1 value2 = (output610, value469, value1) := by
  rw [input610_def, output610_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child608]
  try dsimp only
  rw [child609]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node611_cond_eq : Flapjack.WordAlloc.removeDeadStructural input611 value469 value1 value2 = (output611, value467, value1) := by
  rw [input611_def, output611_def]
  try (conv => lhs; cbv)
  try rfl

theorem node612_cond_eq : Flapjack.WordAlloc.removeDeadStructural input612 value467 value1 value2 = (output612, value470, value1) := by
  rw [input612_def, output612_def]
  try (conv => lhs; cbv)
  try rfl

theorem node613_cond_eq : Flapjack.WordAlloc.removeDeadStructural input613 value470 value1 value2 = (output613, value471, value1) := by
  rw [input613_def, output613_def]
  try (conv => lhs; cbv)
  try rfl

theorem node614_cond_eq
    (child612 : Flapjack.WordAlloc.removeDeadStructural input612 value467 value1 value2 = (output612, value470, value1))
    (child613 : Flapjack.WordAlloc.removeDeadStructural input613 value470 value1 value2 = (output613, value471, value1)) : Flapjack.WordAlloc.removeDeadStructural input614 value467 value1 value2 = (output614, value471, value1) := by
  rw [input614_def, output614_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child612]
  try dsimp only
  rw [child613]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node615_cond_eq : Flapjack.WordAlloc.removeDeadStructural input615 value471 value1 value2 = (output615, value472, value1) := by
  rw [input615_def, output615_def]
  try (conv => lhs; cbv)
  try rfl

theorem node616_cond_eq : Flapjack.WordAlloc.removeDeadStructural input616 value472 value1 value2 = (output616, value473, value1) := by
  rw [input616_def, output616_def]
  try (conv => lhs; cbv)
  try rfl

theorem node617_cond_eq : Flapjack.WordAlloc.removeDeadStructural input617 value473 value1 value2 = (output617, value474, value1) := by
  rw [input617_def, output617_def]
  try (conv => lhs; cbv)
  try rfl

theorem node618_cond_eq
    (child616 : Flapjack.WordAlloc.removeDeadStructural input616 value472 value1 value2 = (output616, value473, value1))
    (child617 : Flapjack.WordAlloc.removeDeadStructural input617 value473 value1 value2 = (output617, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input618 value472 value1 value2 = (output618, value474, value1) := by
  rw [input618_def, output618_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child616]
  try dsimp only
  rw [child617]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node619_cond_eq : Flapjack.WordAlloc.removeDeadStructural input619 value474 value1 value2 = (output619, value475, value1) := by
  rw [input619_def, output619_def]
  try (conv => lhs; cbv)
  try rfl

theorem node620_cond_eq : Flapjack.WordAlloc.removeDeadStructural input620 value475 value1 value2 = (output620, value476, value1) := by
  rw [input620_def, output620_def]
  try (conv => lhs; cbv)
  try rfl

theorem node621_cond_eq : Flapjack.WordAlloc.removeDeadStructural input621 value476 value1 value2 = (output621, value477, value1) := by
  rw [input621_def, output621_def]
  try (conv => lhs; cbv)
  try rfl

theorem node622_cond_eq
    (child620 : Flapjack.WordAlloc.removeDeadStructural input620 value475 value1 value2 = (output620, value476, value1))
    (child621 : Flapjack.WordAlloc.removeDeadStructural input621 value476 value1 value2 = (output621, value477, value1)) : Flapjack.WordAlloc.removeDeadStructural input622 value475 value1 value2 = (output622, value477, value1) := by
  rw [input622_def, output622_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child620]
  try dsimp only
  rw [child621]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node623_cond_eq : Flapjack.WordAlloc.removeDeadStructural input623 value477 value1 value2 = (output623, value478, value1) := by
  rw [input623_def, output623_def]
  try (conv => lhs; cbv)
  try rfl

theorem node624_cond_eq : Flapjack.WordAlloc.removeDeadStructural input624 value478 value1 value2 = (output624, value479, value1) := by
  rw [input624_def, output624_def]
  try (conv => lhs; cbv)
  try rfl

theorem node625_cond_eq : Flapjack.WordAlloc.removeDeadStructural input625 value479 value1 value2 = (output625, value480, value1) := by
  rw [input625_def, output625_def]
  try (conv => lhs; cbv)
  try rfl

theorem node626_cond_eq
    (child624 : Flapjack.WordAlloc.removeDeadStructural input624 value478 value1 value2 = (output624, value479, value1))
    (child625 : Flapjack.WordAlloc.removeDeadStructural input625 value479 value1 value2 = (output625, value480, value1)) : Flapjack.WordAlloc.removeDeadStructural input626 value478 value1 value2 = (output626, value480, value1) := by
  rw [input626_def, output626_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child624]
  try dsimp only
  rw [child625]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node627_cond_eq : Flapjack.WordAlloc.removeDeadStructural input627 value480 value1 value2 = (output627, value481, value1) := by
  rw [input627_def, output627_def]
  try (conv => lhs; cbv)
  try rfl

theorem node628_cond_eq : Flapjack.WordAlloc.removeDeadStructural input628 value481 value1 value2 = (output628, value482, value1) := by
  rw [input628_def, output628_def]
  try (conv => lhs; cbv)
  try rfl

theorem node629_cond_eq : Flapjack.WordAlloc.removeDeadStructural input629 value482 value1 value2 = (output629, value483, value1) := by
  rw [input629_def, output629_def]
  try (conv => lhs; cbv)
  try rfl

theorem node630_cond_eq
    (child628 : Flapjack.WordAlloc.removeDeadStructural input628 value481 value1 value2 = (output628, value482, value1))
    (child629 : Flapjack.WordAlloc.removeDeadStructural input629 value482 value1 value2 = (output629, value483, value1)) : Flapjack.WordAlloc.removeDeadStructural input630 value481 value1 value2 = (output630, value483, value1) := by
  rw [input630_def, output630_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child628]
  try dsimp only
  rw [child629]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node631_cond_eq : Flapjack.WordAlloc.removeDeadStructural input631 value483 value1 value2 = (output631, value484, value1) := by
  rw [input631_def, output631_def]
  try (conv => lhs; cbv)
  try rfl

theorem node632_cond_eq : Flapjack.WordAlloc.removeDeadStructural input632 value484 value1 value2 = (output632, value485, value1) := by
  rw [input632_def, output632_def]
  try (conv => lhs; cbv)
  try rfl

theorem node633_cond_eq : Flapjack.WordAlloc.removeDeadStructural input633 value485 value1 value2 = (output633, value486, value1) := by
  rw [input633_def, output633_def]
  try (conv => lhs; cbv)
  try rfl

theorem node634_cond_eq
    (child632 : Flapjack.WordAlloc.removeDeadStructural input632 value484 value1 value2 = (output632, value485, value1))
    (child633 : Flapjack.WordAlloc.removeDeadStructural input633 value485 value1 value2 = (output633, value486, value1)) : Flapjack.WordAlloc.removeDeadStructural input634 value484 value1 value2 = (output634, value486, value1) := by
  rw [input634_def, output634_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child632]
  try dsimp only
  rw [child633]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node635_cond_eq : Flapjack.WordAlloc.removeDeadStructural input635 value486 value1 value2 = (output635, value487, value1) := by
  rw [input635_def, output635_def]
  try (conv => lhs; cbv)
  try rfl

theorem node636_cond_eq : Flapjack.WordAlloc.removeDeadStructural input636 value487 value1 value2 = (output636, value487, value1) := by
  rw [input636_def, output636_def]
  try (conv => lhs; cbv)
  try rfl

theorem node637_cond_eq : Flapjack.WordAlloc.removeDeadStructural input637 value487 value1 value2 = (output637, value487, value1) := by
  rw [input637_def, output637_def]
  try (conv => lhs; cbv)
  try rfl

theorem node638_cond_eq : Flapjack.WordAlloc.removeDeadStructural input638 value487 value1 value2 = (output638, value487, value1) := by
  rw [input638_def, output638_def]
  try (conv => lhs; cbv)
  try rfl

theorem node639_cond_eq : Flapjack.WordAlloc.removeDeadStructural input639 value487 value1 value2 = (output639, value487, value1) := by
  rw [input639_def, output639_def]
  try (conv => lhs; cbv)
  try rfl

theorem node640_cond_eq : Flapjack.WordAlloc.removeDeadStructural input640 value487 value1 value2 = (output640, value487, value1) := by
  rw [input640_def, output640_def]
  try (conv => lhs; cbv)
  try rfl

theorem node641_cond_eq : Flapjack.WordAlloc.removeDeadStructural input641 value487 value1 value2 = (output641, value487, value1) := by
  rw [input641_def, output641_def]
  try (conv => lhs; cbv)
  try rfl

theorem node642_cond_eq : Flapjack.WordAlloc.removeDeadStructural input642 value487 value1 value2 = (output642, value467, value1) := by
  rw [input642_def, output642_def]
  try (conv => lhs; cbv)
  try rfl

theorem node643_cond_eq : Flapjack.WordAlloc.removeDeadStructural input643 value467 value1 value2 = (output643, value488, value1) := by
  rw [input643_def, output643_def]
  try (conv => lhs; cbv)
  try rfl

theorem node644_cond_eq
    (child642 : Flapjack.WordAlloc.removeDeadStructural input642 value487 value1 value2 = (output642, value467, value1))
    (child643 : Flapjack.WordAlloc.removeDeadStructural input643 value467 value1 value2 = (output643, value488, value1)) : Flapjack.WordAlloc.removeDeadStructural input644 value487 value1 value2 = (output644, value488, value1) := by
  rw [input644_def, output644_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child642]
  try dsimp only
  rw [child643]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node645_cond_eq : Flapjack.WordAlloc.removeDeadStructural input645 value488 value1 value2 = (output645, value489, value1) := by
  rw [input645_def, output645_def]
  try (conv => lhs; cbv)
  try rfl

theorem node646_cond_eq : Flapjack.WordAlloc.removeDeadStructural input646 value489 value1 value2 = (output646, value490, value1) := by
  rw [input646_def, output646_def]
  try (conv => lhs; cbv)
  try rfl

theorem node647_cond_eq
    (child645 : Flapjack.WordAlloc.removeDeadStructural input645 value488 value1 value2 = (output645, value489, value1))
    (child646 : Flapjack.WordAlloc.removeDeadStructural input646 value489 value1 value2 = (output646, value490, value1)) : Flapjack.WordAlloc.removeDeadStructural input647 value488 value1 value2 = (output647, value490, value1) := by
  rw [input647_def, output647_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child645]
  try dsimp only
  rw [child646]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node648_cond_eq : Flapjack.WordAlloc.removeDeadStructural input648 value490 value1 value2 = (output648, value491, value1) := by
  rw [input648_def, output648_def]
  try (conv => lhs; cbv)
  try rfl

theorem node649_cond_eq : Flapjack.WordAlloc.removeDeadStructural input649 value491 value1 value2 = (output649, value492, value1) := by
  rw [input649_def, output649_def]
  try (conv => lhs; cbv)
  try rfl

theorem node650_cond_eq : Flapjack.WordAlloc.removeDeadStructural input650 value492 value1 value2 = (output650, value493, value1) := by
  rw [input650_def, output650_def]
  try (conv => lhs; cbv)
  try rfl

theorem node651_cond_eq
    (child649 : Flapjack.WordAlloc.removeDeadStructural input649 value491 value1 value2 = (output649, value492, value1))
    (child650 : Flapjack.WordAlloc.removeDeadStructural input650 value492 value1 value2 = (output650, value493, value1)) : Flapjack.WordAlloc.removeDeadStructural input651 value491 value1 value2 = (output651, value493, value1) := by
  rw [input651_def, output651_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child649]
  try dsimp only
  rw [child650]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node652_cond_eq : Flapjack.WordAlloc.removeDeadStructural input652 value493 value1 value2 = (output652, value494, value1) := by
  rw [input652_def, output652_def]
  try (conv => lhs; cbv)
  try rfl

theorem node653_cond_eq : Flapjack.WordAlloc.removeDeadStructural input653 value494 value1 value2 = (output653, value495, value1) := by
  rw [input653_def, output653_def]
  try (conv => lhs; cbv)
  try rfl

theorem node654_cond_eq : Flapjack.WordAlloc.removeDeadStructural input654 value495 value1 value2 = (output654, value496, value1) := by
  rw [input654_def, output654_def]
  try (conv => lhs; cbv)
  try rfl

theorem node655_cond_eq
    (child653 : Flapjack.WordAlloc.removeDeadStructural input653 value494 value1 value2 = (output653, value495, value1))
    (child654 : Flapjack.WordAlloc.removeDeadStructural input654 value495 value1 value2 = (output654, value496, value1)) : Flapjack.WordAlloc.removeDeadStructural input655 value494 value1 value2 = (output655, value496, value1) := by
  rw [input655_def, output655_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child653]
  try dsimp only
  rw [child654]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node656_cond_eq : Flapjack.WordAlloc.removeDeadStructural input656 value496 value1 value2 = (output656, value497, value1) := by
  rw [input656_def, output656_def]
  try (conv => lhs; cbv)
  try rfl

theorem node657_cond_eq : Flapjack.WordAlloc.removeDeadStructural input657 value497 value1 value2 = (output657, value498, value1) := by
  rw [input657_def, output657_def]
  try (conv => lhs; cbv)
  try rfl

theorem node658_cond_eq : Flapjack.WordAlloc.removeDeadStructural input658 value498 value1 value2 = (output658, value499, value1) := by
  rw [input658_def, output658_def]
  try (conv => lhs; cbv)
  try rfl

theorem node659_cond_eq
    (child657 : Flapjack.WordAlloc.removeDeadStructural input657 value497 value1 value2 = (output657, value498, value1))
    (child658 : Flapjack.WordAlloc.removeDeadStructural input658 value498 value1 value2 = (output658, value499, value1)) : Flapjack.WordAlloc.removeDeadStructural input659 value497 value1 value2 = (output659, value499, value1) := by
  rw [input659_def, output659_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child657]
  try dsimp only
  rw [child658]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node660_cond_eq : Flapjack.WordAlloc.removeDeadStructural input660 value499 value1 value2 = (output660, value500, value1) := by
  rw [input660_def, output660_def]
  try (conv => lhs; cbv)
  try rfl

theorem node661_cond_eq : Flapjack.WordAlloc.removeDeadStructural input661 value500 value1 value2 = (output661, value501, value1) := by
  rw [input661_def, output661_def]
  try (conv => lhs; cbv)
  try rfl

theorem node662_cond_eq : Flapjack.WordAlloc.removeDeadStructural input662 value501 value1 value2 = (output662, value502, value1) := by
  rw [input662_def, output662_def]
  try (conv => lhs; cbv)
  try rfl

theorem node663_cond_eq
    (child661 : Flapjack.WordAlloc.removeDeadStructural input661 value500 value1 value2 = (output661, value501, value1))
    (child662 : Flapjack.WordAlloc.removeDeadStructural input662 value501 value1 value2 = (output662, value502, value1)) : Flapjack.WordAlloc.removeDeadStructural input663 value500 value1 value2 = (output663, value502, value1) := by
  rw [input663_def, output663_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child661]
  try dsimp only
  rw [child662]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node664_cond_eq : Flapjack.WordAlloc.removeDeadStructural input664 value502 value1 value2 = (output664, value503, value1) := by
  rw [input664_def, output664_def]
  try (conv => lhs; cbv)
  try rfl

theorem node665_cond_eq : Flapjack.WordAlloc.removeDeadStructural input665 value503 value1 value2 = (output665, value504, value1) := by
  rw [input665_def, output665_def]
  try (conv => lhs; cbv)
  try rfl

theorem node666_cond_eq : Flapjack.WordAlloc.removeDeadStructural input666 value504 value1 value2 = (output666, value505, value1) := by
  rw [input666_def, output666_def]
  try (conv => lhs; cbv)
  try rfl

theorem node667_cond_eq
    (child665 : Flapjack.WordAlloc.removeDeadStructural input665 value503 value1 value2 = (output665, value504, value1))
    (child666 : Flapjack.WordAlloc.removeDeadStructural input666 value504 value1 value2 = (output666, value505, value1)) : Flapjack.WordAlloc.removeDeadStructural input667 value503 value1 value2 = (output667, value505, value1) := by
  rw [input667_def, output667_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child665]
  try dsimp only
  rw [child666]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node668_cond_eq : Flapjack.WordAlloc.removeDeadStructural input668 value505 value1 value2 = (output668, value506, value1) := by
  rw [input668_def, output668_def]
  try (conv => lhs; cbv)
  try rfl

theorem node669_cond_eq : Flapjack.WordAlloc.removeDeadStructural input669 value506 value1 value2 = (output669, value507, value1) := by
  rw [input669_def, output669_def]
  try (conv => lhs; cbv)
  try rfl

theorem node670_cond_eq : Flapjack.WordAlloc.removeDeadStructural input670 value507 value1 value2 = (output670, value508, value1) := by
  rw [input670_def, output670_def]
  try (conv => lhs; cbv)
  try rfl

theorem node671_cond_eq : Flapjack.WordAlloc.removeDeadStructural input671 value508 value1 value2 = (output671, value509, value1) := by
  rw [input671_def, output671_def]
  try (conv => lhs; cbv)
  try rfl

theorem node672_cond_eq : Flapjack.WordAlloc.removeDeadStructural input672 value509 value1 value2 = (output672, value510, value1) := by
  rw [input672_def, output672_def]
  try (conv => lhs; cbv)
  try rfl

theorem node673_cond_eq : Flapjack.WordAlloc.removeDeadStructural input673 value510 value1 value2 = (output673, value511, value1) := by
  rw [input673_def, output673_def]
  try (conv => lhs; cbv)
  try rfl

theorem node674_cond_eq
    (child672 : Flapjack.WordAlloc.removeDeadStructural input672 value509 value1 value2 = (output672, value510, value1))
    (child673 : Flapjack.WordAlloc.removeDeadStructural input673 value510 value1 value2 = (output673, value511, value1)) : Flapjack.WordAlloc.removeDeadStructural input674 value509 value1 value2 = (output674, value511, value1) := by
  rw [input674_def, output674_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child672]
  try dsimp only
  rw [child673]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node675_cond_eq
    (child671 : Flapjack.WordAlloc.removeDeadStructural input671 value508 value1 value2 = (output671, value509, value1))
    (child674 : Flapjack.WordAlloc.removeDeadStructural input674 value509 value1 value2 = (output674, value511, value1)) : Flapjack.WordAlloc.removeDeadStructural input675 value508 value1 value2 = (output675, value511, value1) := by
  rw [input675_def, output675_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child671]
  try dsimp only
  rw [child674]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node676_cond_eq
    (child670 : Flapjack.WordAlloc.removeDeadStructural input670 value507 value1 value2 = (output670, value508, value1))
    (child675 : Flapjack.WordAlloc.removeDeadStructural input675 value508 value1 value2 = (output675, value511, value1)) : Flapjack.WordAlloc.removeDeadStructural input676 value507 value1 value2 = (output676, value511, value1) := by
  rw [input676_def, output676_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child670]
  try dsimp only
  rw [child675]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node677_cond_eq
    (child669 : Flapjack.WordAlloc.removeDeadStructural input669 value506 value1 value2 = (output669, value507, value1))
    (child676 : Flapjack.WordAlloc.removeDeadStructural input676 value507 value1 value2 = (output676, value511, value1)) : Flapjack.WordAlloc.removeDeadStructural input677 value506 value1 value2 = (output677, value511, value1) := by
  rw [input677_def, output677_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child669]
  try dsimp only
  rw [child676]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node678_cond_eq : Flapjack.WordAlloc.removeDeadStructural input678 value511 value1 value2 = (output678, value512, value1) := by
  rw [input678_def, output678_def]
  try (conv => lhs; cbv)
  try rfl

theorem node679_cond_eq : Flapjack.WordAlloc.removeDeadStructural input679 value512 value1 value2 = (output679, value513, value1) := by
  rw [input679_def, output679_def]
  try (conv => lhs; cbv)
  try rfl

theorem node680_cond_eq : Flapjack.WordAlloc.removeDeadStructural input680 value513 value1 value2 = (output680, value514, value1) := by
  rw [input680_def, output680_def]
  try (conv => lhs; cbv)
  try rfl

theorem node681_cond_eq : Flapjack.WordAlloc.removeDeadStructural input681 value514 value1 value2 = (output681, value515, value1) := by
  rw [input681_def, output681_def]
  try (conv => lhs; cbv)
  try rfl

theorem node682_cond_eq : Flapjack.WordAlloc.removeDeadStructural input682 value515 value1 value2 = (output682, value516, value1) := by
  rw [input682_def, output682_def]
  try (conv => lhs; cbv)
  try rfl

theorem node683_cond_eq
    (child681 : Flapjack.WordAlloc.removeDeadStructural input681 value514 value1 value2 = (output681, value515, value1))
    (child682 : Flapjack.WordAlloc.removeDeadStructural input682 value515 value1 value2 = (output682, value516, value1)) : Flapjack.WordAlloc.removeDeadStructural input683 value514 value1 value2 = (output683, value516, value1) := by
  rw [input683_def, output683_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child681]
  try dsimp only
  rw [child682]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node684_cond_eq
    (child680 : Flapjack.WordAlloc.removeDeadStructural input680 value513 value1 value2 = (output680, value514, value1))
    (child683 : Flapjack.WordAlloc.removeDeadStructural input683 value514 value1 value2 = (output683, value516, value1)) : Flapjack.WordAlloc.removeDeadStructural input684 value513 value1 value2 = (output684, value516, value1) := by
  rw [input684_def, output684_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child680]
  try dsimp only
  rw [child683]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node685_cond_eq
    (child679 : Flapjack.WordAlloc.removeDeadStructural input679 value512 value1 value2 = (output679, value513, value1))
    (child684 : Flapjack.WordAlloc.removeDeadStructural input684 value513 value1 value2 = (output684, value516, value1)) : Flapjack.WordAlloc.removeDeadStructural input685 value512 value1 value2 = (output685, value516, value1) := by
  rw [input685_def, output685_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child679]
  try dsimp only
  rw [child684]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node686_cond_eq
    (child678 : Flapjack.WordAlloc.removeDeadStructural input678 value511 value1 value2 = (output678, value512, value1))
    (child685 : Flapjack.WordAlloc.removeDeadStructural input685 value512 value1 value2 = (output685, value516, value1)) : Flapjack.WordAlloc.removeDeadStructural input686 value511 value1 value2 = (output686, value516, value1) := by
  rw [input686_def, output686_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child678]
  try dsimp only
  rw [child685]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node687_cond_eq : Flapjack.WordAlloc.removeDeadStructural input687 value516 value1 value2 = (output687, value517, value1) := by
  rw [input687_def, output687_def]
  try (conv => lhs; cbv)
  try rfl

theorem node688_cond_eq : Flapjack.WordAlloc.removeDeadStructural input688 value517 value1 value2 = (output688, value518, value1) := by
  rw [input688_def, output688_def]
  try (conv => lhs; cbv)
  try rfl

theorem node689_cond_eq : Flapjack.WordAlloc.removeDeadStructural input689 value518 value1 value2 = (output689, value519, value1) := by
  rw [input689_def, output689_def]
  try (conv => lhs; cbv)
  try rfl

theorem node690_cond_eq : Flapjack.WordAlloc.removeDeadStructural input690 value519 value1 value2 = (output690, value520, value1) := by
  rw [input690_def, output690_def]
  try (conv => lhs; cbv)
  try rfl

theorem node691_cond_eq : Flapjack.WordAlloc.removeDeadStructural input691 value520 value1 value2 = (output691, value521, value1) := by
  rw [input691_def, output691_def]
  try (conv => lhs; cbv)
  try rfl

theorem node692_cond_eq
    (child690 : Flapjack.WordAlloc.removeDeadStructural input690 value519 value1 value2 = (output690, value520, value1))
    (child691 : Flapjack.WordAlloc.removeDeadStructural input691 value520 value1 value2 = (output691, value521, value1)) : Flapjack.WordAlloc.removeDeadStructural input692 value519 value1 value2 = (output692, value521, value1) := by
  rw [input692_def, output692_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child690]
  try dsimp only
  rw [child691]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node693_cond_eq
    (child689 : Flapjack.WordAlloc.removeDeadStructural input689 value518 value1 value2 = (output689, value519, value1))
    (child692 : Flapjack.WordAlloc.removeDeadStructural input692 value519 value1 value2 = (output692, value521, value1)) : Flapjack.WordAlloc.removeDeadStructural input693 value518 value1 value2 = (output693, value521, value1) := by
  rw [input693_def, output693_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child689]
  try dsimp only
  rw [child692]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node694_cond_eq
    (child688 : Flapjack.WordAlloc.removeDeadStructural input688 value517 value1 value2 = (output688, value518, value1))
    (child693 : Flapjack.WordAlloc.removeDeadStructural input693 value518 value1 value2 = (output693, value521, value1)) : Flapjack.WordAlloc.removeDeadStructural input694 value517 value1 value2 = (output694, value521, value1) := by
  rw [input694_def, output694_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child688]
  try dsimp only
  rw [child693]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node695_cond_eq
    (child687 : Flapjack.WordAlloc.removeDeadStructural input687 value516 value1 value2 = (output687, value517, value1))
    (child694 : Flapjack.WordAlloc.removeDeadStructural input694 value517 value1 value2 = (output694, value521, value1)) : Flapjack.WordAlloc.removeDeadStructural input695 value516 value1 value2 = (output695, value521, value1) := by
  rw [input695_def, output695_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child687]
  try dsimp only
  rw [child694]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node696_cond_eq : Flapjack.WordAlloc.removeDeadStructural input696 value521 value1 value2 = (output696, value522, value1) := by
  rw [input696_def, output696_def]
  try (conv => lhs; cbv)
  try rfl

theorem node697_cond_eq : Flapjack.WordAlloc.removeDeadStructural input697 value522 value1 value2 = (output697, value523, value1) := by
  rw [input697_def, output697_def]
  try (conv => lhs; cbv)
  try rfl

theorem node698_cond_eq : Flapjack.WordAlloc.removeDeadStructural input698 value523 value1 value2 = (output698, value524, value1) := by
  rw [input698_def, output698_def]
  try (conv => lhs; cbv)
  try rfl

theorem node699_cond_eq : Flapjack.WordAlloc.removeDeadStructural input699 value524 value1 value2 = (output699, value525, value1) := by
  rw [input699_def, output699_def]
  try (conv => lhs; cbv)
  try rfl

theorem node700_cond_eq : Flapjack.WordAlloc.removeDeadStructural input700 value525 value1 value2 = (output700, value526, value1) := by
  rw [input700_def, output700_def]
  try (conv => lhs; cbv)
  try rfl

theorem node701_cond_eq
    (child699 : Flapjack.WordAlloc.removeDeadStructural input699 value524 value1 value2 = (output699, value525, value1))
    (child700 : Flapjack.WordAlloc.removeDeadStructural input700 value525 value1 value2 = (output700, value526, value1)) : Flapjack.WordAlloc.removeDeadStructural input701 value524 value1 value2 = (output701, value526, value1) := by
  rw [input701_def, output701_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child699]
  try dsimp only
  rw [child700]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node702_cond_eq
    (child698 : Flapjack.WordAlloc.removeDeadStructural input698 value523 value1 value2 = (output698, value524, value1))
    (child701 : Flapjack.WordAlloc.removeDeadStructural input701 value524 value1 value2 = (output701, value526, value1)) : Flapjack.WordAlloc.removeDeadStructural input702 value523 value1 value2 = (output702, value526, value1) := by
  rw [input702_def, output702_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child698]
  try dsimp only
  rw [child701]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node703_cond_eq
    (child697 : Flapjack.WordAlloc.removeDeadStructural input697 value522 value1 value2 = (output697, value523, value1))
    (child702 : Flapjack.WordAlloc.removeDeadStructural input702 value523 value1 value2 = (output702, value526, value1)) : Flapjack.WordAlloc.removeDeadStructural input703 value522 value1 value2 = (output703, value526, value1) := by
  rw [input703_def, output703_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child697]
  try dsimp only
  rw [child702]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node704_cond_eq
    (child696 : Flapjack.WordAlloc.removeDeadStructural input696 value521 value1 value2 = (output696, value522, value1))
    (child703 : Flapjack.WordAlloc.removeDeadStructural input703 value522 value1 value2 = (output703, value526, value1)) : Flapjack.WordAlloc.removeDeadStructural input704 value521 value1 value2 = (output704, value526, value1) := by
  rw [input704_def, output704_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child696]
  try dsimp only
  rw [child703]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node705_cond_eq : Flapjack.WordAlloc.removeDeadStructural input705 value526 value1 value2 = (output705, value527, value1) := by
  rw [input705_def, output705_def]
  try (conv => lhs; cbv)
  try rfl

theorem node706_cond_eq : Flapjack.WordAlloc.removeDeadStructural input706 value527 value1 value2 = (output706, value528, value1) := by
  rw [input706_def, output706_def]
  try (conv => lhs; cbv)
  try rfl

theorem node707_cond_eq : Flapjack.WordAlloc.removeDeadStructural input707 value528 value1 value2 = (output707, value529, value1) := by
  rw [input707_def, output707_def]
  try (conv => lhs; cbv)
  try rfl

theorem node708_cond_eq : Flapjack.WordAlloc.removeDeadStructural input708 value529 value1 value2 = (output708, value530, value1) := by
  rw [input708_def, output708_def]
  try (conv => lhs; cbv)
  try rfl

theorem node709_cond_eq : Flapjack.WordAlloc.removeDeadStructural input709 value530 value1 value2 = (output709, value531, value1) := by
  rw [input709_def, output709_def]
  try (conv => lhs; cbv)
  try rfl

theorem node710_cond_eq
    (child708 : Flapjack.WordAlloc.removeDeadStructural input708 value529 value1 value2 = (output708, value530, value1))
    (child709 : Flapjack.WordAlloc.removeDeadStructural input709 value530 value1 value2 = (output709, value531, value1)) : Flapjack.WordAlloc.removeDeadStructural input710 value529 value1 value2 = (output710, value531, value1) := by
  rw [input710_def, output710_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child708]
  try dsimp only
  rw [child709]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node711_cond_eq
    (child707 : Flapjack.WordAlloc.removeDeadStructural input707 value528 value1 value2 = (output707, value529, value1))
    (child710 : Flapjack.WordAlloc.removeDeadStructural input710 value529 value1 value2 = (output710, value531, value1)) : Flapjack.WordAlloc.removeDeadStructural input711 value528 value1 value2 = (output711, value531, value1) := by
  rw [input711_def, output711_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child707]
  try dsimp only
  rw [child710]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node712_cond_eq
    (child706 : Flapjack.WordAlloc.removeDeadStructural input706 value527 value1 value2 = (output706, value528, value1))
    (child711 : Flapjack.WordAlloc.removeDeadStructural input711 value528 value1 value2 = (output711, value531, value1)) : Flapjack.WordAlloc.removeDeadStructural input712 value527 value1 value2 = (output712, value531, value1) := by
  rw [input712_def, output712_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child706]
  try dsimp only
  rw [child711]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node713_cond_eq
    (child705 : Flapjack.WordAlloc.removeDeadStructural input705 value526 value1 value2 = (output705, value527, value1))
    (child712 : Flapjack.WordAlloc.removeDeadStructural input712 value527 value1 value2 = (output712, value531, value1)) : Flapjack.WordAlloc.removeDeadStructural input713 value526 value1 value2 = (output713, value531, value1) := by
  rw [input713_def, output713_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child705]
  try dsimp only
  rw [child712]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node714_cond_eq : Flapjack.WordAlloc.removeDeadStructural input714 value531 value1 value2 = (output714, value532, value1) := by
  rw [input714_def, output714_def]
  try (conv => lhs; cbv)
  try rfl

theorem node715_cond_eq : Flapjack.WordAlloc.removeDeadStructural input715 value532 value1 value2 = (output715, value533, value1) := by
  rw [input715_def, output715_def]
  try (conv => lhs; cbv)
  try rfl

theorem node716_cond_eq : Flapjack.WordAlloc.removeDeadStructural input716 value533 value1 value2 = (output716, value534, value1) := by
  rw [input716_def, output716_def]
  try (conv => lhs; cbv)
  try rfl

theorem node717_cond_eq : Flapjack.WordAlloc.removeDeadStructural input717 value534 value1 value2 = (output717, value535, value1) := by
  rw [input717_def, output717_def]
  try (conv => lhs; cbv)
  try rfl

theorem node718_cond_eq : Flapjack.WordAlloc.removeDeadStructural input718 value535 value1 value2 = (output718, value536, value1) := by
  rw [input718_def, output718_def]
  try (conv => lhs; cbv)
  try rfl

theorem node719_cond_eq
    (child717 : Flapjack.WordAlloc.removeDeadStructural input717 value534 value1 value2 = (output717, value535, value1))
    (child718 : Flapjack.WordAlloc.removeDeadStructural input718 value535 value1 value2 = (output718, value536, value1)) : Flapjack.WordAlloc.removeDeadStructural input719 value534 value1 value2 = (output719, value536, value1) := by
  rw [input719_def, output719_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child717]
  try dsimp only
  rw [child718]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node720_cond_eq
    (child716 : Flapjack.WordAlloc.removeDeadStructural input716 value533 value1 value2 = (output716, value534, value1))
    (child719 : Flapjack.WordAlloc.removeDeadStructural input719 value534 value1 value2 = (output719, value536, value1)) : Flapjack.WordAlloc.removeDeadStructural input720 value533 value1 value2 = (output720, value536, value1) := by
  rw [input720_def, output720_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child716]
  try dsimp only
  rw [child719]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node721_cond_eq
    (child715 : Flapjack.WordAlloc.removeDeadStructural input715 value532 value1 value2 = (output715, value533, value1))
    (child720 : Flapjack.WordAlloc.removeDeadStructural input720 value533 value1 value2 = (output720, value536, value1)) : Flapjack.WordAlloc.removeDeadStructural input721 value532 value1 value2 = (output721, value536, value1) := by
  rw [input721_def, output721_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child715]
  try dsimp only
  rw [child720]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node722_cond_eq
    (child714 : Flapjack.WordAlloc.removeDeadStructural input714 value531 value1 value2 = (output714, value532, value1))
    (child721 : Flapjack.WordAlloc.removeDeadStructural input721 value532 value1 value2 = (output721, value536, value1)) : Flapjack.WordAlloc.removeDeadStructural input722 value531 value1 value2 = (output722, value536, value1) := by
  rw [input722_def, output722_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child714]
  try dsimp only
  rw [child721]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node723_cond_eq : Flapjack.WordAlloc.removeDeadStructural input723 value536 value1 value2 = (output723, value488, value1) := by
  rw [input723_def, output723_def]
  try (conv => lhs; cbv)
  try rfl

theorem node724_cond_eq : Flapjack.WordAlloc.removeDeadStructural input724 value488 value1 value2 = (output724, value537, value1) := by
  rw [input724_def, output724_def]
  try (conv => lhs; cbv)
  try rfl

theorem node725_cond_eq
    (child723 : Flapjack.WordAlloc.removeDeadStructural input723 value536 value1 value2 = (output723, value488, value1))
    (child724 : Flapjack.WordAlloc.removeDeadStructural input724 value488 value1 value2 = (output724, value537, value1)) : Flapjack.WordAlloc.removeDeadStructural input725 value536 value1 value2 = (output725, value537, value1) := by
  rw [input725_def, output725_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child723]
  try dsimp only
  rw [child724]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node726_cond_eq : Flapjack.WordAlloc.removeDeadStructural input726 value537 value1 value2 = (output726, value538, value1) := by
  rw [input726_def, output726_def]
  try (conv => lhs; cbv)
  try rfl

theorem node727_cond_eq : Flapjack.WordAlloc.removeDeadStructural input727 value538 value1 value2 = (output727, value539, value1) := by
  rw [input727_def, output727_def]
  try (conv => lhs; cbv)
  try rfl

theorem node728_cond_eq
    (child726 : Flapjack.WordAlloc.removeDeadStructural input726 value537 value1 value2 = (output726, value538, value1))
    (child727 : Flapjack.WordAlloc.removeDeadStructural input727 value538 value1 value2 = (output727, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input728 value537 value1 value2 = (output728, value539, value1) := by
  rw [input728_def, output728_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child726]
  try dsimp only
  rw [child727]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node729_cond_eq : Flapjack.WordAlloc.removeDeadStructural input729 value539 value1 value2 = (output729, value540, value1) := by
  rw [input729_def, output729_def]
  try (conv => lhs; cbv)
  try rfl

theorem node730_cond_eq : Flapjack.WordAlloc.removeDeadStructural input730 value540 value1 value2 = (output730, value541, value1) := by
  rw [input730_def, output730_def]
  try (conv => lhs; cbv)
  try rfl

theorem node731_cond_eq : Flapjack.WordAlloc.removeDeadStructural input731 value541 value1 value2 = (output731, value542, value1) := by
  rw [input731_def, output731_def]
  try (conv => lhs; cbv)
  try rfl

theorem node732_cond_eq
    (child730 : Flapjack.WordAlloc.removeDeadStructural input730 value540 value1 value2 = (output730, value541, value1))
    (child731 : Flapjack.WordAlloc.removeDeadStructural input731 value541 value1 value2 = (output731, value542, value1)) : Flapjack.WordAlloc.removeDeadStructural input732 value540 value1 value2 = (output732, value542, value1) := by
  rw [input732_def, output732_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child730]
  try dsimp only
  rw [child731]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node733_cond_eq : Flapjack.WordAlloc.removeDeadStructural input733 value542 value1 value2 = (output733, value543, value1) := by
  rw [input733_def, output733_def]
  try (conv => lhs; cbv)
  try rfl

theorem node734_cond_eq : Flapjack.WordAlloc.removeDeadStructural input734 value543 value1 value2 = (output734, value544, value1) := by
  rw [input734_def, output734_def]
  try (conv => lhs; cbv)
  try rfl

theorem node735_cond_eq : Flapjack.WordAlloc.removeDeadStructural input735 value544 value1 value2 = (output735, value545, value1) := by
  rw [input735_def, output735_def]
  try (conv => lhs; cbv)
  try rfl

theorem node736_cond_eq
    (child734 : Flapjack.WordAlloc.removeDeadStructural input734 value543 value1 value2 = (output734, value544, value1))
    (child735 : Flapjack.WordAlloc.removeDeadStructural input735 value544 value1 value2 = (output735, value545, value1)) : Flapjack.WordAlloc.removeDeadStructural input736 value543 value1 value2 = (output736, value545, value1) := by
  rw [input736_def, output736_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child734]
  try dsimp only
  rw [child735]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node737_cond_eq : Flapjack.WordAlloc.removeDeadStructural input737 value545 value1 value2 = (output737, value546, value1) := by
  rw [input737_def, output737_def]
  try (conv => lhs; cbv)
  try rfl

theorem node738_cond_eq : Flapjack.WordAlloc.removeDeadStructural input738 value546 value1 value2 = (output738, value547, value1) := by
  rw [input738_def, output738_def]
  try (conv => lhs; cbv)
  try rfl

theorem node739_cond_eq : Flapjack.WordAlloc.removeDeadStructural input739 value547 value1 value2 = (output739, value548, value1) := by
  rw [input739_def, output739_def]
  try (conv => lhs; cbv)
  try rfl

theorem node740_cond_eq
    (child738 : Flapjack.WordAlloc.removeDeadStructural input738 value546 value1 value2 = (output738, value547, value1))
    (child739 : Flapjack.WordAlloc.removeDeadStructural input739 value547 value1 value2 = (output739, value548, value1)) : Flapjack.WordAlloc.removeDeadStructural input740 value546 value1 value2 = (output740, value548, value1) := by
  rw [input740_def, output740_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child738]
  try dsimp only
  rw [child739]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node741_cond_eq : Flapjack.WordAlloc.removeDeadStructural input741 value548 value1 value2 = (output741, value549, value1) := by
  rw [input741_def, output741_def]
  try (conv => lhs; cbv)
  try rfl

theorem node742_cond_eq : Flapjack.WordAlloc.removeDeadStructural input742 value549 value1 value2 = (output742, value550, value1) := by
  rw [input742_def, output742_def]
  try (conv => lhs; cbv)
  try rfl

theorem node743_cond_eq : Flapjack.WordAlloc.removeDeadStructural input743 value550 value1 value2 = (output743, value551, value1) := by
  rw [input743_def, output743_def]
  try (conv => lhs; cbv)
  try rfl

theorem node744_cond_eq
    (child742 : Flapjack.WordAlloc.removeDeadStructural input742 value549 value1 value2 = (output742, value550, value1))
    (child743 : Flapjack.WordAlloc.removeDeadStructural input743 value550 value1 value2 = (output743, value551, value1)) : Flapjack.WordAlloc.removeDeadStructural input744 value549 value1 value2 = (output744, value551, value1) := by
  rw [input744_def, output744_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child742]
  try dsimp only
  rw [child743]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node745_cond_eq : Flapjack.WordAlloc.removeDeadStructural input745 value551 value1 value2 = (output745, value552, value1) := by
  rw [input745_def, output745_def]
  try (conv => lhs; cbv)
  try rfl

theorem node746_cond_eq : Flapjack.WordAlloc.removeDeadStructural input746 value552 value1 value2 = (output746, value553, value1) := by
  rw [input746_def, output746_def]
  try (conv => lhs; cbv)
  try rfl

theorem node747_cond_eq : Flapjack.WordAlloc.removeDeadStructural input747 value553 value1 value2 = (output747, value554, value1) := by
  rw [input747_def, output747_def]
  try (conv => lhs; cbv)
  try rfl

theorem node748_cond_eq
    (child746 : Flapjack.WordAlloc.removeDeadStructural input746 value552 value1 value2 = (output746, value553, value1))
    (child747 : Flapjack.WordAlloc.removeDeadStructural input747 value553 value1 value2 = (output747, value554, value1)) : Flapjack.WordAlloc.removeDeadStructural input748 value552 value1 value2 = (output748, value554, value1) := by
  rw [input748_def, output748_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child746]
  try dsimp only
  rw [child747]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node749_cond_eq : Flapjack.WordAlloc.removeDeadStructural input749 value554 value1 value2 = (output749, value555, value1) := by
  rw [input749_def, output749_def]
  try (conv => lhs; cbv)
  try rfl

theorem node750_cond_eq : Flapjack.WordAlloc.removeDeadStructural input750 value555 value1 value2 = (output750, value556, value1) := by
  rw [input750_def, output750_def]
  try (conv => lhs; cbv)
  try rfl

theorem node751_cond_eq : Flapjack.WordAlloc.removeDeadStructural input751 value556 value1 value2 = (output751, value557, value1) := by
  rw [input751_def, output751_def]
  try (conv => lhs; cbv)
  try rfl

theorem node752_cond_eq : Flapjack.WordAlloc.removeDeadStructural input752 value557 value1 value2 = (output752, value558, value1) := by
  rw [input752_def, output752_def]
  try (conv => lhs; cbv)
  try rfl

theorem node753_cond_eq : Flapjack.WordAlloc.removeDeadStructural input753 value558 value1 value2 = (output753, value559, value1) := by
  rw [input753_def, output753_def]
  try (conv => lhs; cbv)
  try rfl

theorem node754_cond_eq : Flapjack.WordAlloc.removeDeadStructural input754 value559 value1 value2 = (output754, value560, value1) := by
  rw [input754_def, output754_def]
  try (conv => lhs; cbv)
  try rfl

theorem node755_cond_eq
    (child753 : Flapjack.WordAlloc.removeDeadStructural input753 value558 value1 value2 = (output753, value559, value1))
    (child754 : Flapjack.WordAlloc.removeDeadStructural input754 value559 value1 value2 = (output754, value560, value1)) : Flapjack.WordAlloc.removeDeadStructural input755 value558 value1 value2 = (output755, value560, value1) := by
  rw [input755_def, output755_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child753]
  try dsimp only
  rw [child754]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node756_cond_eq
    (child752 : Flapjack.WordAlloc.removeDeadStructural input752 value557 value1 value2 = (output752, value558, value1))
    (child755 : Flapjack.WordAlloc.removeDeadStructural input755 value558 value1 value2 = (output755, value560, value1)) : Flapjack.WordAlloc.removeDeadStructural input756 value557 value1 value2 = (output756, value560, value1) := by
  rw [input756_def, output756_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child752]
  try dsimp only
  rw [child755]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node757_cond_eq
    (child751 : Flapjack.WordAlloc.removeDeadStructural input751 value556 value1 value2 = (output751, value557, value1))
    (child756 : Flapjack.WordAlloc.removeDeadStructural input756 value557 value1 value2 = (output756, value560, value1)) : Flapjack.WordAlloc.removeDeadStructural input757 value556 value1 value2 = (output757, value560, value1) := by
  rw [input757_def, output757_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child751]
  try dsimp only
  rw [child756]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node758_cond_eq
    (child750 : Flapjack.WordAlloc.removeDeadStructural input750 value555 value1 value2 = (output750, value556, value1))
    (child757 : Flapjack.WordAlloc.removeDeadStructural input757 value556 value1 value2 = (output757, value560, value1)) : Flapjack.WordAlloc.removeDeadStructural input758 value555 value1 value2 = (output758, value560, value1) := by
  rw [input758_def, output758_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child750]
  try dsimp only
  rw [child757]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node759_cond_eq : Flapjack.WordAlloc.removeDeadStructural input759 value560 value1 value2 = (output759, value561, value1) := by
  rw [input759_def, output759_def]
  try (conv => lhs; cbv)
  try rfl

theorem node760_cond_eq : Flapjack.WordAlloc.removeDeadStructural input760 value561 value1 value2 = (output760, value562, value1) := by
  rw [input760_def, output760_def]
  try (conv => lhs; cbv)
  try rfl

theorem node761_cond_eq : Flapjack.WordAlloc.removeDeadStructural input761 value562 value1 value2 = (output761, value563, value1) := by
  rw [input761_def, output761_def]
  try (conv => lhs; cbv)
  try rfl

theorem node762_cond_eq : Flapjack.WordAlloc.removeDeadStructural input762 value563 value1 value2 = (output762, value564, value1) := by
  rw [input762_def, output762_def]
  try (conv => lhs; cbv)
  try rfl

theorem node763_cond_eq : Flapjack.WordAlloc.removeDeadStructural input763 value564 value1 value2 = (output763, value565, value1) := by
  rw [input763_def, output763_def]
  try (conv => lhs; cbv)
  try rfl

theorem node764_cond_eq
    (child762 : Flapjack.WordAlloc.removeDeadStructural input762 value563 value1 value2 = (output762, value564, value1))
    (child763 : Flapjack.WordAlloc.removeDeadStructural input763 value564 value1 value2 = (output763, value565, value1)) : Flapjack.WordAlloc.removeDeadStructural input764 value563 value1 value2 = (output764, value565, value1) := by
  rw [input764_def, output764_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child762]
  try dsimp only
  rw [child763]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node765_cond_eq
    (child761 : Flapjack.WordAlloc.removeDeadStructural input761 value562 value1 value2 = (output761, value563, value1))
    (child764 : Flapjack.WordAlloc.removeDeadStructural input764 value563 value1 value2 = (output764, value565, value1)) : Flapjack.WordAlloc.removeDeadStructural input765 value562 value1 value2 = (output765, value565, value1) := by
  rw [input765_def, output765_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child761]
  try dsimp only
  rw [child764]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node766_cond_eq
    (child760 : Flapjack.WordAlloc.removeDeadStructural input760 value561 value1 value2 = (output760, value562, value1))
    (child765 : Flapjack.WordAlloc.removeDeadStructural input765 value562 value1 value2 = (output765, value565, value1)) : Flapjack.WordAlloc.removeDeadStructural input766 value561 value1 value2 = (output766, value565, value1) := by
  rw [input766_def, output766_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child760]
  try dsimp only
  rw [child765]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node767_cond_eq
    (child759 : Flapjack.WordAlloc.removeDeadStructural input759 value560 value1 value2 = (output759, value561, value1))
    (child766 : Flapjack.WordAlloc.removeDeadStructural input766 value561 value1 value2 = (output766, value565, value1)) : Flapjack.WordAlloc.removeDeadStructural input767 value560 value1 value2 = (output767, value565, value1) := by
  rw [input767_def, output767_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child759]
  try dsimp only
  rw [child766]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

#print axioms node767_cond_eq
end InitE.DeadStages782.Parallel
