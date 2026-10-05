import InitE.BackendStages.NamedChunk512_527
import InitE.BackendStages.Section512
import InitE.BackendStages.Section513
import InitE.BackendStages.Section514
import InitE.BackendStages.Section515
import InitE.BackendStages.Section516
import InitE.BackendStages.Section517
import InitE.BackendStages.Section518
import InitE.BackendStages.Section519
import InitE.BackendStages.Section520
import InitE.BackendStages.Section521
import InitE.BackendStages.Section522
import InitE.BackendStages.Section523
import InitE.BackendStages.Section524
import InitE.BackendStages.Section525
import InitE.BackendStages.Section526
import InitE.BackendStages.Section527
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.SectionChunk512_527
def sections : LabSem.LabProgHOL 64 := [section512, section513, section514, section515, section516, section517, section518, section519, section520, section521, section522, section523, section524, section525, section526, section527]
theorem compiled_eq : NamedChunk512_527.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named512, StackToLab.progToSectionHOL Named513, StackToLab.progToSectionHOL Named514, StackToLab.progToSectionHOL Named515, StackToLab.progToSectionHOL Named516, StackToLab.progToSectionHOL Named517, StackToLab.progToSectionHOL Named518, StackToLab.progToSectionHOL Named519, StackToLab.progToSectionHOL Named520, StackToLab.progToSectionHOL Named521, StackToLab.progToSectionHOL Named522, StackToLab.progToSectionHOL Named523, StackToLab.progToSectionHOL Named524, StackToLab.progToSectionHOL Named525, StackToLab.progToSectionHOL Named526, StackToLab.progToSectionHOL Named527] = sections
  rw [section512_eq, section513_eq, section514_eq, section515_eq, section516_eq, section517_eq, section518_eq, section519_eq, section520_eq, section521_eq, section522_eq, section523_eq, section524_eq, section525_eq, section526_eq, section527_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.SectionChunk512_527
